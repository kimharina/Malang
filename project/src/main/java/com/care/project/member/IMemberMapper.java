package com.care.project.member;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.care.project.product.OrderDTO;
import com.care.project.product.ProductDTO;

@Mapper
public interface IMemberMapper {

	int certificationProc(MemberDTO member);

	MemberDTO login(String userId);

	int deleteProc(String userId);

	int certificationKakao(MemberDTO member);
	
	MemberDTO checkPhone(String mobile);

	int updateProc(MemberDTO member);

	String searchId(MemberDTO member);

	String searchPw(MemberDTO member);

	int changePw(MemberDTO member);

	
	int totalCount(String userId, String tab, String categoryId, String search);

	
	
	int getUserProductCount(String userId);

	ProductDTO getUserProduct(@Param("categoryId")int i, @Param("productNo")int j, @Param("userId")String userId);

	
	ProductDTO getlikeProduct_cate(@Param("categoryId")int i, @Param("productNo")int j);

	ProductDTO getlikeProduct(@Param("productNo")int i, @Param("begin")int begin, @Param("end")int end);
	

	
	List<ProductDTO> productForm(@Param("begin")int begin, @Param("end")int end, @Param("userId")String userId);

	List<ProductDTO> productForm_priceDESC(@Param("begin")int begin, @Param("end")int end, String userId);

	List<ProductDTO> productForm_priceASC(@Param("begin")int begin, @Param("end")int end, String userId);
	
	

	void deleteProductDB_demo();

	void insertProductDB_demo(ProductDTO pdto);

	List<ProductDTO> listProductDB_demo(@Param("begin")int begin, @Param("end")int end);

	int productDB_demoCount();

	List<ProductDTO> listProductDB_demoASC(@Param("begin")int begin, @Param("end")int end);

	List<ProductDTO> listProductDB_demoDESC(@Param("begin")int begin, @Param("end")int end);

	OrderDTO receipt(@Param("productNo")int productNo);

	MemberDTO checkUserName(String userName);

}












