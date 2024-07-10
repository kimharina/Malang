package com.care.project.heart;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.care.project.product.IProductMapper;

import jakarta.servlet.http.HttpSession;

@Service
public class HeartService {
	@Autowired HttpSession session;
	@Autowired IProductMapper productDao;
	@Autowired IHeartMapper mapper;
	
	public void heartPlus(String productNo, String userId) {
		HeartDTO dto = new HeartDTO();
		dto.setProductNo(Integer.parseInt(productNo));
		dto.setUserId(userId);
		
		mapper.insertHeart(dto);	
	}

	public void heartMinus(String productNo, String userId) {
		HeartDTO dto = new HeartDTO();
		dto.setProductNo(Integer.parseInt(productNo));
		dto.setUserId(userId);
		
		mapper.deleteHeart(dto);
		
	}

}
