package com.care.project.product;

import java.io.File;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.care.project.PageService;
import com.care.project.admin.IAdminMapper;
import com.care.project.heart.IHeartMapper;
import com.care.project.member.IMemberMapper;
import com.care.project.member.MemberDTO;

import jakarta.servlet.http.HttpSession;


@Service
public class ProductService {
@Autowired IProductMapper dao;
@Autowired IAdminMapper adminDao;
@Autowired IHeartMapper Heartdao;
@Autowired HttpSession session;
@Autowired IMemberMapper daoM;

// 1.카테고리 리스트 반환
	// 상품 카테고리
	public List<CategoryDTO> listCategory(String cCate) {		
		List<CategoryDTO> cList = new ArrayList<CategoryDTO>();
		
		// admin category List default 
		if(cCate == null || cCate.trim().isEmpty()) {	
				cList = dao.cateListAd_default();
				return cList;
			}
			
			int select = Integer.parseInt(cCate);
		
		// 카테고리 초기화
			if(select == 0) {
				cList = dao.cateReset(select);				
				return cList;
				
			}
		// depth 1 호출	
			if(select < 6 && 1 <= select) {
				cList = dao.cateList(select);
				return cList;
			}
		// depth 2호출			
			if(select >= 6 && select < 19) {
				String catePath = dao.getCatePath(select);
				cList = dao.cateList_d1(catePath);
				return cList;
			}
		// depth 3호출	
			if(select >= 19) {
				String catePath = dao.getCatePath(select);
				cList = dao.cateList_d2(catePath);
				return cList;
			}	
		return cList;	
	}

	
// 2.판매상품 등록	
	public String insertProductProc(Model model, MultipartHttpServletRequest multi) {
		DecimalFormat df = new DecimalFormat("###,###");
		ProductDTO dto = new ProductDTO();
		
		String category = null;
		String msg = null;
		
			int depth3Id = Integer.parseInt(multi.getParameter("select_depth3"));
			int depth2Id = Integer.parseInt(multi.getParameter("select_depth2"));
			
			
		if(depth3Id==0) {
			
			category = dao.getCategoryName(depth2Id);
			dto.setCategory(category);
			dto.setCategoryId(depth2Id);
		}else {
			category = dao.getCategoryName(depth3Id);
			dto.setCategory(category);
			dto.setCategoryId(depth3Id);
		}
		
		String shopId = multi.getParameter("shopId");
		
		String sessionId = (String) session.getAttribute("userId");
		
		int productCount = Integer.parseInt(multi.getParameter("productCount"));
		String productName = multi.getParameter("productName");
		
		int price = Integer.parseInt(multi.getParameter("price"));
		String priceOutput = df.format(price);
		
		String productContent = multi.getParameter("productContent");
		
		String productSize = multi.getParameter("productSize");
		String productCondition = multi.getParameter("productCondition");
		
		int delCharge = Integer.parseInt(multi.getParameter("delCharge"));
		String delChargeOutput = df.format(delCharge);
		
		dto.setProductSize(productSize);
		dto.setUserId(sessionId);
		dto.setProductCount(productCount);
		dto.setProductName(productName);
		dto.setPrice(price);
		dto.setPriceOutput(priceOutput);
		dto.setSellLocation(shopId);
		dto.setProductContent(productContent);
		dto.setProductCondition(productCondition);
		dto.setDelCharge(delCharge);
		dto.setDelChargeOutput(delChargeOutput);
		// 파일 업로드
			// 1. 페이지에서 업로드 된 파일을 가져옴
				MultipartFile file =  multi.getFile("upFile"); // 페이지에서 사용한 parameter값 그대로 입력
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
			// 2. 파일의 이름 설정
					if(file.getSize() != 0) {
					sdf = new SimpleDateFormat("yyyyMMddHHmmss-");
					String fileTime = sdf.format(new Date()); 
		
					String fileName = file.getOriginalFilename();
					
				// 확장자 제한
					// 주소의 뒤에서부터 .을 찾아서 확장자를 잘라와서 저장
						// +1을 해주면 .까지 잘라서 확장자만 찾아올 수 있음
						
						String suffix = fileName.substring(fileName.lastIndexOf(".")+1, fileName.length());
						if(suffix.equals("exe")) {
							msg = "업로드 할 수 없는 확장자 입니다.";
							return msg;
							}
						if(suffix.equals("java")) {
							msg = "업로드 할 수 없는 확장자 입니다.";
							return msg;
							}			
					
			// 3.파일의 저장 경로
					// 업로드 사용자 아이디별 폴더를 생성해 관리
						String fileSaveDirectory = "H:\\project\\final\\project\\src\\main\\resources\\static\\images\\"+sessionId;  
					// 저장 경로를 가르키는 File f선언	
						File f= new File(fileSaveDirectory);
						
					// 해당 (아이디)경로에 폴더가 존재하는지 확인	
						if(f.exists()==false) {  
						// 해당 폴더를 생성	
							f.mkdir(); 		
							}
			// 4.저장 경로 완성	
				String fullPath = fileSaveDirectory + "\\" + fileTime + fileName;			
				// 경로를 활용해 File 객체로 생성	
					f= new File(fullPath);
						try {
			// 5. 해당 경로로 f의 이름으로 파일 저장(이동), transfer는 파일을 이동시키는 기능		
							file.transferTo(f); 
						}
						catch(Exception e) {
							e.printStackTrace();
							dto.setFileName("");
							}
						String saveFileName= fileTime + fileName;
						dto.setFileName(saveFileName);
						}
					
					int res = dao.insertProduct(dto);
					
					if(res > 0) {
						msg = "상품 등록이 완료됐습니다!";
						return msg;
					}
					else {
						msg = "상품 등록에 실패했습니다. 관리자에게 문의해주세요";
						return msg;
					}
				}

// 3.관리자 페이지 카테고리 필터
	public List<CategoryDTO> listCategoryAd(String select_depth1) {
		List<CategoryDTO> list = new ArrayList<CategoryDTO>();
		
			int select = Integer.parseInt(select_depth1);
			
			String catePath = dao.getCatePath(select);
			
			list = dao.cateListAd(catePath);
			
		return list;
	}

	public String updateCategoryProc(CategoryDTO cdto) {
		String msg = null;
		int res = 0;
		
		res = dao.updateCategoryProc(cdto);
		
		if(res > 0) {
			msg = "카테고리 수정 성공!";
			return msg;
		}
		else {
			msg = "카테고리 수정 중 문제 발생";
			return msg;
		}
			
		
	}
// 3.카테고리 가져오기
	public CategoryDTO getCategory(int categoryId) {
		CategoryDTO dto = dao.getCategory(categoryId);
		return dto;
	}
// 4.카테고리 삭제
	public String deleteCategoryProc(int categoryId_int) {
		String msg = null;
		int res = 0;
		res = dao.deleteCategory(categoryId_int);
		
		if(res > 0) {
			msg = "카테고리 삭제 성공!";
		}
		else {
			msg = "카테고리 삭제 중 문제 발생";
		}
		return msg;
	}
// 5.카테고리 등록
	public CategoryDTO insertCategory(String select_depth1) {
		
		int select_depth1_id = Integer.parseInt(select_depth1);
	// 기준 DTO 	
		CategoryDTO dto = dao.getCategory(select_depth1_id);
		
		int categoryCount = dao.getCategoryNextId();
		int depth = dto.getDepth()+1;
		String path = dto.getPath() + (Integer.toString(categoryCount)) + "/";
	// 반환할 DTO	
		CategoryDTO sendDto = new CategoryDTO();
		
		sendDto.setCategoryId(categoryCount);
		sendDto.setDepth(depth);
		sendDto.setPath(path);
		
		return sendDto;
	}
	public String insertCategoryProc(CategoryDTO dto) {
		String msg = null;
		int res = 0;
		
		res = dao.insertCategoryProc(dto);
		
		if(res > 0) {
			msg = "카테고리 등록 성공!";
		}
		else {
			msg = "카테고리 등록 중 문제 발생 다시 시도해주세요";
		}
		return msg;
	}
	
// 6. 상품 리스트
	public List<ProductDTO> listProduct(String cp, String select, Model model) {
		String search = "search";
		int productCount = dao.getProductCount(search);
		ProductDTO pdto = new ProductDTO();
			
		List<ProductDTO> products = new ArrayList<ProductDTO>(); 
		
		int currentPage = 1;
		
		if(cp == null || cp.isEmpty()) {
			currentPage = 1;		
		}
		else {
			currentPage = Integer.parseInt(cp);
		}
		int pageBlock = 5; // 한 페이지에 보일 데이터의 수 
		int end = pageBlock * currentPage; // 테이블에서 가져올 마지막 행번호
		int begin = end - pageBlock + 1; 
		// 테이블에서 가져올 시작 행번호, 6으로 나눴을 때 남는 여분 글을 위한 +1 	
		
	// 페이징 번호 생성
		
		String url = null;
		
		
		
		if(select==null || select.isEmpty()) {
			products = dao.listProduct(select, begin, end);
			url = "listProduct?&currentPage=";
			int totalCount = dao.getProductCount(search);
			String result =  PageService.printPage(url, totalCount, pageBlock, currentPage);
			model.addAttribute("result", result);
			return products;
		}
			
		else {
			int categoryId = Integer.parseInt(select);
					
		// depth 0 카테고리 항목
			if(categoryId < 6) {
				String path = dao.getCatePath(categoryId);
				int categoryBae [] = dao.getCategoryId_depth0(path);
				for (int i = 0; i<categoryBae.length; i++) {
					for(int j=1; j<=productCount; j++) {
						pdto = dao.getProduct(categoryBae[i], j);
						if(pdto != null) {
							products.add(pdto);
						}
					}
				}
				int totalCount = products.size();
				url = "cate?select="+categoryId+"&currentPage=";
				String result =  PageService.printPage(url, totalCount, pageBlock, currentPage);
				model.addAttribute("result", result);
			
				return products;	
			}
				
		// 그 외	
				String path = dao.getCatePath(categoryId);
				int categoryBae [] = dao.getCategoryId_depth1(path);
					
				for (int i = 0; i<categoryBae.length; i++) {
					for(int j=1; j<=productCount; j++) {
						pdto = dao.getProduct(categoryBae[i], j);
						if(pdto != null) {
							products.add(pdto);
						}
					}
				}
				int totalCount = products.size();
				url = "cate?select="+categoryId+"&currentPage=";
				String result =  PageService.printPage(url, totalCount, pageBlock, currentPage);
				model.addAttribute("result", result);
				return products;		
			}
		}
// 7.상품 상세 내역 찜
		public ProductDTO productContent(int productNo, String heart, Model model) {
				
				String sessionId = (String)session.getAttribute("userId");
				
				if(sessionId != null) {
				String likeUserId = Heartdao.getlikeUserId(productNo);
				
				if(sessionId.equals(likeUserId)) {
					model.addAttribute("heart", "on");
					}
				
				}else {
					heart = "";
				}
				
		       
				ProductDTO product = dao.getProductcontent(productNo);
		       if (product != null) {
		           // 뷰 카운트 증가
		           dao.plusViewCount(productNo);
		           product.setViewCount(product.getViewCount() + 1);

		           if (product.getFileName() != null && !product.getFileName().trim().isEmpty()) {
		               String[] names = product.getFileName().split("/");

		               if (names.length > 5) {
		                   for (String name : names) {
		                       System.out.println("BoardService-boardContent name : " + name);
		                   }

		                   String[] fileNames = names[5].split("-", 2);

		                   if (fileNames.length > 1) {
		                       for (String fileName : fileNames) {
		                           System.out.println("BoardService-boardContent fileName : " + fileName);
		                       } 
		                       product.setFileName(fileNames[1]);
		                   }
		               }
		           }
		       }

		       return product;
		   }
		
	// 7-1 상품 내역
		public ProductDTO productContent_2(int productNo) {
		     
		       ProductDTO product = dao.getProductcontent(productNo);
		       if (product != null) {
		           // 뷰 카운트 증가
		           dao.plusViewCount(productNo);
		           product.setViewCount(product.getViewCount() + 1);

		           if (product.getFileName() != null && !product.getFileName().trim().isEmpty()) {
		               String[] names = product.getFileName().split("/");

		               if (names.length > 7) {
		                   for (String name : names) {
		                       System.out.println("BoardService-boardContent name : " + name);
		                   }

		                   String[] fileNames = names[7].split("-", 2);

		                   if (fileNames.length > 1) {
		                       for (String fileName : fileNames) {
		                           System.out.println("BoardService-boardContent fileName : " + fileName);
		                       } 
		                       product.setFileName(fileNames[1]);
		                   }
		               }
		           }
		       }
	
		       return product;
		   }
		
		
// 8.관리자 페이지 상품목록		
				public List<ProductDTO> listProductAd(String cp, String select, Model model) {
					List<ProductDTO> productAd = new ArrayList<ProductDTO>();
					String search = "search";
					// 페이징	
						int currentPage = 1;
						try{
							currentPage = Integer.parseInt(cp);
						}catch(Exception e){
							currentPage = 1;
						}
						
						int pageBlock = 5; // 한 페이지에 보일 데이터의 수 
						int end = pageBlock * currentPage; // 테이블에서 가져올 마지막 행번호
						int begin = end - pageBlock + 1; 
						// 테이블에서 가져올 시작 행번호, 6으로 나눴을 때 남는 여분 글을 위한 +1 
						
						
						int select_int = Integer.parseInt(select);
						
						switch (select_int) {
						
						case 1: {
							productAd = dao.getlistProductAdPriceDESC(begin,end);
							break;
						}
						case 2: {
							productAd = dao.getlistProductAdPriceASC(begin,end);
							break;
						}
						case 3: {
							productAd = dao.getlistProductAdViewCountDESC(begin,end);
							break;
						}
						case 4: {
							productAd = dao.getlistProductAdViewCountASC(begin,end);
							break;
						}
						case 5: {
							productAd = dao.getlistProductAdInsertDateDESC(begin,end);
							break;
						}
						default:{
							productAd = dao.listProduct(select, begin, end);
							break;
						}
						
					}
						int totalCount = dao.getProductCount(search);
						
					// 페이징 번호 생성
						String url = "productAd?&currentPage=";
						String result = PageService.printPage(url, totalCount, pageBlock, currentPage);
					
						model.addAttribute("result", result);
						
						return productAd;
				}
// 9.상품 삭제				
				public String deleteProductProc(int productNo) {
					ProductDTO dto = dao.getProductcontent(productNo);
					String msg = null;
					String fileSaveDirectory = "D:\\Wonsun\\java\\Sun_WorkSpace_Spring_Boot\\project\\src\\main\\resources\\static\\images\\"+dto.getUserId();
					
					String fullPath = fileSaveDirectory + "\\" + dto.getFileName();
					
					if(fullPath != null) {
					// 파일 객체 선언
						File f = new File(fullPath);
					// 해당 파일이 존재하면 삭제	
						if(f.exists()==true) {
							f.delete();
						}
						
					int res = dao.deleteProductProc(productNo);
					
					if(res > 0) {
						msg = "상품 삭제가 완료됐습니다!";
					}
					else {
						msg = "상품 삭제 중 문제가 발생했습니다!";
					}
				}
					return msg;
			}
// 10.상품 수정

				public ProductDTO updateProduct(int productNo) {
					ProductDTO product = dao.getProductcontent(productNo);
					return product;
				}

				public String updateProductProc(Model model, MultipartHttpServletRequest multi) {
					
					DecimalFormat df = new DecimalFormat("###,###");
					ProductDTO dto = new ProductDTO();
					String category = null;
					String msg = null;
					
						int depth3Id = Integer.parseInt(multi.getParameter("select_depth3"));
						int depth2Id = Integer.parseInt(multi.getParameter("select_depth2"));	
					
					// 수정
					if(depth3Id==0) {
						
						category = dao.getCategoryName(depth2Id);
						dto.setCategory(category);
						dto.setCategoryId(depth2Id);
					}else {
						category = dao.getCategoryName(depth3Id);
						dto.setCategory(category);
						dto.setCategoryId(depth3Id);
					}
					
					
					String shopId = multi.getParameter("shopId");
					
					
					int productNo = Integer.parseInt(multi.getParameter("productNo"));
					String userId = (String)multi.getParameter("userId");
					
					int productCount = Integer.parseInt(multi.getParameter("productCount"));
					String productName = multi.getParameter("productName");
					
					int price = Integer.parseInt(multi.getParameter("price"));
					
					String priceOutput = df.format(price);
					
					String productContent = multi.getParameter("productContent");
					
					
					String productSize = multi.getParameter("productSize");
					String productCondition = multi.getParameter("productCondition");
					
					int delCharge = Integer.parseInt(multi.getParameter("delCharge"));
					String delChargeOutput = df.format(delCharge);
					
					dto.setProductNo(productNo);
					dto.setProductSize(productSize);
					dto.setUserId(userId);
					dto.setProductCount(productCount);
					dto.setProductName(productName);
					dto.setPrice(price);
					dto.setPriceOutput(priceOutput);
					dto.setSellLocation(shopId);
					dto.setProductContent(productContent);
					dto.setProductCondition(productCondition);
					dto.setDelCharge(delCharge);
					dto.setDelChargeOutput(delChargeOutput);
					// 파일 업로드
						// 1. 페이지에서 업로드 된 파일을 가져옴
							MultipartFile file =  multi.getFile("upFile"); // 페이지에서 사용한 parameter값 그대로 입력
							SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
					
						// 2. 파일의 이름 설정
								if(file.getSize() != 0) {
								sdf = new SimpleDateFormat("yyyyMMddHHmmss-");
								String fileTime = sdf.format(new Date()); 
					
								String fileName = file.getOriginalFilename();
								
							// 확장자 제한
								// 주소의 뒤에서부터 .을 찾아서 확장자를 잘라와서 저장
									// +1을 해주면 .까지 잘라서 확장자만 찾아올 수 있음
									
									String suffix = fileName.substring(fileName.lastIndexOf(".")+1, fileName.length());
									if(suffix.equals("exe")) {
										msg = "업로드 할 수 없는 확장자 입니다.";
										return msg;
										}
									if(suffix.equals("java")) {
										msg = "업로드 할 수 없는 확장자 입니다.";
										return msg;
										}			
								
						// 3.파일의 저장 경로
								// 업로드 사용자 아이디별 폴더를 생성해 관리
									String fileSaveDirectory = "D:\\Wonsun\\java\\Sun_WorkSpace_Spring_Boot\\project\\src\\main\\resources\\static\\images\\" + userId;  
								// 저장 경로를 가르키는 File f선언	
									File f= new File(fileSaveDirectory);
									
								// 해당 (아이디)경로에 폴더가 존재하는지 확인	
									if(f.exists()==false) {  
									// 해당 폴더를 생성	
										f.mkdir(); 		
										}
						// 4.저장 경로 완성	
							String fullPath = fileSaveDirectory + "\\" + fileTime + fileName;			
							// 경로를 활용해 File 객체로 생성	
								f= new File(fullPath);
									try {
						// 5. 해당 경로로 f의 이름으로 파일 저장(이동), transfer는 파일을 이동시키는 기능		
										file.transferTo(f); 
									}
									catch(Exception e) {
										e.printStackTrace();
										dto.setFileName("");
										}
									String saveFileName= fileTime + fileName;
									dto.setFileName(saveFileName);
									}
								else {
									ProductDTO Pdto = dao.getProductcontent(productNo);
									String saveFileName = Pdto.getFileName();
									
									dto.setFileName(saveFileName);
								}
								
								int res = dao.updateProductProc(dto);
								
								if(res > 0) {
									msg = "상품 수정이 완료됐습니다!";
									return msg;
								}
								else {
									msg = "상품 수정에 실패했습니다. 관리자에게 문의해주세요";
									return msg;
								}
							}


				public List<ProductDTO> listProductView(String sellState) {
					List<ProductDTO> productsView = new ArrayList<ProductDTO>();
					
						int begin = 1;
						int end = 10;
						
					
					
						if(sellState == null || sellState.isEmpty()||sellState.equals("all")) {
							sellState = "all";
						}else {
							sellState = "sellProduct";
						}
					
						
						 System.out.println("sellSate의 값은 : " + sellState);
						productsView = dao.listProductView(sellState, begin, end);
					
						
					
					return productsView;
				}

// 11.상품 검색 리스트
				public List<ProductDTO> listProductSearch(String search, String userId, Model model, String cp) {
					List<ProductDTO> products = new ArrayList<ProductDTO>();
					int totalCount = dao.getProductCount(search);
					
					int currentPage = 1;
					try{
						currentPage = Integer.parseInt(cp);
					}catch(Exception e){
						currentPage = 1;
					}
					
					int pageBlock = 5; // 한 페이지에 보일 데이터의 수 
					int end = pageBlock * currentPage; // 테이블에서 가져올 마지막 행번호
					int begin = end - pageBlock + 1; 
					
					if(search == null || search.isEmpty()) {
						return products;
					}
					products = dao.getlistProductSearch(search, userId, begin, end);

					String url = "productSearch?&currentPage=";
					String result = PageService.printPage(url, totalCount, pageBlock, currentPage);
					
					model.addAttribute("result", result);
					
					return products;
				}

// 12.상품 결제
				//지도생성용
				public String getAddress(int productNo) {
					String address = dao.getAddress(productNo);
					return address;
				}
				//결제용
				public MemberDTO memberInfo(String userId) {
					MemberDTO member = daoM.login(userId);
					return member;
				}

				public int list(OrderDTO order) {
					int result = dao.order(order);
					return result;
				}

				public void sellState(int res, int productNo) {
					dao.sellState(res,productNo);
					
				}
				
				public List<OrderDTO> orderList(String tab, String search, String cp, Model model, String userName, String userId) {
					int currentPage = 1;
					try{
						currentPage = Integer.parseInt(cp);
					}catch(Exception e){
						currentPage = 1;
					}
					if (search == null)
						search = "search";
					
					int pageBlock = 3; // 한 페이지에 보일 데이터의 수 
					int end = pageBlock * currentPage; // 테이블에서 가져올 마지막 행번호
					int begin = end - pageBlock + 1; // 테이블에서 가져올 시작 행번호
					
					List<OrderDTO> orders = dao.OrderList(begin, end, tab, search,userName);
					
					int totalCount = dao.orderTotalCount(tab, search, userName);
					if(totalCount == 0) {
						return orders;
					}
					
					return orders;
				}
// 13. 가맹점 정보
				
				public List<ShopDTO> offShop(Model model) {
					List<ShopDTO> shop = dao.offShop();
					return shop;
				}

				public ShopDTO offShopInfo(int shopId) {
					ShopDTO shop = dao.offShopInfo(shopId);
					return shop;
				}

}
