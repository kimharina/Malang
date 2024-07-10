<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../top.jsp" %>
<style>
	th, td {
		padding: 20px;
    }
    
    .blank {
	margin: 180px 0 60px 0;
	}
</style>
					
						<div class="sc-10c0be0-0 iSNjUC">
						<div class="sc-19b856df-0 iInHaG">
								<div class="sc-678b85bd-1 kQQofr"></div>
								<div class="sc-678b85bd-1 kQQofr"></div>
								<div class="sc-678b85bd-1 kQQofr"></div>
								<div class="sc-678b85bd-1 kQQofr"></div>
								<div class="sc-678b85bd-1 kQQofr"></div>
								<div class="sc-678b85bd-1 kQQofr"></div>
								<div class="sc-678b85bd-1 kQQofr"></div>
								<div class="sc-678b85bd-1 kQQofr"></div>
							<div class="sc-678b85bd-1 kQQofr"></div>
							
								
						
								
								
								<div class="sc-fd346fa1-0 lxqZT">
	<div class="sc-c7615759-0 gjGxKQ">
	<c:forEach var="category" items="${categorys }">
		<a href="cate?select=${category.categoryId }">${category.name }</a>	&nbsp;&nbsp;&nbsp;&nbsp;		
	</c:forEach>
	</div>								
	<div class="sc-c7615759-0 gjGxKQ">
		<div class="sc-c7615759-4 cQzQGk"> 
		<c:if test="${not empty product.category}">
		${product.category}의 인기 상품을 추천해드려요👀
		</c:if>
		</div>
		<c:if test="${not empty products }">
		<div class="sc-c7615759-4 cQzQGk"> 
		인기 상품을 추천해드려요👀 </div>
		</c:if>
		<c:if test="${empty products }">
		<div class="sc-c7615759-4 cQzQGk">등록된 상품이 없습니다! 첫 상품의 등록의 주인공이 되어주세요!</div>	
		</c:if>
	</div>
	
	<c:if test="${not empty products }">	
	<div>
		<div class="infinite-scroll-component "
			style="height: auto; overflow: auto; -webkit-overflow-scrolling: touch">
			<div class="sc-d2804428-0 cIgQrd">
				<c:forEach var="product" items="${products}">
					<div>
						<div class="sc-b9638ad6-0 hhEOsx">
							
								<div class="sc-b9638ad6-1 czGrtX">
									<img src="/images/${product.userId}/${product.fileName}"
										class="sc-b34a2ec2-0 bOxxOH" onclick="location.href='productContent?productNo=${product.productNo}'">
									<!--<img src="C:\javas\project_workspace\project\src\main\webapp\images\'${product.userId}'\'${product.fileName}'" class="sc-b34a2ec2-0 bOxxOH"> -->
									<div class="sc-b9638ad6-3 dHfgRI">${product.category}</div>
									<div class="sc-b9638ad6-4 ebHPCv">${product.priceOutput}</div>
									<div class="sc-b9638ad6-5 gmycRP">${product.productName}</div>
									<div class="sc-b9638ad6-9 ccYUxb">
										<div class="sc-b9638ad6-10 kJDoFV">${product.productSize}</div>
									</div>
									<div class="sc-b9638ad6-8 eNqiTZ">${product.insertDate}</div>
								</div>
								<div class="blank"></div>
							</div>
					</div>
				</c:forEach>
			</div>		
		</div>
	</div>
</c:if>
	
</div>			
	</div>
</div>
<c:if test="${not empty products }">
<div align="center">
				${result}
			</div>
</c:if>			
<%@ include file="../bottom.jsp" %>