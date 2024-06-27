<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- heartTest -->
<html>
	<head>
	<body>
	
	<script type="text/javascript">
		var xhr;
		// 데이터 전달 처리		
			function heartPlus(){			
		// 1.XMLHttpRequest 객체를 사용해서 DB로 전달
			xhr = new XMLHttpRequest(); 
		// 2.open method를 이용해 요청 방식과 경로 지정	
			xhr.open("post", "heartPlus")	
			xhr.send(document.getElementByID("ProductId").value);  
			xhr.onreadystatechange = resProc_heartPlus;			
		}	
		// 데이터 응답 처리
			function resProc_heartPlus() {
		// 5.정상적인 응답인지 확인
				if(xhr.readyState == 4 && xhr.status == 200){
				// var resData = JSON.parse(xhr.responseText);
				var resultData = "";
				resultData += "<a onclick=heartMinus()>";	 	
				resultData += "<img src=/icon/heart.png width=100 height=100/>";	 	
				resultData += "</a>"; 
			
				document.getElementById('heart').innerHTML = resultData;
				}				
		}
	</script>

	<script type="text/javascript">
		var xhr;
		// 데이터 전달 처리		
			function heartMinus(){			
		// 1.XMLHttpRequest 객체를 사용해서 DB로 전달
			xhr = new XMLHttpRequest(); 
		// 2.open method를 이용해 요청 방식과 경로 지정	
			xhr.open("post", "heartMinus")
		// 3.입력 받은 값을 꺼내와 send로 전송	
			xhr.send("0");  
		// 4.서버로부터 반환받은 응답 처리 지정
			xhr.onreadystatechange = resProc_heartMinus;
						
		}	
					
		// 데이터 응답 처리
			function resProc_heartMinus() {
		// 5.정상적인 응답인지 확인
				if(xhr.readyState == 4 && xhr.status == 200){
				// var resData = JSON.parse(xhr.responseText);
				var resultData = "";
				resultData += "<a onclick=heartPlus()>";	 	
				resultData += "<img src=/icon/heart_empty.png width=100 height=100/>";	 	
				resultData += "</a>"; 
			
				document.getElementById('heart').innerHTML = resultData;
				
				}	
			
		}
	</script>
			<div align="center">
			<div id='heart'>
			
			<c:if test="${empty cookie.heart.value}">
				<a onclick="heartPlus()">
				<img src="/icon/heart_empty.png" width="100" height="100"/>			
				</a>
			</c:if>
			<c:if test="${not empty cookie.heart.value}">
				<a onclick="heartMinus()">
				<img src="/icon/heart.png" width="100" height="100"/>				
				</a>
			</c:if>
			</div>
			</div>
		
		</body>
	</head>
</html>