package com.care.project.admin;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.care.project.PageService;
import com.care.project.member.MemberDTO;

@Service
public class AdminService {
@Autowired IAdminMapper mapper;

// memberListAd
	   public void memberListAd(String select, String search, String cp, Model model) {
	      int currentPage = 1;
	      try{
	         currentPage = Integer.parseInt(cp);
	      }catch(Exception e){
	         currentPage = 1;
	      }
	      
	      if(select == null)
	         select = "";
	      
	      int pageBlock = 3; // 한 페이지에 보일 데이터의 수 
	      int end = pageBlock * currentPage; // 테이블에서 가져올 마지막 행번호
	      int begin = end - pageBlock + 1; // 테이블에서 가져올 시작 행번호
	      
	      ArrayList<MemberDTO> members = mapper.memberListAd(begin, end, select, search);
	      int totalCountAd = mapper.totalCountAd(select, search);
	      if(totalCountAd == 0) {
	         return ;
	      }
	      
	      String url = "memberListAd?select="+select+"&search="+search+"&currentPage=";
	      String result = PageService.printPage(url, totalCountAd, pageBlock, currentPage);
	      
	      model.addAttribute("select", select);
	      model.addAttribute("search", search);
	      model.addAttribute("result", result);
	      model.addAttribute("members", members);
	   }
	 
// userInfo
	   public String userInfo(String userId, Model model) {
		   
	       MemberDTO member = mapper.userInfo(userId);

	       model.addAttribute("member", member);
	       return "회원 검색 완료";
	   }

// 회원 삭제	   
	public String deleteMember(String userId) {
		String msg = null;
		int res = mapper.deleteMemberAd(userId);
		
		
		if(res > 0) {
			msg = "회원 삭제 완료";	
		}
		else {
			msg = "회원 삭제 중 문제 발생";
		}
		return msg;
	}
// 회원 수정

	public String updateMember(MemberDTO member) {
		String msg = null;
		
		int res = mapper.updateMemberAd(member);
		
		if(res > 0) {
			msg = "회원 정보 수정완료!";	
		}
		else {
			msg = "회원 수정 중 문제 발생";
		}
		return msg;
	
	
	}

	public LocationDTO getLocation(String shopId) {
		
		LocationDTO dto = mapper.getLocation(shopId);
		
		return dto;
	}
	
	   
}
