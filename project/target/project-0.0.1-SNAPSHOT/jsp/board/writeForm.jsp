<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<%@ include file="../top.jsp"%>
<html>
<head>
<meta charset="UTF-8">
<title>writeForm</title>
<link href="resources/css/board.css" rel="stylesheet" type="text/css" />
<link href="resources/css/writeForm.css" rel="stylesheet"
	type="text/css" />
<script src="resources/script.js"></script>
</head>
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
								<a class="" href="list"><li>문의/안내 내역</li></a>
								<a class="active" href="writeForm"><li>문의하기</li></a>
							</ul>
						</div>
						<div class="mail_view">
							<h1>세컨웨어 - 현명한 사람들의 패션 중고거래, 구 헬로마켓</h1>
							<h2>일반문의 신청 페이지</h2>
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
							<table class="inquiry_table">
								<article>
									<form method="post" name="writeForm" action="writeProc"
										onsubmit="return writeSave()">
										<input type="hidden" name="num" value="${num }" /> <input
											type="hidden" name="ref" value="${ref }" /> <input
											type="hidden" name="step" value="${step }" /> <input
											type="hidden" name="depth" value="${depth }" />
										<table class="board">
											<tr>
												<td class="attr">*이름</td>
												<td><input type="text" name="writer" /></td>
											</tr>
											<tr>
												<td class="attr">*이메일</td>
												<td><input type="email" name="email" /></td>
											</tr>
											<tr>
												<td class="attr">*제목</td>
												<c:choose>
													<c:when test="${empty num or num == '0'}">
														<td><input class="input" type="text" name="subject" /></td>
													</c:when>
													<c:otherwise>
														<td><input class="input" type="text" name="subject"
															value="[답변]" /></td>
													</c:otherwise>
												</c:choose>
											</tr>
											<tr>
												<td class="attr">*내용</td>
												<td><textarea name="content" rows="13" cols="50"></textarea></td>
											</tr><br>
											<tr>
												<td class="attr">*비밀번호</td>
												<td><input type="password" name="pass" /></td>
											</tr>
											<br>
											<tr>
												<td colspan="2" class="attr"><button
														class="custom-button" input type="submit" value="글쓰기" />글쓰기
													</button>
													<button class="custom-button" input type="reset"
														value="다시 작성" />다시 작성
													</button></td>
											</tr>
										</table>
									</form>
								</article>
							</div>
						</div>
					</div>
				</div>
			</section>

<%@ include file="../bottom.jsp"%>