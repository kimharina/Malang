<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../top.jsp"%>

<style>
.blank {
	margin: 180px 0 60px 0;
}

.shopImg {
    border-radius: 10.8606px;
    width: 500px;
    height: 300px;
    cursor: pointer;
}

.shopGrid {
    max-width: 1200px;
    margin: 0px auto 134px;
    display: grid;
    gap: 0px 20px;
    grid-template-columns: auto auto;
}




</style>

<div class="sc-fd346fa1-0 lxqZT">
	<div class="sc-c7615759-0 gjGxKQ">
		<div class="sc-c7615759-4 cQzQGk">오프라인 매장</div>
	</div>
	<div>
		<div class="infinite-scroll-component "
			style="height: auto; overflow: auto; -webkit-overflow-scrolling: touch">
			<div class="shopGrid">
				<c:forEach var="shop" items="${shop}">
					<div>
						<div class="sc-b9638ad6-0 hhEOsx">
							
								<div class="sc-b9638ad6-1 czGrtX">
								<a href="offShopInfo?shopId=${shop.shopId}">
									<img src="/photo/${shop.shopId}.jpg"
										class="shopImg" onclick="location.href='offShopInfo?shopId=${shop.shopId}'">
									</a>
									<div class="sc-b9638ad6-3 dHfgRI">${shop.address}</div>
									<div class="sc-b9638ad6-4 ebHPCv">${shop.shopName}</div>
									<div class="sc-b9638ad6-5 gmycRP">영업시간: AM 10:00 ~ PM 20:00</div>
									<div class="sc-b9638ad6-9 ccYUxb">
										<div class="sc-b9638ad6-10 kJDoFV">Tel. ${shop.shopTel}</div>
									</div>
								</div>
								<div class="blank"></div>
							</div>
					</div>

				</c:forEach>

		</div>
	</div>
</div>
</div>

<%@ include file="../bottom.jsp"%>