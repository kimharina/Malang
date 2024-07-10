<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="adminTop.jsp"%>
<!-- userInfo.jsp -->

<style>
.blank {
	margin: 120px 0 60px 0;
}

.user {
	text-align: center; /* 가운데 정렬 */
	border: 1px solid #ccc; /* 테두리 추가 */
	padding: 40px; /* 내부 간격 조절 */
	width: 400px; /* 섹션의 너비 조절 */
	margin: 0 auto;
	font-size: 100px;
}

.but {
	background-color: #007BFF;
	color: #fff;
	border: none;
	padding: 10px 20px;
	cursor: pointer;
	margin-top: 10px;
}

.but:hover {
	background-color: #0056b3;
}
</style>

<div class="sc-c965cce8-0 cCHXXw">			
	<div class="sc-c965cce8-2 ufBpS">
		<a href="memberListAd">
			<img src="/icon/list.png" class="sc-678b85bd-2 kygvRy" alt="리스트"/>
		</a>
		<div class="sc-c965cce8-4 iRXRoK">사용자 목록</div>
	</div>
</div>



</div>
				<div class="sc-453f21de-2 bkOisR"></div>
			</div>
		</div>
			
<div class="blank"></div>

<div class="uesr" align="center";>
	<table width="350" border="1">
		<tr>
			<th width="80" align="left">아이디 :</th>
			<td align="left">${member.userId} </td>
		</tr>	
		<tr>
			<th width="80" align="left">이름 :</th>
			<td align="left">${member.userName} </td>
		</tr>	
		<tr>
			<th width="80" align="left">생년월일 :</th>
			<td align="left">${member.birth} </td>
		</tr>	
		<tr>
			<th width="80" align="left">이메일 :</th>
			<td align="left">${member.email} </td>
		</tr>
		<tr>
			<th width="80" align="left">전화번호 :</th>
			<td align="left">${member.mobile }</td>
		</tr>	
		<tr>
			<th width="80" align="left">주소 :</th>
			<td align="left">${member.address}</td>
		</tr>
		<tr>
			<th width="80" align="left">가입일자 :</th>
			<td align="left">${member.joinDate}</td>
		</tr>		
	</table>
	<br>
	<button class="but" type="button" onclick="location.href='updateMember'">회원 수정</button>
	<button class="but" type="button" onclick="location.href='deleteMember'">회원 삭제</button>
</div>

<%@ include file="../bottom.jsp"%>

