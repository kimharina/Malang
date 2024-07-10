<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../top.jsp" %>

<style>
.blank {
	margin: 180px 0 60px 0;
}
</style>

<!-- index.jsp -->
<div class="sc-453f21de-1 jaUjww">
<div class="sc-c965cce8-0 cCHXXw">
</div>
</div>

<div class="sc-fd346fa1-0 lxqZT">
	<div class="sc-c7615759-0 gjGxKQ">
	
	<c:if test="${not empty products }">
			<div class="sc-c7615759-4 cQzQGk">상품 검색 결과 입니다.</div>
		</c:if>
		<c:if test="${empty products }">
			<div class="sc-c7615759-4 cQzQGk">검색된 결과가 없습니다</div>	
		</c:if>
	</div>
	<div>
		<div class="infinite-scroll-component "
			style="height: auto; overflow: auto; -webkit-overflow-scrolling: touch">
			<div class="sc-d2804428-0 cIgQrd">
				<c:forEach var="product" items="${products}">
					<div>
						<div class="sc-b9638ad6-0 hhEOsx">
							
								<div class="sc-b9638ad6-1 czGrtX">
								<a href="productContent?productNo=${product.productNo}">
									<img src="/images/${product.userId}/${product.fileName}"
										class="sc-b34a2ec2-0 bOxxOH" onclick="location.href='productContent?productNo=${product.productNo}'">
									</a>
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
</div>
<c:if test="${not empty products }">
<div align="center">
				${result}
			</div>
</c:if>
	
<%@ include file="../bottom.jsp" %>

