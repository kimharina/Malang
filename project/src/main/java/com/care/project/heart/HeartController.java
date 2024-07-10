package com.care.project.heart;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
public class HeartController {
@Autowired HeartService service;
@Autowired HttpSession session;

	@GetMapping("heartPlus")
	public void heartPlus() {}
	
	@ResponseBody
	@PostMapping(value="heartPlus", produces="application/json; charset=utf-8")
	public void heartPlus(@RequestBody(required = false)String productNo, HttpServletResponse resp, Model model) {
		System.out.println("heartPlus ajax 통신 테스트 : " + productNo);
		
		String userId = (String)session.getAttribute("userId");
		
		if(userId == null || userId.isEmpty()) {
			return;
		}
		
		service.heartPlus(productNo, userId);
		return;
	}
	
	@GetMapping("heartMinus")
	public void heartMinus() {}
	
	@ResponseBody
	@PostMapping(value="heartMinus", produces="application/json; charset=utf-8")
	public void heartMinus(@RequestBody(required = false)String productNo, HttpServletResponse resp) {
		System.out.println("heartMinus ajax 통신 테스트 : " + productNo);
		
		String userId = (String)session.getAttribute("userId");
		if(userId == null || userId.isEmpty()) {
			return;
		}
		service.heartMinus(productNo, userId);
		return;
	}
	
}
