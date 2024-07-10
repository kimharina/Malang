<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%@ include file="../top.jsp"%>

<style>
.custom-button {
	display: inline-block;
	padding: 10px 20px;
	background-color: #3498db;
	color: #fff;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	font-size: 16px;
	text-align: center;
	text-decoration: none;
}

.custom-button:hover {
	background-color: #217dbb;
}

.custom-button:active {
	background-color: #14568c;
}
</style>

<body>
	<section>
		<div class="main_area">
			<div class="main_area_center">
				<div class="main">
					<div class="left">
						<div class="left_nav_type2">
							<div class="left_nav_type2_title">헬프센터</div>
							<ul class="left_nav_menu">
								<li><a href="faq"><span>자주묻는질문</span></a></li>
								<li><a href="policy"><span>운영정책</span></a></li>
								<li><a class="active" id="scrollMain" href="list"><span>일반
											문의</span></a></li>
								<li><a href="notice"><span>공지사항</span></a></li>
							</ul>
						</div>
					</div>
					<section class="left_main">
						<div class="community_content_title_area_contact">
							<ul class="inquiry_tab">
								<a class="active" href="list"><li>문의/안내 내역</li></a>
								<a class="" href="writeForm"><li>문의하기</li></a>
							</ul>
						</div><br>
						<article>
							<form method="post" action="boardDeleteProc?pageNum=${pageNum }">
								<table class="deletetable">
									<tr>
										<th><b>비밀번호를 입력 해 주세요.</b></th>
									</tr>
									<tr>
										<td>비밀번호 : <input type="password" name="pass" /> <input
											type="hidden" name="num" value="${num }">
										</td>
									</tr>
									<tr>
										<td colspan="2" class="attr">
										<button class="custom-button" input type="submit" value="글삭제" />글삭제
										</button>
										<button class="custom-button" input type="button" value="글목록"
											onclick="document.location.href='list?pageNum=${pageNum}'" />글목록
										</button>
										</td>
									</tr>
								</table>
							</form>
						</article>
					</div>
				</div>
			</div>	
		</section>
		
<%@ include file="../bottom.jsp"%>