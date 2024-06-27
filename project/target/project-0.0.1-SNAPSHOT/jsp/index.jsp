<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="top.jsp" %>

<style>
.blank {
	margin: 180px 0 60px 0;
}

.soldout {
	-webkit-letter-spacing: 0px;
	-moz-letter-spacing: 0px;
	-ms-letter-spacing: 0px;
	letter-spacing: 0px;
	font-weight: 500;
	font-size: 0.875rem;
	font-family: Pretendard Variable;
	line-height: 100%;
	color: #ffff;
	max-width: 194px;
	width: -webkit-fit-content;
	width: -moz-fit-content;
	width: fit-content;
	line-height: 14px;
	padding: 6px 8px;
	border-radius: 4px;
	margin: 12px 0 4px 0;
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
	background: #B93C3C;
}

</style>

<!-- index.jsp -->
<div class="sc-453f21de-1 jaUjww">
<div class="sc-c965cce8-0 cCHXXw">
	<div class="sc-c965cce8-2 ufBpS">
		<a href="index?sellState=sellProduct"><img src="/icon/soldOut.png" alt="판매완료 아이콘" class="sc-c965cce8-3 cloNtw"></a>
		<div class="sc-c965cce8-4 iRXRoK">판매중인 상품만 보기</div>
	</div>
</div>
</div>

<div class="sc-fd346fa1-0 lxqZT">
	<div class="sc-c7615759-0 gjGxKQ">
		<div class="sc-c7615759-4 cQzQGk">인기 상품을 추천해드려요👀</div>
	</div>
	<div>
		<div class="infinite-scroll-component "
			style="height: auto; overflow: auto; -webkit-overflow-scrolling: touch">
			<div class="sc-d2804428-0 cIgQrd">
				<c:forEach var="productView" items="${productsView}">
					<div>
						<div class="sc-b9638ad6-0 hhEOsx">
							
								<div class="sc-b9638ad6-1 czGrtX">
								<a href="productContent?productNo=${productView.productNo}">
									<img src="/images/${productView.userId}/${productView.fileName}"
										class="sc-b34a2ec2-0 bOxxOH" onclick="location.href='productContent?productNo=${product.productNo}'">
									</a>
									<div class="sc-b9638ad6-3 dHfgRI">${productView.category}</div>
									<c:if test="${productView.sellState == 1}">
										<div class="soldout">판매완료</div>
									</c:if>
									<div class="sc-b9638ad6-4 ebHPCv">${productView.priceOutput}</div>
									<div class="sc-b9638ad6-5 gmycRP">${productView.productName}</div>
									<div class="sc-b9638ad6-9 ccYUxb">
										<div class="sc-b9638ad6-10 kJDoFV">${productView.productSize}</div>
									</div>
									<div class="sc-b9638ad6-8 eNqiTZ">${productView.insertDate}</div>
								</div>
								<div class="blank"></div>

							</div>

					</div>

				</c:forEach>
			</div>
		</div>
		
	</div>
</div>


<div class="sc-fd346fa1-0 lxqZT">
	<div class="sc-c7615759-0 gjGxKQ">
		<div class="sc-c7615759-4 cQzQGk">최근 등록 상품을 추천해드려요👀</div>
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
									<img src="/images/${product.userId}/${product.fileName}" class="sc-b34a2ec2-0 bOxxOH">
									</a>
									<div class="sc-b9638ad6-3 dHfgRI">${product.category}</div>
									<c:if test="${product.sellState == 1}">
										<div class="soldout">판매완료</div>
									</c:if>
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
	
<%@ include file="bottom.jsp" %>

