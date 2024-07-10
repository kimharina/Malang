<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="../top.jsp"%>
<br><br><br>
<style>
.btn {
	background-color:#93b8fe;
	width: 60px;
	height: 40px;
	padding: 3px;
	border-radius: 4px;
	border: solid 1px #93b8fe;
	font-size: 9pt;
	color: #ffffff;
}
</style>

<div align="center">
<h1>회원 탈퇴</h1>
<table>
	<tr><td style="color:red;">${msg }<br></td></tr>
	<tr><td>
	<form action="deleteProc" method="post">
		<input type="text" value="${sessionScope.userId }" readonly="readonly"> <br>
		<input type="password" placeholder="비밀번호" name="pw"><br>
		<input type="password" placeholder="비밀번호 확인" name="confirmPw"><br>
		<br>
		<div align="right" >
		<input type="submit" class="btn" value="탈퇴">
		</div> 
	</form>
	</td></tr>
</table>
</div>

<%@ include file="../bottom.jsp"%>








