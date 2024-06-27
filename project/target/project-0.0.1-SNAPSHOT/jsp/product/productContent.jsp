<%@page import="java.io.OutputStream"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="../top.jsp"%>


<style>
.blank {
	margin: 120px 0 60px 0;
}

table {
	width: 50%;
	height: 200px;
}

.imgSize {
	border-radius: 10.8606px;
	width: 500px;
	height: 700px;
	object-fit: cover;
}

th {
	font-size: 25px;
}

.iAKDCP {
	-webkit-letter-spacing: -0.4px;
	-moz-letter-spacing: -0.4px;
	-ms-letter-spacing: -0.4px;
	letter-spacing: -0.4px;
	font-weight: 800;
	font-size: 1.123rem;
	font-family: Pretendard Variable;
	cursor: pointer;
	color: #191F28;
	pointer-events: all;
	-webkit-text-decoration-line: underline;
	text-decoration-line: underline;
	text-align: left;
}

.anGk {
	letter-spacing: 0px;
	font-weight: 600;
	font-size: 1.5rem;
	font-family: "Pretendard Variable";
	line-height: 133%;
	margin: 12px 0px 20px;
	color: rgb(25, 31, 40);
	text-align: left;
}

.cbDeMP {
	letter-spacing: 0px;
	font-weight: 800;
	font-size: 1.75rem;
	font-family: "Pretendard Variable";
	line-height: 140%;
	color: rgb(25, 31, 40);
	text-align: left;
}

.cZQeWE {
	letter-spacing: 0px;
	font-weight: 600;
	font-size: 0.875rem;
	font-family: "Pretendard Variable";
	line-height: 100%;
	display: flex;
	padding: 11px;
	margin-right: 7.2px;
	border-radius: 7.2px;
	border: 1.4px solid rgb(246, 248, 249);
	pointer-events: all;
	background: rgb(246, 248, 249);
	color: rgb(139, 149, 161);
	cursor: default;
}

.zeUou {
	letter-spacing: 0px;
	font-weight: 700;
	font-size: 1rem;
	font-family: "Pretendard Variable";
	line-height: 100%;
	color: rgb(255, 255, 255);
	margin: auto 0px;
	display: flex;
	border-radius: 8px;
	-webkit-box-pack: center;
	justify-content: center;
	width: 58%;
	background: rgb(52, 58, 63);
	cursor: pointer;
	padding: 20px 0px;
	margin-left: 6px;
}

.iqBIUM {
	letter-spacing: -0.4px;
	font-weight: 400;
	font-size: 0.938rem;
	font-family: "Pretendard Variable";
	line-height: 160%;
	color: rgb(78, 89, 104);
	text-align: left;
	margin-bottom: 200px;
	margin-top: 200px;
}

.bNEDSr {
	display: flex;
	padding: 16px;
	border-radius: 8px;
	margin-bottom: 15px;
	background: rgb(245, 249, 254);
	-webkit-box-align: center;
	align-items: center;
	text-align: left;
	font-weight: 700;
	font-size: 1.238rem;
	font-family: "Pretendard Variable";
}

.eFXDbm {
	letter-spacing: -0.2px;
	font-weight: 700;
	font-size: 1rem;
	font-family: "Pretendard Variable";
	line-height: 134%;
	color: rgb(25, 31, 40);
	margin-bottom: 12px;
	text-align: left;
}

.eFXDm {
	letter-spacing: -0.2px;
	font-weight: 700;
	font-size: 1.5rem;
	font-family: "Pretendard Variable";
	line-height: 134%;
	color: rgb(25, 31, 40);
	margin-bottom: 8px;
	text-align: center;
}

button {
	text-size: 25px;
	text-align: "cetner" letter-spacing: 0px;
	font-weight: 600;
	font-size: 0.875rem;
	font-family: "Pretendard Variable";
	line-height: 100%;
	display: flex;
	padding: 11px;
	margin-right: 7.2px;
	border-radius: 7.2px;
	border: 1.4px solid rgb(0, 190, 204);
	pointer-events: all;
	background: rgb(255, 255, 255);
	color: rgb(0, 190, 204);
	cursor: pointer;
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

<script type="text/javascript">
		var xhr;
		// 데이터 전달 처리		
			function heartPlus(){			
		// 1.XMLHttpRequest 객체를 사용해서 DB로 전달
			xhr = new XMLHttpRequest(); 
		// 2.open method를 이용해 요청 방식과 경로 지정	
			xhr.open("post", "heartPlus")	
			xhr.send("${product.productNo}");  
			xhr.onreadystatechange = resProc_heartPlus;			
		}	
		// 데이터 응답 처리
			function resProc_heartPlus() {
		// 5.정상적인 응답인지 확인
				if(xhr.readyState == 4 && xhr.status == 200){
				// var resData = JSON.parse(xhr.responseText);
				var resultData = "";
				resultData += "<a onclick=heartMinus()>";	 	
				resultData += "<img src=/icon/heart.png class='sc-c965cce8-3 cloNtw'/>";	 	
				resultData += "</a>"; 
			
				document.getElementById('heart').innerHTML = resultData;
				}				
		}
	</script>

<script type="text/javascript">
		var xhr;
		// 데이터 전달 처리		
			function heartMinus(){			
		// 1.XMLHttpRequest 객체를 사용해서 DB로 전달
			xhr = new XMLHttpRequest(); 
		// 2.open method를 이용해 요청 방식과 경로 지정	
			xhr.open("post", "heartMinus")
		// 3.입력 받은 값을 꺼내와 send로 전송	
			xhr.send("${product.productNo}");  
		// 4.서버로부터 반환받은 응답 처리 지정
			xhr.onreadystatechange = resProc_heartMinus;
						
		}	
					
		// 데이터 응답 처리
			function resProc_heartMinus() {
		// 5.정상적인 응답인지 확인
				if(xhr.readyState == 4 && xhr.status == 200){
				// var resData = JSON.parse(xhr.responseText);
				var resultData = "";
				resultData += "<a onclick=heartPlus()>";	 	
				resultData += "<img src=/icon/heart_empty.png class='sc-c965cce8-3 cloNtw'/>";	 	
				resultData += "</a>"; 
			
				document.getElementById('heart').innerHTML = resultData;
				
				}	
			
		}
	</script>
<script type="text/javascript">
	function loginCheck(){
		 alert("로그인 후 이용가능한 서비스 입니다!");
	    return;
	}
</script>

<div class="blank"></div>
<div align="center">
	<h1>상품 내용</h1>
	<table>
		<tr>
			<th class="sc-9cc45f0-1 iAKDCP">상품번호 : ${product.productNo} |
				조회수 : ${product.viewCount}</th>

			<th rowspan="10" width="30"></th>
			<th class="sc-9cc45f0-1 iAKDCP">${product.category}</th>
		</tr>
		<tr>
			<th rowspan="10" width="100"><img
				src="/images/${product.userId}/${product.fileName}" class="imgSize"></th>
			<th class="sc-9cc45f0-2 anGk">${product.productName}</th>
		</tr>
		<tr>
			<th class="sc-9cc45f0-3 cbDeMP">${product.priceOutput}원</th>
			<c:if test="${product.sellState == 1}">
			<th>
				<div class="soldout">판매완료</div>
			</th>
			</c:if>
		</tr>
		
		<tr>
			<th class="sc-efa6743b-5 cZQeWE">${product.productCondition}</th>
		</tr>
		<tr>
			<th class="sc-514d46a5-4 zeUou" color="#ffffff">
				<c:if test="${product.sellState == 0}">
				<a href="order?productNo=${product.productNo}">결제하기</a>
				</c:if>	
				<c:if test="${product.sellState == 1}">
				품절
				</c:if>
			</th>
			<th id="heart"><c:if test="${empty heart}">
					<a onclick="heartPlus()"> <c:if
							test="${empty sessionScope.userId}">
							<a onclick="loginCheck()">
						</c:if> <img src="/icon/heart_empty.png" alt="빈 하트"
						class="sc-c965cce8-3 cloNtw" />
					</a>
				</c:if> <c:if test="${not empty heart}">
					<a onclick="heartMinus()"> <img src="/icon/heart.png" alt="하트"
						class="sc-c965cce8-3 cloNtw" />
					</a>
				</c:if></th>

		</tr>
		<tr>
			<th class="sc-9a3d0f9d-1 iqBIUM">${product.productContent}</th>
		</tr>

		<tr>
			<th class="sc-5181767d-1 eFXDbm">배송정보</th>
		</tr>
		<th class="sc-5181767d-2 bNEDSr"><img
			src="/icon/img_delivery_fee.png" width=50 height=40>&emsp;배송비&emsp;${product.delChargeOutput}원</th>
	</table>


	<div class="blank"></div>
	<div align="center">
		<div class="eFXDm">판매 지점 : ${location.shopName}</div>
		<br> <br>
		<div class="eFXDm">주소 : ${location.address}</div>
		<br> <br>
		<script type="text/javascript" src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=257b6e33803ccf3d7e6cf1636973e209&libraries=services"></script>
    <div id="map" style="width: 40%; height: 350px;"></div>
    <%
    String addr = (String) session.getAttribute("addr"); // JSP에서 addr 값을 가져옴
    %>
    <script>
        var mapContainer = document.getElementById('map');
        var mapOption = {
            center: new kakao.maps.LatLng(33.450701, 126.570667),
            level: 4
        };
        var map = new kakao.maps.Map(mapContainer, mapOption);

        var geocoder = new window.kakao.maps.services.Geocoder();
        geocoder.addressSearch("<%=addr%>", function(result, status) {
            if (status === window.kakao.maps.services.Status.OK) {
                var currentPos = new window.kakao.maps.LatLng(result[0].y, result[0].x);

                // 마커의 위치를 설정
                var markerPosition = currentPos;

                map.panTo(currentPos);

                // 마커를 생성하고 지도에 추가
                var marker = new kakao.maps.Marker({
                    position: markerPosition
                });
                marker.setMap(map); // 마커가 지도 위에 표시되도록 설정합니다
            }
        });
    </script>
	</div>
	<div class="blank"></div>

	<div text-aign=center>
		<button type="button" color="#ffffff" onclick="history.back();">상품목록</button>
	</div>

</div>
</div>
<%@ include file="../bottom.jsp"%>
