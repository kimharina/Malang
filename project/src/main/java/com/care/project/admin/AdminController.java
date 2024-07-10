package com.care.project.admin;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.care.project.member.MemberDTO;
import com.care.project.product.CategoryDTO;
import com.care.project.product.ProductDTO;
import com.care.project.product.ProductService;

import jakarta.servlet.http.HttpSession;

@Controller
public class AdminController {
	
	@Autowired private ProductService productService;
	@Autowired HttpSession session;
	@Autowired private AdminService service;
	
	@GetMapping("admin")
	public String admin(Model model,  @RequestParam (value="currentPage", defaultValue="1", required=false)String cp, String select) {
		
		List<ProductDTO> products = new ArrayList<ProductDTO>();
		products = productService.listProduct(cp, select, model);
		model.addAttribute("products", products);
		
		return"admin/admin";
	}
	
	// 1.회원목록
	   @RequestMapping("memberListAd")
	   public String memberListAd(String select, String search,
	         @RequestParam(value="currentPage", required = false) String cp, Model model) {
		   		service.memberListAd(select, search, cp, model);
	      return "admin/memberListAd";
	   }
	   
	   @RequestMapping("userInfo")
	   public String userInfo(String userId, Model model, RedirectAttributes ra) {
	       String msg = service.userInfo(userId, model);
	       if (msg.equals("회원 검색 완료"))
	           return "admin/userInfo";

	       ra.addFlashAttribute("msg", msg);
	       return "redirect:memberListAd";
	   }
	// 2.회원삭제   
	   @RequestMapping("deleteMember")
	   public String deleteMember(String userId, Model model) {
	      String msg = service.deleteMember(userId);
	      if(msg.equals("회원 삭제 완료")) {
	         model.addAttribute("msg", msg);
	         model.addAttribute("url", "admin");
	      }
	      else {  
	    	  model.addAttribute("msg", msg);
	    	  model.addAttribute("url", "memberListAd");
	      }
	      return "product/alert";
	   }
	   
	// 3.회원수정
	   @PostMapping("updateMember")
	   public String updateMember(MemberDTO member, Model model) {
		   String msg = service.updateMember(member);
		   if(msg.equals("회원 정보 수정완료!")) {
		       model.addAttribute("msg", msg);
		       model.addAttribute("url", "admin");
		   }
		   else {  
			   model.addAttribute("msg", msg);
			   model.addAttribute("url", "memberListAd");
		   }
		   return "product/alert";
	   }
	   
	// 4.지점 정보 가져오기
	   @GetMapping("location")
		public void location() {}
		
		@ResponseBody
		@PostMapping(value="location", produces="application/json; charset=utf-8")
		public String location(@RequestBody (required = false)String shopId) {
			LocationDTO dto = service.getLocation(shopId);
	//		session.setAttribute("addr", dto.getAddress());
			System.out.println("주소가 어떻게 찍히나 : " + dto.getAddress());
			
			return dto.getAddress();
		}
}	

