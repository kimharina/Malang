<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../top.jsp"%>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>판매상품등록</title>
<style>
input-file-button {
	padding: 6px 25px;
	background-color: #FF6600;
	border-radius: 4px;
	color: white;
	cursor: pointer;
}

#images_container {
	width: 100%;
}

#images_container img {
	display: inline-block;
	width: 200px; /*이거 바꾸면 이미지 사이즈 조절 가능함.*/
}
</style>
<!-- 이미지 미리보기 -->
<script>
		function setDetailImage(event){
			for(var image of event.target.files){
				var reader = new FileReader();
				
				reader.onload = function(event){
					var img = document.createElement("img");
					img.setAttribute("src", event.target.result);
					img.setAttribute("class", "col-lg-6");
					document.querySelector("div#images_container").appendChild(img);
				};
				console.log(image);
				reader.readAsDataURL(image);
			}
		}
	</script>

<!-- 상품 카테고리 선택 Ajax -->
<script type="text/javascript">
	var xhr;
// 상품 depth_1 출력
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

// 상품 depth_2 출력
	// 데이터 전달 처리		
		function ajaxProc_depth1() {
		// 1.XMLHttpRequest 객체를 사용해서 DB로 전달
			xhr = new XMLHttpRequest(); 
		// 2.open method를 이용해 요청 방식과 경로 지정	
			xhr.open("post", "cateList")
		// 3.입력 받은 값을 꺼내와 send로 전송	
			xhr.send(document.getElementById("select_depth1").value);  
		// 4.서버로부터 반환받은 응답 처리 지정
			xhr.onreadystatechange = resProc_depth1;
				
		}	
			
	// 데이터 응답 처리
		function resProc_depth1() {
		// 5.정상적인 응답인지 확인
			if(xhr.readyState == 4 && xhr.status == 200){
				var resData = JSON.parse(xhr.responseText);
				var optionData = "";
					optionData += "<option value=0 >"+'카테고리 선택'+"</option>";	 	
					
				for(i = 0; i < resData.length; i++){
					optionData += "<option value=0"+resData[i].categoryId+">"+resData[i].name+"</option>";	 	
					}
					document.getElementById('select_depth2').innerHTML = optionData;
				}
			}
	
// 상품 depth_3 출력
	// 데이터 전달 처리		
		function ajaxProc_depth2() {
		// 1.XMLHttpRequest 객체를 사용해서 DB로 전달
			xhr = new XMLHttpRequest(); 
		// 2.open method를 이용해 요청 방식과 경로 지정	
			xhr.open("post", "cateList")
		// 3.입력 받은 값을 꺼내와 send로 전송	
			xhr.send(document.getElementById("select_depth2").value);  
		// 4.서버로부터 반환받은 응답 처리 지정
			xhr.onreadystatechange = resProc_depth2;		
			}	
				
	// 데이터 응답 처리
		function resProc_depth2() {
		// 5.정상적인 응답인지 확인
			if(xhr.readyState == 4 && xhr.status == 200){
				var resData = JSON.parse(xhr.responseText);
				var optionData = "";
				if(resData==0){
					optionData += "<option value=0>"+'전체상품'+"</option>";	 	
					document.getElementById('select_depth3').innerHTML = optionData;
						
				}
				else{
					optionData += "<option value= >"+'카테고리 선택'+"</option>";	 	
						
					for(i = 0; i < resData.length; i++){
						optionData += "<option value="+resData[i].categoryId+">"+resData[i].name+"</option>";	 	
						}
						document.getElementById('select_depth3').innerHTML = optionData;
						}
					}
				}

// 상품 카테고리 초기화
		function ajaxProc_reset() {
		// 1.XMLHttpRequest 객체를 사용해서 DB로 전달
			xhr = new XMLHttpRequest(); 
		// 2.open method를 이용해 요청 방식과 경로 지정	
			xhr.open("post", "cateList")
		// 3.입력 받은 값을 꺼내와 send로 전송	
			xhr.send("0");  
		// 4.서버로부터 반환받은 응답 처리 지정
			xhr.onreadystatechange = resProc_reset;		
			}	
				
			
		
		// 데이터 응답 처리
			function resProc_reset() {
			// 5.정상적인 응답인지 확인
				if(xhr.readyState == 4 && xhr.status == 200){
					var resData = JSON.parse(xhr.responseText);
					var optionData = "";
						optionData += "<option value=0>"+'카테고리 선택'+"</option>";
						
						document.getElementById('select_depth1').innerHTML = optionData;
						document.getElementById('select_depth2').innerHTML = optionData;				
						document.getElementById('select_depth3').innerHTML = optionData;
					
					for(i = 0; i < resData.length; i++){
						optionData += "<option value="+resData[i].categoryId+">"+resData[i].name+"</option>";	 	
						}
						document.getElementById('select_depth0').innerHTML = optionData;
					}
				}
</script>
		<div class="sc-50d6daba-2 cDorvW">	
			<form action="updateProductProc" name="f" method='post' enctype="multipart/form-data">
			<section class="content">
				<h1>Malang</h1>
				<h2>상품 수정 페이지</h2>
				<div class="regist_main_area">
					<div class="regist_top">
						<div class="regist_box_top">
							<div>${product.productNo}상품 수정 페이지</div>
							<input type="hidden" name="productNo" value="${product.productNo}">
							<input type="hidden" name="userId" value="${product.userId}">
						</div>
						<div class="regist_box_sub">
							<span>*필수항목</span>은 꼭 입력해주세요
						</div>
					</div>
					
					
					<div class="regist_box">
						<div class="description">
							<dl class="sc-fd6dc0e2-0 gvDVXQ regist_image_dl" id="images_box">
							
								<div class="sc-cc0f1f42-0 gVjVQf">
									<dt class="sc-cc0f1f42-1 gkrGGR">
										<label class="sc-cc0f1f42-2 hDhFxO">기존 상품 이미지</label>
									</dt>
								</div>
								
								<div></div>
								<dd>
									
									<div role="presentation" tabindex="0">
										
										<label class="input-file-button" for="product_detail_image">
											<img src="/images/${product.userId}/${product.fileName}" alt="상품 이미지" class="default">
												
												
										</label>
										
											<div id="image_container"></div>									
											<div class="form-group">
												<input class="form-control form-control-user" type="file" multiple="multiple" name="upFile" 
													   id="product_detail_image" onchange="setDetailImage(event);" style="display:none">
											</div>
											
										<ul class="image_list">
											<ul class="image_list">

											</ul>
											
											<div class="sc-fd6dc0e2-2 iFwSNh">
												<div class="sc-c2e8ea43-0 dLKbDW">
													<img
														src="https://ccimage.hellomarket.com/img/common/middle_dot.svg"
														alt="중간 도트" class="sc-c2e8ea43-1 ctBiin" /> 클릭하여 이미지를 변경할 수 있습니다.
												</div>	
											</div>
									
										</ul>
									</div>
								</dd>
							</dl>
							
							<dl class="regist_title" id="title">
										<label class="sc-cc0f1f42-2 hDhFxO">
											<img
												src="https://ccimage.hellomarket.com/img/common/middle_dot.svg"
												alt="중간 도트" class="sc-c2e8ea43-1 ctBiin" /> 수정할 이미지 </label>
								<dd>
										 	<div id="images_container"></div> 
								</dd>
							</dl>
							
						<dl class="regist_title" id="title">
							<div class="sc-cc0f1f42-0 gpItyx">
								<dt class="sc-cc0f1f42-1 gkrGGR">
									<label class="sc-cc0f1f42-2 hDhFxO">상품명*</label>
								</dt>
							</div>
							<dd>
								<input type="text" name="productName" class="title_input"
									placeholder="상품명을 입력해주세요" value="" />

								<div class="sc-29d3b1b-2 GRTmj"></div>
							</dd>
						</dl>

						<dl class="sell_method_box">
							<div class="sc-cc0f1f42-0 gpItyx">
								<dt class="sc-cc0f1f42-1 gkrGGR">
									<label class="sc-cc0f1f42-2 hDhFxO">상품수량 입력*</label>
								</dt>
							</div>
							<dd>
								<div class="box_sell_method box_area">
									<div id="price" class="sc-10eb73a8-0 htptkG">
										<input type="text" name="productCount"
											placeholder="수량을 입력해주세요"> <span
											class="sc-10eb73a8-5 jINSKL">개</span>
									</div>
								</div>
							</dd>
						</dl>

						<dl class="regist_title" id="title">
							<div class="sc-cc0f1f42-0 gpItyx">
								<dt class="sc-cc0f1f42-1 gkrGGR">
									<label class="sc-cc0f1f42-2 hDhFxO">카테고리</label>*
								</dt>
							</div>
							<dd>
								<p>
									<select id="select_depth0" name="select_depth0"
										onchange="ajaxProc()">
										<option value="" selected="selected">카테고리 선택</option>
										<option value="1">의류</option>
										<option value="2">신발</option>
										<option value="3">가방</option>
										<option value="4">가구</option>
										<option value="5">악세서리</option>
									</select>
								</p>
							</dd>
							<dd>
								<p>
									<select id="select_depth1" name="select_depth1"
										onchange="ajaxProc_depth1()">
										<option value="0" selected="selected">카테고리 선택</option>

									</select>
								</p>
							</dd>
							<dd>
								<p>
									<select id="select_depth2" name="select_depth2"
										onchange="ajaxProc_depth2()">
										<option value="0" selected="selected">카테고리 선택</option>

									</select>
								</p>
							</dd>
							<dd>
								<p>
									<select id="select_depth3" name="select_depth3">
										<option value="0" selected="selected">카테고리 선택</option>
									</select>
								</p>
							</dd>
							<dd>
								<p>
									<button class="btn_item_submit" type="button"
										onclick="ajaxProc_reset()">
										<img src="/icon/categoryReset.png"
											class="sc-678b85bd-2 kygvRy" alt="카테고리 초기화 이미지" />
									</button>
								</p>

							</dd>
						</dl>

						<dl class="regist_title" id="title">
							<div class="sc-cc0f1f42-0 gpItyx">
								<dt class="sc-cc0f1f42-1 gkrGGR">
									<label class="sc-cc0f1f42-2 hDhFxO">상품 사이즈</label>*
								</dt>
							</div>
							<dd class="sc-6b98316c-4 fPdiQx">
								<div class="sc-6b98316c-5 esfhng">
									<input type="text" name="productSize" />
								</div>
							</dd>
						</dl>


						<dl class="regist_condition" id="condition">
							<div class="sc-cc0f1f42-0 gpItyx">
								<dt class="sc-cc0f1f42-1 gkrGGR">
									<label class="sc-cc0f1f42-2 hDhFxO">상품 컨디션</label>*
								</dt>
							</div>
							<dd>
								<div class="itemStatus_description">판매할 상품의 컨디션을 선택해 주세요!</div>
								<select name="productCondition">
									<option value="0">카테고리 선택</option>
									<option value="새상품(미개봉)">새상품(미개봉)</option>
									<option value="거의 새상품">거의 새상품</option>
									<option value="사용감 있는 깨끗한 상품">사용감 있는 깨끗한 상품</option>
									<option value="사용 흔적이 많이 있는 상품">사용 흔적이 많이 있는 상품</option>
								</select>
							</dd>
						</dl>
						<dl class="sell_method_box">
							<div class="sc-cc0f1f42-0 gpItyx">
								<dt class="sc-cc0f1f42-1 gkrGGR">
									<label class="sc-cc0f1f42-2 hDhFxO">가격 입력*</label>
								</dt>
							</div>
							<dd>
								<div class="box_sell_method box_area">
									<div id="price" class="sc-10eb73a8-0 htptkG">
										<input type="text" name="price" placeholder="숫자를 입력해주세요">
										<span class="sc-10eb73a8-5 jINSKL">원</span>
									</div>
								</div>
							</dd>
						</dl>

						<dl class="text_area" id="desc">
							<div class="sc-cc0f1f42-0 gpItyx">
								<dt class="sc-cc0f1f42-1 gkrGGR">
									<label class="sc-cc0f1f42-2 hDhFxO">상품 설명</label>*
								</dt>
							</div>
							<dd>
								<textarea rows="5" class="introduce" name="productContent"
									placeholder="상품의 상태를 정확하게 알 수 있는 여러 장의 상품사진과 
													 구입연도, 브랜드, 사용감, 하자 유무 등 구매자에게 필요한 정보를 꼭 포함해 주세요! 
													 문의를 줄이고 더 쉽게 판매할 수 있어요. (최대 2,500자)">
													 </textarea>
							</dd>
						</dl>

						<dl class="regist_title" id="title">
							<div class="sc-cc0f1f42-0 gpItyx">
								<dt class="sc-cc0f1f42-1 gkrGGR">
									<label class="sc-cc0f1f42-2 hDhFxO">판매지점*</label>
								</dt>
							</div>
							<dd>
								<select id="shopId" name="shopId">
										<option value="" selected="selected">판매지점 선택</option>
										<option value="1">Malang 성동지점</option>
										<option value="2">Malang 강남지점</option>
										<option value="3">Malang 송파지점</option>
										<option value="4">Malang 제주지점</option>
										<option value="5">Malang 부산지점</option>
										<option value="6">Malang 인천 영종도 지점</option>
								</select>
							</dd>							
						</dl>
		
						<dl class="regist_title" id="title">
							<div class="sc-cc0f1f42-0 gpItyx">
								<dt class="sc-cc0f1f42-1 gkrGGR">
									<label class="sc-cc0f1f42-2 hDhFxO">배송비</label>*
								</dt>
							</div>
							<dd class="sc-6b98316c-4 fPdiQx">
								<div class="sc-6b98316c-5 esfhng">
									<input type="text" name="delCharge" />원
								</div>
							</dd>
						</dl>
					</div>
				</div>
				<div class="item_submit_box">
					<div class="item_area_submit_box">
						<button class="btn_item_cancel" type="button">
							<a href="index">취소</a>
						</button>
						<button class="btn_item_submit" type="submit">상품 수정 완료</button>
					</div>
				</div>
			</div>
		</section>
	</form>
</div>

<%@ include file="../bottom.jsp"%>