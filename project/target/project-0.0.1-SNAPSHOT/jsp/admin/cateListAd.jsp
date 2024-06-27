<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" buffer="128kb"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="adminTop.jsp"%>
<!-- cateListAd.jsp -->
<style>
table, th, tr {
	border: 1px solid #bcbcbc;
 	border-collapse: coll1apse;
	text-align: center;
}
</style>
<script type="text/javascript">
		var xhr; 
		function ajax() {
		//	console.log('asd : ' + document.getElementById("select_depth1").value);
			xhr = new XMLHttpRequest();
			xhr.open("post", "cateListADList")
			xhr.send(document.getElementById("select_depth1").value);  
			xhr.onreadystatechange = resProc_list;
		}	

		function resProc_list() {
			if(xhr.readyState == 4 && xhr.status == 200){
				var resData = JSON.parse(xhr.responseText);
				
				var optionData = "";
				
				for(i = 0; i < resData.length; i++){
					optionData += "<tr>";	 	
					optionData += "<td>" + resData[i].categoryId + "</td>";	 	
					optionData += "<td>" + resData[i].name + "</td>";
					optionData += "<td>" + resData[i].path + "</td>";
					optionData += "<td>" + resData[i].depth + "</td>";
				 	optionData += "<td> <a href=updateCategory?categoryId="+resData[i].categoryId+ "> <img src=/icon/categoryUpdate.png class='sc-678b85bd-2 kygvRy' alt='카테고리 수정 이미지'/></a></td>"  
				 	optionData += "</tr>";
				}
				document.getElementById('tbody').innerHTML = optionData;
			}
		}		
</script>

<script>
var xhr;
//상품 depth_1 출력
	// 데이터 전달 처리		
		function ajaxProc() {
		// 1.XMLHttpRequest 객체를 사용해서 DB로 전달
			xhr = new XMLHttpRequest(); 
		// 2.open method를 이용해 요청 방식과 경로 지정	
			xhr.open("post", "cateList")
		// 3.입력 받은 값을 꺼내와 send로 전송	
			xhr.send(document.getElementById("select_depth0").value);  
		// 4.서버로부터 반환받은 응답 처리 지정
			xhr.onreadystatechange = resProc;
			
		}	
		
	// 데이터 응답 처리
		function resProc() {
		// 5.정상적인 응답인지 확인
			if(xhr.readyState == 4 && xhr.status == 200){
				var resData = JSON.parse(xhr.responseText);
				var optionData = "";
					optionData += "<option value=0 >"+'카테고리 선택'+"</option>";	 	
				
				for(i = 0; i < resData.length; i++){
					optionData += "<option value="+resData[i].categoryId+">"+resData[i].name+"</option>";	 	
				}
				document.getElementById('select_depth1').innerHTML = optionData;
			}
		}

</script>



<script>
	function insert(){
		var select_depth1 = document.getElementById("select_depth1").value;
		location.href="insertCategory?select_depth1=" + select_depth1;
	}
</script>
<body>
		<div class="sc-c965cce8-0 cCHXXw">
						
						<div class="sc-c965cce8-2 ufBpS">
							<a onclick="insert()">
								<img src="/icon/categoryInsert.png" class="sc-678b85bd-2 kygvRy" alt="+ 이미지"/>
							</a>									
								<div class="sc-c965cce8-4 iRXRoK">카테고리 등록</div>	
						</div>
						
						<div class="sc-c965cce8-2 ufBpS">
							<a href="admin">
								<img src="/icon/categoryConfirm.png" class="sc-678b85bd-2 kygvRy" alt="카테고리 확인 이미지"/>
							</a>								
								<div class="sc-c965cce8-4 iRXRoK">저장하고 종료</div>	
						</div>
						
					</div>
				</div>
	<div class="sc-453f21de-2 bkOisR"></div>
	<div class="sc-50d6daba-2 cDorvW">
		<section class="content">
			<h1>세컨웨어 - 현명한 사람들의 패션 중고거래, 구 헬로마켓</h1>
			<h2>상품 등록 페이지</h2>
			<div class="regist_main_area">
				<div class="regist_top">
					<div class="regist_box_top">
						<div>카테고리 목록</div>
					</div>
				</div>
				<div class="regist_box">
				<form name="f" action="updateCategory" method='post'>
					<div class="description">
						
						<dl id="category" class="sc-6cdbaf43-0 kTEMLB">
							<div class="sc-cc0f1f42-0 gpItyx">
								<dt class="sc-cc0f1f42-1 gkrGGR">
								</dt>
							</div>
							<dl class="regist_title" id="title">
								<div class="sc-cc0f1f42-0 gpItyx">
									<dt class="sc-cc0f1f42-1 gkrGGR">
										<label class="sc-cc0f1f42-2 hDhFxO">1차 카테고리</label>
									</dt>
								</div>	
								<dd>		  
									<p><select id="select_depth0" name="select_depth0" onchange="ajaxProc()">
										<option value="" selected="selected">카테고리 선택</option>
										<option value="1">의류</option>
										<option value="2">신발</option>
										<option value="3">가방</option>
										<option value="4">가구</option>
										<option value="5">악세서리</option>	
								</select>
								</p>								
								</dd>
								
								<div class="sc-cc0f1f42-0 gpItyx">
									<dt class="sc-cc0f1f42-1 gkrGGR">
										<label class="sc-cc0f1f42-2 hDhFxO">2차 카테고리</label>
									</dt>
								</div>
								<dd>
									<p><select id="select_depth1" name="select_depth1" onchange="ajax()">
										<option value="0" selected="selected">카테고리 선택</option>
								</select>
								</p>
								</dd>
								
								
								<dd>
								<p>
									<a href="cateListAd">
									<img src="/icon/categoryReset.png" class="sc-678b85bd-2 kygvRy" alt="relaod 이미지"/> 선택 초기화
									</a>
								</p>
								</dd>
							</dl>
						</dl>
					</div>
					</form>
					<div class="sc-6cdbaf43-1 jMTeQI">

									<table style='width: 800px; table-layout: fixed; word-break: break-all; height: auto'>
										<tr bgcolor="#A8BDCF  ">
											<th width="120">카테고리 아이디</th>
											<th width="120">이름</th>
											<th width="120">카테고리 경로</th>
											<th width="120">depth</th>
											<th width="50">[수정]</th>
										</tr>
										<tbody id="tbody">
										<c:forEach var="category" items="${list}">
										<tr>
											<td>${category.categoryId}</td>
											<td>${category.name}</td>
											<td>${category.path }</td>
											<td>${category.depth }</td>
											<td>
											<a href="updateCategory?categoryId=${category.categoryId}">
												<img src="/icon/categoryUpdate.png" class="sc-678b85bd-2 kygvRy" alt="카테고리 수정 이미지"/>
											</a>
											</td>
											</tr>
										</c:forEach>
										</tbody>
									</table>
								</div>
				</div>
				
								
			</div>
		</section>
	</div>
</body>

<%@ include file="../bottom.jsp"%>

