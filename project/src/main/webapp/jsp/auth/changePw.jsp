<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../top.jsp"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
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
<script type="text/javascript">
function pwCheckDigit(){
	let pw = document.getElementById('pw');
	let confirmPw = document.getElementById('confirmPw');
	label = document.getElementById('label1');
	if(pw.value.length < 8){
		 label.innerHTML = '8자리이상 입력해주세요'
	 }else {
		label.innerHTML = ''
	 }	 
}
function pwCheck(){
	let pw = document.getElementById('pw');
	let confirmPw = document.getElementById('confirmPw');
	label = document.getElementById('label2');
	if(pw.value == confirmPw.value){
		label.innerHTML = ''
	}else {
		label.innerHTML = '불일치'
	}	 
}
function allCheck() {
	
	let pw = document.getElementById('pw');
	let confirmPw = document.getElementById('confirmPw');

	
	if (pw.value == "") {
		alert('비밀번호는 필수 항목입니다.');
		
	} else if (pw.value.length < 8 ) {
        alert("8자리 이상으로 입력해주세요.");
        
	} else if (confirmPw.value == "") {
		alert('비밀번호 확인은 필수 항목입니다.');
		
	} else if (confirmPw.value != pw.value) {
		alert('비밀번호가 서로 다릅니다');
		
	} else {
		var f = document.getElementById('f');
		f.submit();
	}
}
</script>
<body>
<br><br>
<div align="center">

<form action="changePwProc" method="post" id="f">
<table>
	<tr><td><h1>비밀번호 재설정</h1></td></tr>
	<tr><td>
		<input type="password" placeholder="비밀번호" name="pw" id="pw" onchange="pwCheckDigit()"><br>
		<label id="label1" style="color: red;"></label><br>
		<input type="password" placeholder="비밀번호 확인" name="confirmPw" id="confirmPw" onchange="pwCheck()"><br>
		<label id="label2" style="color: red;"></label>
		<br>
		<div align="right" >
		<input type="hidden" name="userId" value="${userId}">
		<input type="submit" class="btn" onclick="allCheck()" value="재설정">
		</div> 
	</td></tr>
</table>
</form>
</div>
<%@ include file="../bottom.jsp"%>