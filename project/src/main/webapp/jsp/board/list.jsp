<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<%@ include file="../top.jsp"%>

<style>
table {
	border-collapse: collapse;
	width: 100%;
}

table, th, td {
	border: 1px solid #ccc;
}

th, td {
	padding: 8px;
	text-align: left;
	cursor: pointer
}

th {
	background-color: #f2f2f2;
}

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
	position: absolute;
	right: 430px;
	top: 685px;
}

.custom-button:hover {
	background-color: #217dbb;
}

.custom-button:active {
	background-color: #14568c;
}
</style>

<div class="sc-50d6daba-2 cDorvW"></div>
<section class="content">
	<h1>세컨웨어 - 현명한 사람들의 패션 중고거래, 구 헬로마켓</h1>
	<h2>문의/안내 내역</h2>
	<div class="item_list_min">
		<div class="item_list_area inquiery_list_area">
			<div class="breadcrumbs">
			<div class="breadcrumbs">
			<div class="breadcrumbs">
			<div class="breadcrumbs">
			<a href="/"><img src="/icon/home.png" class="sc-c965cce8-3 cloNtw"></a> HOME
			</div>
			</div>
			</div>
			</div>
			<div class="main_area">
				<div class="main_area_center">
					<div class="main">
						<div class="left">
								<div class="left_nav_type2">
								<div class="left_nav_type2_title">헬프센터</div>
								<ul class="left_nav_menu">
									<li><a href="faq"><span>자주묻는질문</span></a></li>
									<li><a href="policy"><span>운영정책</span></a></li>
									<li><a class="active" id="scrollMain" href="writeForm"><span>일반
												문의</span></a></li>
									<li><a href="notice"><span>공지사항</span></a></li>
								</ul>
							</div>
						</div>
						<section class="left_main">
							<div class="community_content_title_area_contact">
								<ul class="inquiry_tab">
									<a class="active" href="list"><li>문의/안내 내역</li></a>
									<a class="" href="writeForm"><li>문의하기</li> </a>
								</ul>
							</div>
							<article>
								<b class="sc-9cc45f0-1 iAKDCP">글 목록(전체 글:${count })</b>
								<c:choose>
									<c:when test="${count == 0 }">
										<table class="listtable">
											<tr>
												<td>게시판에 저장된 글이 없습니다.</td>
											</tr>
										</table>
									</c:when>
									<c:otherwise>
										<table class="listtable">
											<tr>
												<th id="num">번 호</th>
												<th id="title">제 목</th>
												<th id="writer">작성자</th>
												<th id="date">작성일</th>
												<th id="counter">조회수</th>
												<th id="ip">IP</th>
											</tr>
											<c:forEach items="${list }" var="b">
												<tr>
													<td>${number}</td>
													<c:set var="number" value="${number-1 }" />

													<td class="titletd"><c:if test="${b.getDepth() > 0}">
															<width="${5 * b.getDepth()}"> <img
																src="/icon/reply.png" width="15">
														</c:if> <c:if test="${b.getDepth() == 0}">
														</c:if> <a
														href="content?num=${b.getNum() }&pageNum=${currentPage}">${b.getSubject() }</a>
														<c:if test="${b.getReadCount() >= 20 }">
														</c:if></td>
													<td><a href="mailto:${b.getEmail() }">${b.getWriter() }</a>
													</td>
													<td>${sdf.format(b.getRegDate())}</td>
													<td>${b.getReadCount()}</td>
													<td>${b.getIp() }</td>
												</tr>
											</c:forEach>
										</table>
									</c:otherwise>
								</c:choose>
								<c:if test="${not empty list}">
								<div class="pagePrint" align="center">
								${pagePrint}
								</div>
								</c:if>
							</article>
						</section>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<%@ include file="../bottom.jsp"%>