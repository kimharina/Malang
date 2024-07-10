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
<body>

<script type="text/javascript">
		var xhr; 
		function ajaxProc() {
		//	console.log('asd : ' + document.getElementById("select_depth1").value)
			xhr = new XMLHttpRequest();
			xhr.open("post", "productAd_select")
			xhr.send(document.getElementById("select").value);  
			xhr.onreadystatechange = resProc_list;
		}	

		function resProc_list() {
			if(xhr.readyState == 4 && xhr.status == 200){
				var resData = JSON.parse(xhr.responseText);
				var optionData = "";
				for(i = 0; i < resData.length; i++){
					optionData += "<tr>";	 	
					optionData += "<td>" + resData[i].productNo + "</td>";	 	
					optionData += "<td>" + resData[i].userId + "</td>";
					optionData += "<td> <img src='/images/" + resData[i].userId + "/" + resData[i].fileName + " 'class='sc-b34a2ec2-0 bOxxOH''/></td>"  
					optionData += "<td>" + resData[i].productName + "</td>";
					optionData += "<td>" + resData[i].priceOutput + "원</td>";
					optionData += "<td>" + resData[i].insertDate + "</td>";
					optionData += "<td> <a href=updateProduct?="+resData[i].productNo+">[수정]</td>";
					optionData += "<td> <a href=updateProductProc?="+resData[i].productNo+">[삭제]</td>";
				 	optionData += "</tr>";
				}
				document.getElementById('tbody').innerHTML = optionData;
			}
		}		
</script>

		<div class="sc-c965cce8-0 cCHXXw">			
										
							
						<div class="sc-c965cce8-2 ufBpS">
							<a href="insertProduct">			
								<img src="/icon/sell.png" alt="판매 아이콘" class="sc-c965cce8-3 cloNtw"/>
							</a>										
								<div class="sc-c965cce8-4 iRXRoK">상품 등록하기</div>
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
			</div>
		</div>	
	<div class="sc-50d6daba-2 cDorvW">
		<section class="content">
			<h2>상품 등록 페이지</h2>
			<div class="regist_main_area">
				<div class="regist_top">
					<div class="regist_box_top">
						<div>상품관리</div>
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
										<label class="sc-cc0f1f42-2 hDhFxO">상품정렬</label>
									</dt>
								</div>	
								<dd>		  
									<p><select id="select" name="select" onchange="ajaxProc()">
										<option value="" selected="selected">카테고리 선택</option>
										<option value="1">높은 가격순서</option>
										<option value="2">낮은 가격순서</option>
										<option value="3">조회수 많은 순서</option>
										<option value="4">조회수 낮은 순서</option>
										<option value="5">최근 등록 순서</option>					
								</select>
								</p>								
								</dd>
						
							<dd>
								<p>
									<a href="productAd">
									<img src="/icon/categoryReset.png" class="sc-678b85bd-2 kygvRy" alt="relaod 이미지"/>카테고리 선택 초기화
									</a>
								</p>
								</dd>
							</dl>
						</dl>
					</div>
					</form>
					<div class="sc-6cdbaf43-1 jMTeQI">

									<table style='width: 800px; table-layout: fixed; word-break: break-all; height: auto' border="1">
										<tr bgcolor="#A8BDCF">
											<th width="90">상품번호</th>
											<th width="120">등록 사용자</th>
											<th width="240">상품사진</th>
											<th width="150">상품이름</th>
											<th width="180">상품가격</th>
											<th width="100">등록일자</tH>
											<th width="50">[수정]</th>		
											<th width="50">[삭제]</th>
										</tr>
										<tbody id="tbody">
										<c:forEach var="product" items="${list}">
										<tr>
											<td>${product.productNo}</td>	
											<td>${product.userId}</td>	
											<td><img src="/images/${product.userId}/${product.fileName}" class="sc-b34a2ec2-0 bOxxOH"/></td>	
											<td>${product.productName}</td>	
											<td>${product.priceOutput}원</td>	
											<td>${product.insertDate}</td>	
											<td><a href="updateProduct?productNo=${product.productNo}">[수정]</a></td>	
											<td><a href="deleteProductProc?productNo=${product.productNo}">[삭제]</a></td>	
										</tr>
										</c:forEach>
										</tbody>
									</table>
								</div>
				</div>
				
								
			</div>
			<div align="center">
				${result}
			</div>
		</section>
	</div>
</body>

<%@ include file="../bottom.jsp"%>

