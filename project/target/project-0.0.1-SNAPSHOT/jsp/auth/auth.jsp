<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.security.SecureRandom" %>
<%@ page import="java.math.BigInteger" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charSet="utf-8" />
<link rel="stylesheet" as="style" crossorigin="true"
	href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.8/dist/web/variable/pretendardvariable.css" />
<title>세컨웨어 - 현명한 사람들의 패션 중고거래, 구 헬로마켓</title>
<meta name="description"
	content="세컨웨어에서 빈티지부터 명품까지 모든 패션 브랜드 상품을 더욱 편리하게 거래하세요." />
<meta name="keywords"
	content="세컨웨어는 누구나 사고 팔 수 있는 가장 쉽고 안전한 개인간 비대면 중고거래 마켓 입니다. 안 쓰는 물건, 중고물건은 누구나 거래할 수 있으며 특히 물물교환과 무료나눔이 많은 중고장터 입니다. 전국에서 등록되는 다양한 중고물건을 직거래 없이 편의점택배와 방문택배를 예약해 택배거래 할 수 있고, 안전결제 에스크로 안전거래서비스를 통해 사기 걱정없는 비대면 중고거래를 할 수 있습니다. 더치트 조회 필요없는 안전한 비대면 중고거래 사이트 세컨웨어에서 언택트 시대에 적합한 미니멀라이프를 실천해보세요." />
<meta name="facebook-domain-verification"
	content="yzz1lh715ctoxll7opsu7ypl0g3ytx" />
<meta name="NaverBot" content="index,follow" />
<meta name="Yeti" content="index,follow" />
<meta name="robots" content="index,follow" />
<meta property="og:title" content="세컨웨어 - 현명한 사람들의 패션 중고거래, 구 헬로마켓" />
<meta property="og:description"
	content="세컨웨어에서 빈티지부터 명품까지 모든 패션 브랜드 상품을 더욱 편리하게 거래하세요." />
<meta property="og:url" content="https://www.hellomarket.com" />
<meta property="og:image"
	content="https://ccimage.hellomarket.com/img/common/logo/shared_secondwear.png" />
<meta property="og:type" content="website" />
<meta property="og:locale" content="ko_KR" />
<meta property="og:site_name" content="세컨웨어" />
<meta name="copyright"
	content="Copyright ⓒ 2011 HelloMarket Inc. All Rights Reserved." />
<meta name="twitter:title" content="세컨웨어 - 현명한 사람들의 패션 중고거래, 구 헬로마켓" />
<meta name="twitter:description"
	content="세컨웨어에서 빈티지부터 명품까지 모든 패션 브랜드 상품을 더욱 편리하게 거래하세요." />
<meta name="twitter:image"
	content="https://ccimage.hellomarket.com/img/common/logo/shared_secondwear.png" />
<meta name="twitter:card" content="summary" />
<meta name="twitter:site" content="@hellomarket" />
<meta name="twitter:creator" content="hellomarket" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta property="fb:pages" content="126845860730781" />
<meta property="business:contact_data:street_address"
	content="서울 중구 을지로 264, 12층" />
<meta property="business:contact_data:locality" content="서울특별시" />
<meta property="business:contact_data:postal_code" content="040054" />
<meta property="business:contact_data:country_name" content="대한민국" />
<meta property="business:contact_data:email"
	content="help@hellomarket.com" />
<meta property="place:location:latitude" content="37.5536844" />
<meta property="place:location:longitude" content="126.9257458" />
<meta property="al:android:url" content="hellomarket://hellomarket.api" />
<meta property="al:android:package" content="com.tuck.hellomarket" />
<meta property="al:android:app_name" content="세컨웨어" />
<meta property="al:ios:url" content="hellomarket://hellomarket.api" />
<meta property="al:ios:app_store_id" content="469381475" />
<meta property="al:ios:app_name" content="세컨웨어" />
<meta name="mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="google-site-verification"
	content="ggHDFNKLE20RhE6DgQt1WCka106UdjE4YQP7Y8gGbBo" />
<meta name="naver-site-verification"
	content="84fcff496e9c388f1deb5329cd55eb3234729c34" />
<meta name="theme-color" content="#ffffff" />
<meta name="msapplication-TileImage" content="/icon/ms-icon-144x144.png" />
<link rel="manifest" href="/manifest.json" />
<link rel="apple-touch-icon" sizes="57x57"
	href="/icon/apple-icon-57x57.png" />
<link rel="apple-touch-icon" sizes="60x60"
	href="/icon/apple-icon-60x60.png" />
<link rel="apple-touch-icon" sizes="72x72"
	href="/icon/apple-icon-72x72.png" />
<link rel="apple-touch-icon" sizes="76x76"
	href="/icon/apple-icon-76x76.png" />
<link rel="apple-touch-icon" sizes="114x114"
	href="/icon/apple-icon-114x114.png" />
<link rel="apple-touch-icon" sizes="120x120"
	href="/icon/apple-icon-120x120.png" />
<link rel="apple-touch-icon" sizes="144x144"
	href="/icon/apple-icon-144x144.png" />
<link rel="apple-touch-icon" sizes="152x152"
	href="/icon/apple-icon-152x152.png" />
<link rel="apple-touch-icon" sizes="180x180"
	href="/icon/apple-icon-180x180.png" />
<link rel="shortcut icon" href="/icon/secondwear-favicon.png" />
<meta name="viewport"
	content="initial-scale=1.0, maximum-scale=5,width=device-width" />
<meta property="fb:app_id" content="306163192727427" />
<link rel="dns-prefetch preconnect" href="//in.treasuredata.com" />
<link rel="dns-prefetch preconnect" href="//ccimage.hellomarket.com" />
<link rel="dns-prefetch preconnect" href="//ccimg.hellomarket.com" />
<link rel="dns-prefetch preconnect" href="//fonts.gstatic.com" />
<style>
@media all and (max-width: 800px) {
	img {
		width: 100%;
	}
}
</style>
<meta name="next-head-count" content="62" />



<link rel="preload" href="/_next/static/css/f408636dd8aac38d.css"
	as="style" />
<link rel="stylesheet" href="/_next/static/css/f408636dd8aac38d.css"
	data-n-g="" />
<link rel="preload" href="/_next/static/css/e07f49fc073c7046.css"
	as="style" />
<link rel="stylesheet" href="/_next/static/css/e07f49fc073c7046.css"
	data-n-g="" />



<style data-styled="iAxbOy SujIO hTQmgd fXHZKY bcFSuW"
	data-styled-version="4.4.1">
/* sc-component-id: sc-95d89ff4-0 */
.iAxbOy {
	background-color: #F6E24B;
	width: 100%;
	height: 52px;
	margin-top: 8px;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-align-items: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	border-radius: 6px;
	cursor: pointer;
	-webkit-box-pack: center;
	-webkit-justify-content: center;
	-ms-flex-pack: center;
	justify-content: center;
}

@media all and (max-width:800px) {
	.iAxbOy {
		height: 55px;
	}
}

.SujIO {
	background-color: #0DC75B;
	width: 100%;
	height: 52px;
	margin-top: 8px;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-align-items: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	border-radius: 6px;
	cursor: pointer;
	-webkit-box-pack: center;
	-webkit-justify-content: center;
	-ms-flex-pack: center;
	justify-content: center;
}

@media all and (max-width:800px) {
	.SujIO {
		height: 55px;
	}
}

.hTQmgd {
	background-color: #121619;
	width: 100%;
	height: 52px;
	margin-top: 8px;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-align-items: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	border-radius: 6px;
	cursor: pointer;
	-webkit-box-pack: center;
	-webkit-justify-content: center;
	-ms-flex-pack: center;
	justify-content: center;
}

@media all and (max-width:800px) {
	.hTQmgd {
		height: 55px;
	}
}
/* sc-component-id: sc-95d89ff4-1 */
.fXHZKY {
	font-size: 1rem;
	font-weight: 700;
	-webkit-letter-spacing: '0px';
	-moz-letter-spacing: '0px';
	-ms-letter-spacing: '0px';
	letter-spacing: '0px';
	color: #121619;
}

.bcFSuW {
	font-size: 1rem;
	font-weight: 700;
	-webkit-letter-spacing: '0px';
	-moz-letter-spacing: '0px';
	-ms-letter-spacing: '0px';
	letter-spacing: '0px';
	color: #FFFFFF;
}
</style>
</head>
<body>


	<div id="__next">
	<br>
			<br>
			<br>
		 <div class="login_header">
            <img alt="말랑 이미지 로고"
               src="/icon/sitelogo.png"
               class="logo_image" />
         </div>
		
			
			<br>
			<br>
			<br>

			<div class="login_contain">
				<div class="sc-95d89ff4-0 iAxbOy">
					<a
						href="https://kauth.kakao.com/oauth/authorize?response_type=code
						&client_id=40127d7faf35926c38b930d913c0e64f
						&redirect_uri=http://localhost/kakaoLogin">
						<span class="sc-95d89ff4-1 fXHZKY"> 카카오톡으로 계속하기 </span>
					</a>

				</div>

				<div class="sc-95d89ff4-0 hTQmgd">
					<span class="sc-95d89ff4-1 bcFSuW">
						<a href="login">ID/PW로 계속하기</a>
					</span>
				</div>
			</div>
		</div>
	


</body>
</html>