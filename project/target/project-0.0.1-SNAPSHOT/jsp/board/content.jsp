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
						</div>
						<ul class="inquiry_list">
							<table class="board_view">
								<colgroup>
									<col width="15%">
									<col width="35%">
									<col width="15%">
									<col width="*">
								</colgroup>
								<tbody>
									<tr>
										<th>글번호</th>
										<td>${board.num }</td>
										<th>조회수</th>
										<td>${board.readCount}</td>
									</tr>
									<tr>
										<th>작성자</th>
										<td>${board.writer}</td>
										<th>작성일</th>
										<td>${sdf.format(board.regDate)}</td>
									</tr>
									<tr>
										<th>글제목</th>
										<td colspan="3" class="contenttitle">${board.subject}${map.CONTENTS }</td>
									</tr>
									<tr>
										<th>글내용</th>
										<td colspan="3" class="content">${board.content }</td>
									</tr>
									<tr>
										<td colspan="4" class="attr"><button class="custom-button" input type="submit" value="글수정" 
											onclick="document.location.href='boardUpdateForm?num=${board.num }&pageNum=${pageNum }'">글수정
											</button>
											
											&nbsp;&nbsp;&nbsp;&nbsp; <button class="custom-button" input type="button" value="글삭제"
											onclick="document.location.href='boardDeleteForm?num=${board.num }&pageNum=${pageNum }'">글삭제
											</button>
											
											&nbsp;&nbsp;&nbsp;&nbsp; <button class="custom-button" input type="button" value="글목록"
											onclick="document.location.href='list?pageNum=${pageNum }'">글목록
											</button>
											
											&nbsp;&nbsp;&nbsp;&nbsp; <button class="custom-button" input type="button" value="답글"
											onclick="document.location.href='writeForm?num=${board.num }&ref=${board.ref }&step=${board.step }&depth=${board.depth }'">답글달기
											</button>
										</td>
									</tr>
								</tbody>
							</table>
						</ul>
					</article>
				</div>
			</div>
		</div>
	</div>
</section>

<%@ include file="../bottom.jsp"%>