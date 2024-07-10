package com.care.project.product;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;


@Mapper
public interface IProductMapper {

	List<CategoryDTO> cateList(int select);

	List<CategoryDTO> cateList_d1(String catePath);

	List<CategoryDTO> cateList_d2(String catePath);

	String getCategoryName(@Param("categoryId") int depth2Id);

	List<CategoryDTO> cateReset(int select);
	
	List<CategoryDTO> cateListAd(String path);

	List<CategoryDTO> cateListAd_default();

	CategoryDTO getCategory(@Param("categoryId") int categoryId);

	int getCategoryNextId();

	String getCatePath(@Param("categoryId") int select);

	int insertCategoryProc(CategoryDTO dto);
	
	int updateCategoryProc(CategoryDTO cdto);

	int deleteCategory(@Param("categoryId") int categoryId_int);
	
	int[] getCategoryId_depth0(@Param("path") String path);
	
	int[] getCategoryId_depth1(@Param("path") String catePath);
	
	
	
	int insertProduct(ProductDTO dto);
	
	ProductDTO getProduct(@Param("categoryId")int i, @Param("productNo") int j);

	ProductDTO getProductcontent(@Param("productNo")int productNo);

	int getProductCount(@Param("search")String search);
	
	List<ProductDTO> listProduct(@Param("select")String select, @Param("begin")int begin, @Param("end")int end);

	List<ProductDTO> getlistProductAdPriceDESC(@Param("begin")int begin, @Param("end")int end);

	List<ProductDTO> getlistProductAdPriceASC(@Param("begin")int begin, @Param("end")int end);

	List<ProductDTO> getlistProductAdViewCountDESC(@Param("begin")int begin, @Param("end")int end);

	List<ProductDTO> getlistProductAdViewCountASC(@Param("begin")int begin, @Param("end")int end);

	List<ProductDTO> getlistProductAdInsertDateDESC(@Param("begin")int begin, @Param("end")int end);

	int deleteProductProc(int productNo);

	void plusViewCount(int productNo);

	int updateProductProc(ProductDTO dto);

	List<ProductDTO> listProductView(@Param("sellState")String sellState, @Param("begin")int begin, @Param("end")int end);

	List<ProductDTO> getlistProductSearch(@Param("search")String search, @Param("userId")String userId, 
										  @Param("begin")int begin, @Param("end")int end);



	String getAddress(@Param("productNo")int productNo);

	int order(OrderDTO order);

	void sellState(@Param("res")int res, @Param("productNo")int productNo);

	ArrayList<OrderDTO> OrderList(@Param("begin")int begin, @Param("end")int end, 
								  @Param("tab")String tab, @Param("search")String search, 
								  @Param("userName")String userName);
	
	int orderTotalCount(@Param("tab")String tab, @Param("search")String search, @Param("userName")String userName);

	List<ProductDTO> sellers(@Param("begin")int begin, @Param("end")int end,
							 @Param("tab")String tab, @Param("search")String search, 
							 @Param("userName")String userName);

	List<ProductDTO> listSellProduct(@Param("select")String select, @Param("begin")int begin, @Param("end")int end);

	String getSellCatePath(int categoryId);

	int[] getSellCategoryId_depth0(String path);
	
	ShopDTO offShopInfo(@Param("shopId")int shopId);

	List<ShopDTO> offShop();
	
}
