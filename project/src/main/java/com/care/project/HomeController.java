package com.care.project;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.care.project.product.ProductDTO;
import com.care.project.product.ProductService;

@Controller
public class HomeController {
	@Autowired ProductService productService;
	
	//메인
	@RequestMapping("index")
	public void index(Model model,@RequestParam(value = "currentPage", required = false)String cp, String select, 
								  @RequestParam(value = "sellState", defaultValue = "all", required = false )String sellState) {
		
		List<ProductDTO> productsView = new ArrayList<ProductDTO>();
		
		productsView = productService.listProductView(sellState);

		
		List<ProductDTO> products = new ArrayList<ProductDTO>();
		products = productService.listProduct(cp, select, model);
		
		String result= (String)model.getAttribute("result");
		model.addAttribute("result", result);
		model.addAttribute("productsView", productsView);
		model.addAttribute("products", products);
		
	}	
}
