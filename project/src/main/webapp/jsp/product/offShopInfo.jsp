<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../top.jsp"%>

<style>
.shop {
	font-weight: 700;
	font-size: 2.55rem;
	font-family: "Pretendard Variable";
	line-height: 140%;
	text-align: center;
	margin-top: 80px;
	margin-bottom: 60px;
}

.shopImg {
	text-align: center;
	margin-top: 30px;
	transform: translate()
}

.shopImg img {
	width: 70%;
	height: 60%;
}

.middle {
	display: flex;
	align-items: center;
	justify-content: center;
	left-padding: 20px;
}

.left-content {
	margin: 100px;
}

.right-content {
	margin: 100px;
}

.blank {
	margin: 280px 0 60px 0;
}

.address, .phone, .time {
	letter-spacing: -0.4px;
	font-weight: 700;
	font-size: 1.625rem;
	font-family: "Pretendard Variable";
	line-height: 133%;
	color: rgb(51, 61, 75);
	margin-bottom: 30px;
}

.detailAddress, .phoneNumber, .sub_time {
	letter-spacing: -0.2px;
	font-weight: 500;
	font-size: 1.3rem;
	font-family: "Pretendard Variable";
	line-height: 134%;
	color: rgb(25, 31, 40);
	margin-bottom: 12px;
}

.map {
	display: flex;
	justify-content: center;
	text-align: center;
	border-radius
}
</style>




<div class="top-content">
	<div class="shop">${shop.shopName}</div>
	<div class="shopImg">
		<img src="/photo/${shop.shopId}.jpg">
	</div>
</div>




<div class="middle">
	<div class="left-content">
		<div class="address">주소</div>
		<div class="detailAddress">${shop.address}</div>
		<br> <br> <br>
		<div class="phone">전화번호</div>
		<div class="phoneNumber">${shop.shopTel}</div>
	</div>

	<div class="right-content">
		<div class="time">매장 운영 시간</div>
		<div class="sub_time">월 &emsp;&emsp;AM 10:00 ~ PM 20:00</div>
		<div class="sub_time">화 &emsp;&emsp;AM 10:00 ~ PM 20:00</div>
		<div class="sub_time">수 &emsp;&emsp;AM 10:00 ~ PM 20:00</div>
		<div class="sub_time">목 &emsp;&emsp;AM 10:00 ~ PM 20:00</div>
		<div class="sub_time">금 &emsp;&emsp;AM 10:00 ~ PM 20:00</div>
		<div class="sub_time">토 &emsp;&emsp;AM 10:00 ~ PM 20:00</div>
		<div class="sub_time">일 &emsp;&emsp;AM 10:00 ~ PM 20:00</div>
	</div>
</div>




<div class=bottom align="center">
    <div class=address>매장 위치</div>
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







<%@ include file="../bottom.jsp"%>