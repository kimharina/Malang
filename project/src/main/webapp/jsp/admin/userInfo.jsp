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

<div class="uesr" align="center";>		
		<form action="updateMember" method="post" id="f">
			<table width="350" align="center">
			
			<tr>
				<td width="100" align="left">
				<div class="sc-c965cce8-4 iRXRoK">아이디 : &nbsp;&nbsp;</div>
				</td>
				<td align="center">
					<input size="30" type="text" value="${member.userId }" name="userId" readonly>
				</td>
				<td >
				</td>
			</tr>
			
			<tr>
				<td width="100" align="left">
				<div class="sc-c965cce8-4 iRXRoK">이름 : &nbsp;&nbsp;</div>
				</td>
				<td align="center">
					<input size="30" type="text" placeholder="이름" name="userName" value="${member.userName }">
				</td>
				<td>
				</td>
			</tr>
			<tr>
				<td width="100" align="left">
					<div class="sc-c965cce8-4 iRXRoK">생년월일 : &nbsp;&nbsp;</div>
				</td>
				<td align="center">
					<input size="30" type="text" placeholder="생년월일" name="birth" value="${member.birth }">
				</td>
				<td>
				</td>
			</tr>
			
			<tr>
				<td width="100" align="left">
					<div class="sc-c965cce8-4 iRXRoK">이메일 : &nbsp;&nbsp;</div>
				</td>
				<td align="center">
					<input size="30" type="email" placeholder="이메일" name="email" value="${member.email }">
				</td>
				<td>
				</td>
			</tr>
			
			<tr>
				<td width="100" align="left">
					<div class="sc-c965cce8-4 iRXRoK">주소 : &nbsp;&nbsp;</div>
				</td>
				<td align="center">
					<input size="30" type="text" placeholder="주소" name="address" value="${member.address }">
				</td>
				<td>
				</td>
			</tr>
			<tr>
				<td width="100" align="left">
					<div class="sc-c965cce8-4 iRXRoK">전화번호 : &nbsp;&nbsp;</div>
				</td>
				<td align="center">
					<input size="30" type="text" placeholder="전화번호" name="mobile" value="${member.mobile }">
				</td>
				<td>
				</td>
			</tr>
			<br><br>
			</table>
	<button class="but" type="submit">회원 수정</button>
	<button class="but" type="button" onclick="location.href='deleteMember?userId=${member.userId}'">회원 삭제</button>
	</form>
</div>
<%@ include file="../bottom.jsp"%>

