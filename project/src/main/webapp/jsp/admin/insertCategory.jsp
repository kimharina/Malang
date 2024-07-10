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

input {
  width:150px;
  height:3px;
  text-align:center;
  
}

</style>
</div>
				<div class="sc-453f21de-2 bkOisR"></div>
			</div>
		</div>	
<body>

<script>
	function check_I() {
		if(confirm("카테고리를 등록하시겠습니까?")==true){
			document.f.submit();		
		}
		else{
			return;
		}	
	}
	
</script>


	
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
					<div class="description">
						
						<dl id="category" class="sc-6cdbaf43-0 kTEMLB">
							<div class="sc-cc0f1f42-0 gpItyx">
								<dt class="sc-cc0f1f42-1 gkrGGR">
								</dt>
							</div>
							<dl class="regist_title" id="title">
								<div class="sc-cc0f1f42-0 gpItyx">
									<dt class="sc-cc0f1f42-1 gkrGGR">
										<label class="sc-cc0f1f42-2 hDhFxO">카테고리 등록</label>
									</dt>
								</div>	
								<dd>
								</dd>
								<dd>
								</dd>
								<dd>
								</dd>
								<dd>
								</dd>
								
								<dd>
								<p>
									<button type="button" onclick="check_I()">
										<img src="/images/categoryConfirm.png" class="sc-678b85bd-2 kygvRy" alt="카테고리 확인 이미지"/> 카테고리 등록
									</button>
								</p>
								</dd>
							
							
							</dl>
							
						</dl>
					</div>
						<form name=f action="insertCategoryProc" method='post'>
					<div class="sc-6cdbaf43-1 jMTeQI">

									<table style='width: 800px; table-layout: fixed; word-break: break-all; height: auto'>
										<tr bgcolor="#A8BDCF">
											<th width="200">[카테고리 아이디]<font color="red">[수정불가]</font></th>
											<th width="160">[이름]</th>
											<th width="160">[카테고리 경로]</th>
											<th width="160">[depth]</th>
										</tr>
										<tr>
										<td> <input type="text" name="categoryId" style='font-size:12pt' readonly="readonly" value="${category.categoryId}"></td>
										<td> <input type="text" name="name" style='font-size:12pt' placeholder="카테고리 이름"></td>
										<td> <input type="text" name="path" style='font-size:12pt' value="${category.path}"></td>
										<td> <input type="text" name="depth" style='font-size:12pt' value="${category.depth}"></td>
										</tr>
									</table>
								</div>
						</form>	
				</div>
				
								
			</div>
		</section>
	</div>
</body>

<%@ include file="../bottom.jsp"%>

