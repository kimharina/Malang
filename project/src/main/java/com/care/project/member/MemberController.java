package com.care.project.member;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.care.project.product.OrderDTO;
import com.care.project.product.ProductDTO;
import com.care.project.product.ProductService;
import com.thoughtworks.qdox.parser.ParseException;

import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
public class MemberController {
	@Autowired private MemberService service;
	@Autowired private HttpSession session;
	@Autowired private ProductService productService;
	
	// ID회원가입
	@GetMapping("certification")
	public String certification() {
		return "auth/certification";
	}

	@PostMapping("certificationProc")
	public String certificationProc(MemberDTO member, String sample6_postcode, String detailAddress, Model model,
			RedirectAttributes ra, HttpServletResponse response) {
		if (member.getAddress() != null && member.getAddress().trim().isEmpty() == false)
			member.setAddress(sample6_postcode + "," + member.getAddress() + "," + detailAddress);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		member.setJoinDate(sdf.format(new Date()));
		String msg = service.certificationProc(member, response);

		if (msg.equals("회원가입 완료")) {
			ra.addFlashAttribute("msg", msg);
			return "redirect:index";
		}
		if (msg.equals("이미 가입되어있습니다. 로그인 해주세요.")) {
			ra.addFlashAttribute("msg", msg);
			return "auth/login";
		}

		model.addAttribute("msg", msg);
		return "auth/certification";
	}

	@Autowired
	private KakaoService kakaoService;

	// 카카오로그인
	@RequestMapping("kakaoLogin")
	public String kakaoLogin(String code, MemberDTO member, Model model) {
		System.out.println("code : " + code);
		kakaoService.getAccessToken(code);

		// model.addAttribute("member", member);
		kakaoService.getUserInfo(member, model);

		return "redirect:index";
	}

	// 로그인/회원가입
	@RequestMapping("auth")
	public String auth() {
		return "auth/auth";
	}

	// ID로그인
	@GetMapping("login")
	public String login() {
		return "auth/login";
	}

	@PostMapping("loginProc")
	public String loginProc(HttpServletResponse response, String userId, String pw, Model model,
			RedirectAttributes ra) {
		String msg = service.loginProc(userId, pw);

		if (msg.equals("로그인 성공")) {
			return "redirect:index";
			
		} else if (msg.equals("관리자입니다.")) {
			return "redirect:admin";
		} else if (msg.equals("아이디 또는 비밀번호를 확인 후 다시 입력하세요.")) {
			response.setContentType("text/html; charset=UTF-8");
			response.setCharacterEncoding("UTF-8");

			try {
				PrintWriter out = response.getWriter();
				out.println("<script>alert('아이디 또는 비밀번호를 확인 후 다시 입력하세요.'); location.href='login';</script>");
				out.flush();
			} catch (IOException e) {
				e.printStackTrace();
			}

		}

		return "auth/login";
	}

	// 아이디,비번찾기
	@GetMapping("find")
	public String help(Model model, String mode) {
		model.addAttribute("mode", mode);
		return "auth/find";
	}

	@PostMapping("find")
	public String search(MemberDTO member, Model model) {
		service.find(member, model);
		return "auth/alert";
	}

	@RequestMapping("changePw")
	public String changePw(Model model, @RequestParam("userId") String userId) {
		model.addAttribute("userId", userId);
		return "auth/changePw";
	}

	@PostMapping("changePwProc")
	public String changePwProc(MemberDTO member, Model model, HttpServletResponse response) {

		service.changePwProc(member, response);

		return "auth/login";

	}

	// 로그아웃
	@RequestMapping("logout")
	public String logout(RedirectAttributes ra, MemberDTO member) {
		session.invalidate();
		ra.addFlashAttribute("msg", "로그 아웃");

		// kakaoService.unlink(member);
		kakaoService.logout(member);
		return "redirect:index";
	}

	// 내정보
	@RequestMapping("profile")
	public String profile(Model model, MemberDTO member) {
		if (session.getAttribute("userId") == null)
			return "redirect:auth";

		String address = (String) session.getAttribute("address");
		if (address != null) {
			String[] addr = address.split(",");
			if (addr.length >= 2) {
				model.addAttribute("postcode", addr[0]);
				session.setAttribute("address", addr[1]);
				if (addr.length == 3) {
					model.addAttribute("detailAddress", addr[2]);
				}
			}
		}
		model.addAttribute("member", member);
		return "auth/profile";
	}

	@RequestMapping("deleteId")
	public String deleteId(MemberDTO member, Model model) {
		String sessionId = (String) session.getAttribute("userId");
		String sessionAddress = (String) session.getAttribute("address");
		if (sessionId == null)
			return "redirect:auth";
		if (sessionAddress ==null) {
			member.setUserId(sessionId);
			kakaoService.unlink(member);
			session.invalidate();
			String msg = "탈퇴되었습니다.";
			String url = "index";
			model.addAttribute("msg", msg);
			model.addAttribute("url", url);
			
			return "product/alert";
		}
		return "auth/deleteId";
	}

	@PostMapping("deleteProc")
	public String deleteProc(MemberDTO member, Model model, String confirmPw, HttpServletResponse response) {
		String sessionId = (String) session.getAttribute("userId");
		if (sessionId == null)
			return "auth";

		member.setUserId(sessionId);
		String msg = service.deleteProc(member, confirmPw, response);
		if (msg.equals("회원 삭제 완료")) {
			kakaoService.unlink(member);
			session.invalidate();
			String url = "index";
			model.addAttribute("msg", msg);
			model.addAttribute("url", url);
			
			return "product/alert";
		}

		model.addAttribute("msg", msg);
		return "auth/deleteId";
	}

	@PostMapping("updateProc")
	public String updateProc(MemberDTO member, String confirmPw, String postcode, String detailAddress) {
		String sessionId = (String) session.getAttribute("userId");
		if (sessionId == null)
			return "redirect:auth";

		String msg = service.updateProc(member, confirmPw, postcode, detailAddress);
		if (msg.equals("회원 수정 완료")) {
			session.invalidate();
			return "redirect:index";
		}

		return "auth/profile";
	}

	// 마이페이지
	@RequestMapping("myshop")
	public String myshop(Model model, String userId, String tab, String categoryId, String search, String order,
			@RequestParam(value = "currentPage", required = false)String cp) {

		List<ProductDTO> products = new ArrayList<ProductDTO>();
		List<OrderDTO> orders = new ArrayList<OrderDTO>();
		
		if (session.getAttribute("userId") == null)
			return "redirect:auth";

		userId = (String)session.getAttribute("userId");

		String userName = (String)session.getAttribute("userName");
		
		products = service.myShop(cp, model, userId, tab, categoryId, search, order, userName);

		orders = productService.orderList(tab, search, cp, model, userName, userId);

		if(orders.isEmpty()==false && orders != null) {
			model.addAttribute("orders", orders);
		}
		
		model.addAttribute("products", products);
		model.addAttribute("tab", tab);
		model.addAttribute("totalCount", (String)model.getAttribute("totalCount"));
		model.addAttribute("result", (String)model.getAttribute("result"));
		model.addAttribute("search", search);
	
		return "auth/myShop";
	}

	 @RequestMapping("receipt")
     public String receipt(int productNo, Model model,OrderDTO order) {
     	if (session.getAttribute("userId") == null )
				return "redirect:auth";
     	
     	order = service.receipt(productNo, model);
     	ProductDTO product = productService.productContent_2(productNo);
     	String inputDateStr = order.getOrderDate();
        // 입력 형식에 맞는 SimpleDateFormat
        SimpleDateFormat inputDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
        // 출력 형식에 맞는 SimpleDateFormat
        SimpleDateFormat outputDateFormat = new SimpleDateFormat("yyyy.MM.dd-HH:mm:ss");
        
        DecimalFormat df = new DecimalFormat("###,###");
        int price = product.getPrice()+product.getDelCharge();
        String priceOutput = df.format(price);
        
        try {
            Date date = new Date();
			try {
				date = inputDateFormat.parse(inputDateStr);
			} catch (java.text.ParseException e) {
				e.printStackTrace();
			} // 문자열을 Date로 파싱
            String formattedDate = outputDateFormat.format(date); // 원하는 형식으로 변환
            
            model.addAttribute("productNo", productNo);
	     	model.addAttribute("order", order);
	     	model.addAttribute("date", formattedDate);
	     	model.addAttribute("product", product);
	     	model.addAttribute("priceOutput", priceOutput);
            
        } catch (ParseException e) {
            e.printStackTrace();
        }

        return "auth/receipt";

     }
}
