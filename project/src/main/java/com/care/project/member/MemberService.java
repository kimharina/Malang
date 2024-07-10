package com.care.project.member;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.care.project.PageService;
import com.care.project.heart.IHeartMapper;
import com.care.project.product.IProductMapper;
import com.care.project.product.OrderDTO;
import com.care.project.product.ProductDTO;

import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Service
public class MemberService {
	@Autowired private IMemberMapper mapper;
	@Autowired private HttpSession session;
	@Autowired IProductMapper dao;
	@Autowired IHeartMapper Heartdao;
	
	
	public String certificationProc(MemberDTO member, HttpServletResponse response) {
		if (member.getUserId() == null || member.getUserId().trim().isEmpty()) {
			return "아이디를 입력하세요.";
		} else if(member.getUserId().equals("admin")) {
			return "사용할 수 없는 아이디입니다.";
		}
		if (member.getPw() == null || member.getPw().trim().isEmpty()) {
			return "비밀번호를 입력하세요.";
		}

		MemberDTO check1 = mapper.login(member.getUserId());
		if (check1 != null) {
			alert(response, "이미 사용중인 아이디 입니다.");
			return "이미 사용중인 아이디 입니다.";
		}
	
		MemberDTO check2 = mapper.checkPhone(member.getMobile());
		if (check2 != null) {
			alert(response, "이미 가입되어있습니다. 로그인 해주세요.");
			return "이미 가입되어있습니다. 로그인 해주세요.";
		}

		
		/* 암호화 과정 */
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		String secretPass = encoder.encode(member.getPw());
		member.setPw(secretPass);
		/*
		 * 암호문 : $2a$10$HJ3CfbI4MxDDSM3emVsuNudQyQE5StjV7g/UGK2vSQZQRmGy23OXi 암호문 길이: 60
		 * 
		 * 암호문 : $2a$10$nGmxZK6PVs.NV.QY.UX2T.OuGprkSwMs7FrNq6sOi1RfFPflQWUmO 암호문 길이: 60
		 * 
		 * pw 컬럼의 크기를 암호문 크기와 같거나 크게 변경 ALTER TABLE member MODIFY pw varchar2(60);
		 * COMMIT;
		 */
		System.out.println("암호문 : " + secretPass);
		System.out.println("암호문 길이: " + secretPass.length());

		int result = mapper.certificationProc(member);
		if (result == 1)
			return "회원가입 완료";

		return "회원가입을 다시 시도하세요.";
	}

	public String loginProc(String userId, String pw) {
		if (userId == null || userId.trim().isEmpty()) {
			return "아이디를 입력하세요.";
		}
		
		if (userId.trim().equals("admin")) {
			MemberDTO check_admin = mapper.login(userId);
			if (check_admin != null && pw.equals("admin1234") == true) {
				
				session.setAttribute("userId", "admin");
				session.setAttribute("userName", check_admin.getUserName());
				session.setAttribute("birth", check_admin.getBirth());
				session.setAttribute("email", check_admin.getEmail());
				session.setAttribute("mobile", check_admin.getMobile());
				session.setAttribute("address", check_admin.getAddress());
				session.setAttribute("joinDate", check_admin.getJoinDate());
				
			return "관리자입니다.";
		}
	}
			
		if (pw == null || pw.trim().isEmpty()) {
			return "비밀번호를 입력하세요.";
		}

		MemberDTO check = mapper.login(userId);
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		if (check != null && encoder.matches(pw, check.getPw()) == true) {
			session.setAttribute("userId", check.getUserId());
			session.setAttribute("userName", check.getUserName());
			session.setAttribute("birth", check.getBirth());
			session.setAttribute("email", check.getEmail());
			session.setAttribute("mobile", check.getMobile());
			session.setAttribute("address", check.getAddress());
			session.setAttribute("joinDate", check.getJoinDate());
			
			
			
			return "로그인 성공";
		}

		return "아이디 또는 비밀번호를 확인 후 다시 입력하세요.";
	}

	public String deleteProc(MemberDTO member, String confirmPw, HttpServletResponse response) {
		if (member.getPw() == null || member.getPw().trim().isEmpty()) {
			return "비밀번호를 입력하세요.";
		}
		if (member.getPw().equals(confirmPw) == false) {
			return "두 비밀번호를 일치하여 입력하세요.";
		}

		MemberDTO check = mapper.login(member.getUserId());
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		if (check != null && encoder.matches(member.getPw(), check.getPw()) == true) {
			int result = mapper.deleteProc(member.getUserId());

			if (result == 1) {
				return "회원 삭제 완료";
			} else {
				alert(response,"회원 삭제를 다시 시도하세요.");
			return "회원 삭제를 다시 시도하세요.";
			}
		}

		return "비밀번호를 확인 후 입력하세요";
	}

	public static void alert(HttpServletResponse response, String msg) {
		try {
			response.setContentType("text/html; charset=utf-8");
			PrintWriter w = response.getWriter();
			w.write("<script>alert('" + msg + "');</script>");
			w.flush();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public String updateProc(MemberDTO member, String confirmPw, String postcode, String detailAddress) {

		if (member.getPw() == null || member.getPw().trim().isEmpty()) {
			return "비밀번호를 입력하세요.";
		}
		if (member.getPw().equals(confirmPw) == false) {
			return "두 비밀번호를 일치하여 입력하세요.";
		}
		if (member.getAddress() != null && member.getAddress().trim().isEmpty() == false)
			member.setAddress(postcode + ", " + member.getAddress() + ", " + detailAddress);
		/* 암호화 과정 */
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		String secretPass = encoder.encode(member.getPw());
		member.setPw(secretPass);

		int result = mapper.updateProc(member);
		if (result == 1)
			return "회원 수정 완료";

		return "회원 수정을 다시 시도하세요.";
	}

	public void find(MemberDTO member, Model model) {
		// 만약에 id가 null이면 아이디찾기가 되는것이고, null이 아니면 비밀번호찾기가 된다.
		String msg = "", url = "";

		if (member.getMobile() == null || member.getMobile().trim().equals("")) {
			msg = "휴대번호 인증이 필요합니다.";
			if (member.getUserId() == null)
				url = "find?mode=userId";
			else
				url = "find?mode=pw";
		} else if (member.getUserId() == null) {
			String userId = mapper.searchId(member);
			msg = "아이디는 " + userId + " 입니다.";
			url = "login";
			if (userId == null)
				msg = "아이디가 존재하지 않습니다.";
		} else {
			String pw = mapper.searchPw(member);
			msg = "비밀번호를 재설정해주세요.";
			url = "changePw?userId=" + member.getUserId();
			model.addAttribute("member", member);
			if (pw == null) {
				msg = "해당하는 정보와 일치하는 값이 없습니다.";
				url = "login";
			}
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
	}

	public void changePwProc(MemberDTO member, HttpServletResponse response) {
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		String secretPass = encoder.encode(member.getPw());
		member.setPw(secretPass);

		int result = mapper.changePw(member);

		if (result == 1) {
			alert(response, "비밀번호가 재설정되었습니다.");
		} else {
			alert(response, "다시 시도하세요");
		}

	}

	public List<ProductDTO> myShop(String cp, Model model, String userId, String tab, 
								   String categoryId, String search, String order, String userName) {
		
		mapper.deleteProductDB_demo();
		
		List<ProductDTO> products = new ArrayList<ProductDTO>();
		
		int userproductCount = mapper.getUserProductCount(userId);
		
		if(search == null || search.isEmpty()) {
			search = "search";
		}
		
		int productTotalCount = dao.getProductCount(search);
		int totalCount_url = 0;
	// 페이징	
		int currentPage = 1;
		try {
			currentPage = Integer.parseInt(cp);
		} catch (Exception e) {
			currentPage = 1;
		}

		int pageBlock = 3; // 한 페이지에 보일 데이터의 수
		int end = pageBlock * currentPage; // 테이블에서 가져올 마지막 행번호
		int begin = end - pageBlock + 1; // 테이블에서 가져올 시작 행번호
		
		
		
		// 구매상품 목록
		if(tab.trim().equals("item")) {
			
			products = dao.sellers(begin, end, tab, search,userName);
			
			int totalCount = dao.orderTotalCount(tab, search, userName);
			
			if(totalCount == 0) {
				return products;
			}
			
			 String url = "myshop?userId=" + userId + "&tab=" + tab;
			 	
				if (categoryId != null && categoryId.equals("0")==false) {
					url += "&categoryId=" + categoryId;
					}
					
					url += "&currentPage=";
					
					if (order != null) {
						url += "&order=" + order;
					}
					if (search != null) {
						url += "&search=" + search;
								
					}
					String result = PageService.printPage(url, totalCount, pageBlock, currentPage);
				
				
					String totalCount_seller = String.valueOf(totalCount);
				
					model.addAttribute("result", result);
					model.addAttribute("totalCount", totalCount_seller);
					
					return products;
		}
		
		// 찜한 상품 목록
		if(tab.trim().equals("wish")) {
			 int likeProductBae[] = Heartdao.getLikeProductNo(userId);
				 
			 if(categoryId != null && categoryId.equals("0")==false) {
				 int categoryId_int = Integer.parseInt(categoryId);
				 
				 String path = dao.getCatePath(categoryId_int);	
				 int categoryBae [] = dao.getCategoryId_depth0(path);
				 System.out.println("category배열 사이즈 : " + categoryBae.length);
				 
				 ProductDTO pdto = new ProductDTO();
				 
				 for (int i = 0; i<categoryBae.length; i++) {
						for(int j=0; j<likeProductBae.length; j++) {
							pdto = mapper.getlikeProduct_cate(categoryBae[i], likeProductBae[j]);
							if(pdto != null) {
								mapper.insertProductDB_demo(pdto);
							}			
						}
					}
				 	products = mapper.listProductDB_demo(begin, end);
				 	totalCount_url = mapper.productDB_demoCount();
				 }
			 
			 else {
				 	for(int x = 0; x<likeProductBae.length; x++) {
				 		ProductDTO pdto = new ProductDTO();	 		
				 		pdto = mapper.getlikeProduct(likeProductBae[x], begin, end);
				 		if(pdto != null) {
				 			mapper.insertProductDB_demo(pdto);
						}		
				 	}
				 	products = mapper.listProductDB_demo(begin, end);
				 	
				 	if(order != null) {	
			 			int order_int = Integer.parseInt(order);
			 			switch (order_int) {
				 			case 1:
				 				products = mapper.listProductDB_demoDESC(begin, end);break;
				 			case 2:
				 				products = mapper.listProductDB_demoASC(begin, end); break;	
			 				}
			 		}
				 	
				 	
				 	totalCount_url = Heartdao.getLikeProductCount(userId);		 	
			 	}
			 
			 String url = "myshop?userId=" + userId + "&tab=" + tab;
			 	
				if (categoryId != null && categoryId.equals("0")==false) {
					url += "&categoryId=" + categoryId;
					}
					
					url += "&currentPage=";
					
					if (order != null) {
						url += "&order=" + order;
					}
					
					String result = PageService.printPage(url, totalCount_url, pageBlock, currentPage);
				
				
					String totalCount = String.valueOf(totalCount_url);
				
					model.addAttribute("result", result);
					model.addAttribute("totalCount", totalCount);
					
					return products;
		}			
		return products;
	}
	
	public OrderDTO receipt(int productNo, Model model) {
		OrderDTO orders = mapper.receipt(productNo);
		return orders;
	}

	}

