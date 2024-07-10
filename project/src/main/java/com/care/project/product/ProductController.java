package com.care.project.product;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.care.project.admin.AdminService;
import com.care.project.admin.LocationDTO;
import com.care.project.member.MemberDTO;
import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.Payment;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ProductController {
@Autowired ProductService service;
@Autowired HttpSession session;;
@Autowired IProductMapper dao;
@Autowired AdminService AdminService;
// 관리자 기능
	// 1.카테고리 등록
		@GetMapping("insertCategory")
		public String insertCategory(HttpServletRequest req, Model model) {
			String select_depth1 = req.getParameter("select_depth1");
			
			if(select_depth1 == null || select_depth1.equals("0")) {
				String msg = "1차 카테고리와 2차 카테고리를 먼저 선택해주세요! ";
				String url = "cateListAd";
				model.addAttribute("msg", msg);
				model.addAttribute("url", url);
				
				return "product/alert";
			}
			
			CategoryDTO dto = service.insertCategory(select_depth1);
			
			model.addAttribute("category", dto);
			return"admin/insertCategory";
		}
		
		@PostMapping("insertCategoryProc")
		public String insertCateProc(CategoryDTO dto, Model model) {
			int categoryId = dto.getCategoryId();
				
			String msg = service.insertCategoryProc(dto);
			
			model.addAttribute("msg", msg);
			
			if(msg.equals("카테고리 등록 성공!")) {
				model.addAttribute("url", "cateListAd");
			}
			else {
				model.addAttribute("url", "admin");
			}
			return "product/alert";
		}
	
	// 2.카테고리 목록
		@RequestMapping("cateListAd")
		public String cateListAd(Model model) {
			List<CategoryDTO> list = service.listCategory(null);
			
			model.addAttribute("list", list);
		    return "admin/cateListAd";
		   }
		
		// 카테고리 목록 ajax	
		@GetMapping("cateListADList")
		public void cateListADList() {}
		
		@ResponseBody
		@PostMapping(value="cateListADList", produces = "application/json; charset=utf-8")
		public List<CategoryDTO> cateListADList(@RequestBody (required = false)String select_depth1){	
			
			return service.listCategoryAd(select_depth1);
		}
		
	// 3.카테고리 수정			
		@GetMapping("updateCategory")
		public String updateCategory(Model model, HttpServletRequest req) {
			
			int categoryId = Integer.parseInt(req.getParameter("categoryId")); 
			CategoryDTO dto = service.getCategory(categoryId);
			
			model.addAttribute("category", dto);
			return "admin/updateCategory";
		   }
		
		
		@PostMapping("updateCategoryProc")
		public String updateCategoryProc(String categoryId, String name, String path, String depth, Model model) {
			CategoryDTO dto = new CategoryDTO();
			int categoryId_int = Integer.parseInt(categoryId.trim());
			int depth_int = Integer.parseInt(depth.trim());
			
			dto.setCategoryId(categoryId_int);
			dto.setName(name);
			dto.setPath(path);
			dto.setDepth(depth_int);
			
			String msg = service.updateCategoryProc(dto);
			
			model.addAttribute("msg", msg);
			
			if(msg.equals("카테고리 수정 성공!")) {
				model.addAttribute("url", "cateListAd");
			}
			else {
				model.addAttribute("url", "admin");
			}
			return"product/alert";
		}
		
		
	// 4.카테고리 삭제
		@GetMapping("deleteCategoryProc")
		public String categoryDeleteProc(String categoryId, Model model) {
			int categoryId_int = Integer.parseInt(categoryId.trim());
			String msg = service.deleteCategoryProc(categoryId_int);
			
			if(msg.equals("카테고리 삭제 성공!")) {
				model.addAttribute("url", "cateListAd");
			}
			else {
				model.addAttribute("url", "admin");
			}
			model.addAttribute("msg",msg);
			return "product/alert";
		}
		
	// 5.상품관리 설정
		@RequestMapping("productAd")
		public String productAd(String select, Model model, @RequestParam (value="currentPage", defaultValue="1", required=false)String cp) {
			List<ProductDTO> productListAd = new ArrayList<ProductDTO>();
				productListAd = service.listProduct(cp, select, model);
				model.addAttribute("list", productListAd);
				return "admin/productAd";	
		}
		
		@ResponseBody
		@PostMapping(value="productAd_select", produces="application/json; charset=utf-8")
		public List<ProductDTO> productAd_select(@RequestBody (required = false)String select, 
												 @RequestParam (value="currentPage", defaultValue="1", required=false)String cp,
												 Model model) {
			model.addAttribute("result", (String)model.getAttribute("result"));
			return service.listProductAd(cp, select, model);
		}


// 관리자, 사용자 공용
	// 1. 상품판매
		@GetMapping("insertProduct")
		public String insertProduct(Model model) {
			
			String sessionId = (String)session.getAttribute("userId");
	
			String msg = null;
			String url = null;
			
//			if(sessionId == null || sessionId.isEmpty()) {
//				msg = "로그인 후 이용 가능합니다!";
//				url = "auth";
//				model.addAttribute("msg",msg);
//				model.addAttribute("url",url);
//				
//				return "product/alert";
//			}
			return"product/insertProduct";
		}
	
		@PostMapping("insertProductProc")
		public String proRegProc(Model model, MultipartHttpServletRequest multi) {
			
			String productName = (String)multi.getParameter("productName");
			String productCount = (String)multi.getParameter("productCount");
			String select_depth3 = (String)multi.getParameter("select_depth3");
			String productSize = (String)multi.getParameter("productSize");
			String productCondition = (String)multi.getParameter("productCondition");
			String price = (String)multi.getParameter("price");
			String productContent = (String)multi.getParameter("productContent");
			String shopId= (String)multi.getParameter("shopId");
			String delCharge = (String)multi.getParameter("delCharge");
			String address = (String)multi.getParameter("address");
			
			if(productName == null || productName.isEmpty()) {
				String msg = "상품 이름은 필수 항목입니다. 입력 후 상품등록을 진행해주세요!";
				model.addAttribute("msg", msg);
				model.addAttribute("url","insertProduct");
				return "product/alert";
			}
			
			if(productCount == null || productCount.equals("")) {
				String msg = "상품 수량은 필수 항목입니다. 입력 후 상품등록을 진행해주세요!";
				model.addAttribute("msg", msg);
				model.addAttribute("url","insertProduct");
				return "product/alert";
			}
			
			if(select_depth3.isEmpty() || select_depth3.equals("0")) {
				String msg = "상품 카테고리는 필수 항목입니다. 입력 후 상품등록을 진행해주세요!";
				model.addAttribute("msg", msg);
				model.addAttribute("url","insertProduct");
				return "product/alert";
			}
			if(productSize==null || productSize.isEmpty()) {
				String msg = "상품 사이즈는 필수 항목입니다. 입력 후 상품등록을 진행해주세요!";
				model.addAttribute("msg", msg);
				model.addAttribute("url","insertProduct");
				return "product/alert";
			}
			if(productCondition==null || productCondition.equals("0")) {
				String msg = "상품 컨디션은 필수 항목입니다. 입력 후 상품등록을 진행해주세요!";
				model.addAttribute("msg", msg);
				model.addAttribute("url","insertProduct");
				return "product/alert";
			}
			if(price == null || price.isEmpty()) {
				String msg = "가격은 필수 항목입니다. 입력 후 상품등록을 진행해주세요!";
				model.addAttribute("msg", msg);
				model.addAttribute("url","insertProduct");
				return "product/alert";
			}
			if(productContent==null || productContent.isEmpty()) {
				String msg = "상품 내용은 필수 항목입니다. 입력 후 상품등록을 진행해주세요!";
				model.addAttribute("msg", msg);
				model.addAttribute("url","insertProduct");
				return "product/alert";
			}
			if(shopId.isEmpty() || shopId == null) {
				String msg = "판매 지점은 필수 항목입니다. 입력 후 상품수정을 진행해주세요!";
				model.addAttribute("msg", msg);
				model.addAttribute("url","insertProduct");
				return "product/alert";
			
			}
			if(delCharge ==null || delCharge.isEmpty()) {
				String msg = "배송비는 필수 항목입니다. 입력 후 상품등록을 진행해주세요!";
				model.addAttribute("msg", msg);
				model.addAttribute("url","insertProduct");
				return "product/alert";
			}
			
			String msg = service.insertProductProc(model, multi);
			String sessionId = (String)session.getAttribute("userId");
	
			model.addAttribute("msg", msg);
			if(sessionId.equals("admin")) {
				model.addAttribute("url", "admin");
			}else {
				model.addAttribute("url", "index");		
			}
			return "product/alert";
		}
				
	// 2.판매상품목록
		@RequestMapping("listProduct")
		public String productList(Model model, @RequestParam(value = "currentPage", required = false) String cp, String select) {
			List<ProductDTO> products = new ArrayList<ProductDTO>();
				products = service.listProduct(cp, select, model);
				model.addAttribute("products", products);

			return "product/listProduct";
		}
		
	// 3.상품 상세 내용
		   @RequestMapping("productContent")
		   public String productContent(@RequestParam(value ="heart", required = false)String heart, int productNo, Model model) {
		      System.out.println("productNo" + productNo);
		      ProductDTO product = service.productContent(productNo, heart, model);
		      LocationDTO dto = AdminService.getLocation(product.getSellLocation());
		     //  System.out.println("주소는 : " + dto.getAddress());
		      
		      session.setAttribute("addr", dto.getAddress());
		      
		      model.addAttribute("product", product);
		      model.addAttribute("location", dto);
		      model.addAttribute("heart", (String)model.getAttribute("heart"));
		      System.out.println("heart 값 : " + (String)model.getAttribute("heart"));
		      
		      return "product/productContent";
		   }
		   
	// 4.상품 삭제
		   @RequestMapping("deleteProductProc")
		   public String deleteProductProc(int productNo, Model model) {
			   String sessionId = (String)session.getAttribute("userId");
			   String msg = null;
			   
			   if(sessionId == null || sessionId.trim().isEmpty()) {
				   msg = "로그인 후 이용 가능한 서비스입니다!";
				   
			 	   model.addAttribute("msg", msg); 
			 	   model.addAttribute("url", "auth");		
			 	   
				   return "product/alert";
			   }	  
			   
			   msg = service.deleteProductProc(productNo);
			   model.addAttribute("msg", msg);
			   		
				if(sessionId.equals("admin")) {
					model.addAttribute("url", "productAd");
				}else {
					model.addAttribute("url", "index");		
				}
				
			   return "product/alert";
		   }
		   
	// 5.상품 수정
		  @GetMapping("updateProduct")
		  public String updateProduct(int productNo, Model model) {  
			  
			  String sessionId = (String)session.getAttribute("userId");
			  String msg = null;
			   
			   if(sessionId == null || sessionId.trim().isEmpty()) {
				   msg = "로그인 후 이용 가능한 서비스입니다!";
				   
			 	   model.addAttribute("msg", msg); 
			 	   model.addAttribute("url", "auth");		
			 	   
				   return "product/alert";
			   }	  
			   
			  ProductDTO product = service.updateProduct(productNo);
			  
			  model.addAttribute("product", product);
			  return"product/updateProduct";
		  }
		  
		  @PostMapping("updateProductProc")
		  public String updateProductProc(Model model, MultipartHttpServletRequest multi) {
			  	String msg = null;
			  	String productName = (String)multi.getParameter("productName");
				String productCount = (String)multi.getParameter("productCount");
				String select_depth3 = (String)multi.getParameter("select_depth3");
				String productSize = (String)multi.getParameter("productSize");
				String productCondition = (String)multi.getParameter("productCondition");
				String price = (String)multi.getParameter("price");
				String productContent = (String)multi.getParameter("productContent");
				
				String shopId = (String)multi.getParameter("shopId");
				
				String delCharge = (String)multi.getParameter("delCharge");
				
				if(productName == null || productName.isEmpty()) {
					msg = "상품 이름은 필수 항목입니다. 입력 후 수정을 진행해주세요!";
					model.addAttribute("msg", msg);
				}
				if(productCount == null || productCount.equals("")) {
					msg = "상품 수량은 필수 항목입니다. 입력 후 상품수정을 진행해주세요!";
					model.addAttribute("msg", msg);
				}
				
				if(select_depth3.isEmpty() || select_depth3.equals("0")) {
					msg = "상품 카테고리는 필수 항목입니다. 입력 후 상품수정을 진행해주세요!";
					model.addAttribute("msg", msg);
				}
				if(productSize==null || productSize.isEmpty()) {
					msg = "상품 사이즈는 필수 항목입니다. 입력 후 상품수정을 진행해주세요!";
					model.addAttribute("msg", msg);
				}
				if(productCondition==null || productCondition.equals("0")) {
					msg = "상품 컨디션은 필수 항목입니다. 입력 후 상품수정을 진행해주세요!";
					model.addAttribute("msg", msg);
				}
				if(price == null || price.isEmpty()) {
					msg = "가격은 필수 항목입니다. 입력 후 상품수정을 진행해주세요!";
					model.addAttribute("msg", msg);
				}
				if(productContent==null || productContent.isEmpty()) {
					msg = "상품 내용은 필수 항목입니다. 입력 후 상품수정을 진행해주세요!";
					model.addAttribute("msg", msg);
				}
				if(shopId.isEmpty() || shopId == null) {
					msg = "판매 지점은 필수 항목입니다. 입력 후 상품수정을 진행해주세요!";
					model.addAttribute("msg", msg);
				}
				if(delCharge ==null || delCharge.isEmpty()) {
					msg = "배송비는 필수 항목입니다. 입력 후 상품수정을 진행해주세요!";
					model.addAttribute("msg", msg);
					
				}
				msg = service.updateProductProc(model, multi);
				model.addAttribute("msg",msg);
				model.addAttribute("url","index");
				return "product/alert";
		  }
		  
	// 6.상품 검색
		@PostMapping("searchList")
		public String searchList(String search, Model model, String userId, @RequestParam(value = "currentPage", required = false)String cp){
			List<ProductDTO> products = new ArrayList<ProductDTO>();
			products = service.listProductSearch(search, userId, model, cp);
			
			
			model.addAttribute("products", products);
			return "product/productSearch";
			
		}
		  
		  
		  
		  
// 회원 기능
		
	// 1.메인화면 카테고리 선택	
		@RequestMapping("cate")
		public String search(Model model, @RequestParam (value="currentPage", defaultValue="1", required=false)String cp, String select) {
			List<ProductDTO> products = new ArrayList<ProductDTO>();
			List<CategoryDTO> categorys = new ArrayList<CategoryDTO>();
			
			
			categorys = service.listCategory(select);
			products = service.listProduct(cp, select, model);
			
			model.addAttribute("categorys", categorys);
			model.addAttribute("products", products);
			
			String result = (String)model.getAttribute("result");
			System.out.println("result 값 : " + result);
			model.addAttribute("result", result);
			return "product/cate";
		}
	// 2.카테고리 리스트 반환
		// 상품 카테고리
		@GetMapping("cateList")
		public void cateList() {}
		
		@ResponseBody
		@PostMapping(value="cateList", produces="application/json; charset=utf-8")
		public List<CategoryDTO> cateList_depth(@RequestBody (required = false)String select_depth) {
			return service.listCategory(select_depth);
		}
			
     // 주문서
        @GetMapping("order")
        public String order(@RequestParam (value="productNo", defaultValue="1", required=false)int productNo, Model model) {
           if (productNo != 0) {
              System.out.println("order productNo: " + productNo);
              String sessionId = (String)session.getAttribute("userId");
              String sessionAddress = (String)session.getAttribute("address");
              System.out.println(sessionId);
              
              	if(sessionId == null || sessionId.isEmpty()) {
	  				String msg = "로그인 후 이용 가능합니다!";
	  				String url = "login";
	  				model.addAttribute("msg",msg);
	  				model.addAttribute("url",url);
	  				return "product/alert";
  				}
              	
             // 문자열을 쉼표로 분할하여 배열로 나눔
              	String[] parts = sessionAddress.split(",");
              	// 배열의 각 요소에 접근
              	if (parts.length == 3) {
              	    String sendrHide = parts[0]; // 첫 번째 부분
              	    String receiverAddr1 = parts[1]; // 두 번째 부분
              	    String receiverAddr2 = parts[2];  // 세 번째 부분
              	    
	              	model.addAttribute("sendrHide", sendrHide);
	                model.addAttribute("receiverAddr1", receiverAddr1);
	                model.addAttribute("receiverAddr2", receiverAddr2);
              	}
              ProductDTO product = service.productContent_2(productNo);
              MemberDTO member = service.memberInfo(sessionId);
              
              if (product == null) {
                  return "index";
               }

              model.addAttribute("product", product);
              model.addAttribute("member", member);
           }
           return "product/order";
        }
           
        @PostMapping("Insertorder")
        public ResponseEntity<String> order(@RequestBody OrderDTO order) {
        	String uid = order.getImp_uid();
            int productNo = order.getProductNo();
            String buyer = order.getBuyer();
            String productName = order.getProductName();
            String orderDate = order.getOrderDate();
            String price = order.getPriceOutput();
            String address = order.getAddress();
        	
        	order.setImp_uid(uid);
        	order.setProductNo(productNo);
        	order.setBuyer(buyer);
        	order.setProductName(productName);
        	order.setOrderDate(orderDate);
        	order.setPriceOutput(price);
        	order.setAddress(address);
        	System.out.println(uid);
        	
        	int res = service.list(order);
        	
        	if(res==1) {
        		service.sellState(res,productNo);
        	}else {
        		System.out.println("구매 실패");
        	}
        	
        	return new ResponseEntity<String>("success", HttpStatus.OK);
       } 
        
    
	  // 구매내역
	   	@RequestMapping("orderlist")
	   	public String orderList(String tab, String search,String userName,String userId,
	   		@RequestParam(value="currentPage", required = false ) String cp, Model model) {
	   		if (session.getAttribute("userId") == null )
				return "redirect:auth";
			
	   		userId = (String) session.getAttribute("userId");
	   		userName = (String) session.getAttribute("userName");
	   		
			model.addAttribute("tab", tab);
			model.addAttribute("userId", userId);
			model.addAttribute("userName", userName);
			model.addAttribute("search", search);
			
	   		service.orderList(tab, search, cp, model,userName, userId);
	   	
	   		return "auth/orderList";
	   	}	
		
	    //결제구현
        private IamportClient api;
        	
        public ProductController(){		
        	//토큰 발급
        	this.api = new IamportClient("7332061525443550","KBaPyyC6S23Yzgys8V2lA32BJUmHiOgZRaoDKszJv6ZhB699zZ39vDGb2MAOfHT0ZsYikUbUbweEXyIR");
        }
        		
        @ResponseBody
    	@PostMapping(value="/verifyIamport/{imp_uid}")
    	public IamportResponse<Payment> paymentByImpUid(Model model, Locale locale, HttpSession session
    			, @PathVariable(value= "imp_uid") String imp_uid) throws IamportResponseException, IOException
    	{	
    			return api.paymentByImpUid(imp_uid);
    	}
        
     // 가맹점 정보   
    	@RequestMapping("offShop")
    	public String offShop(Model model) {
    		
    		List<ShopDTO> shop = new ArrayList<ShopDTO>();
    		shop = service.offShop(model);
    		
    		model.addAttribute("shop", shop);
    		return "product/offShop";
    	}	
    	


    	@RequestMapping("offShopInfo")
    	public String offShopInfo(Integer shopId, Model model) {

    		ShopDTO shop = service.offShopInfo(shopId);

    		//shopId = (int)session.getAttribute("shopId");
    		model.addAttribute("shop", shop);
    		String address = shop.getAddress();

    		session.setAttribute("addr", address);

    		return "product/offShopInfo";

        }
		
}
