<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../top.jsp"%>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
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

.wrapper_div other_wrapper_div_option:hover {
   color: blue;
}
</style>

<script>
   function sample6_execDaumPostcode() {
      new daum.Postcode(
            {
               oncomplete : function(data) {
                  // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                  // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                  // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                  var addr = ''; // 주소 변수

                  //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                  if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                     addr = data.roadAddress;
                  } else { // 사용자가 지번 주소를 선택했을 경우(J)
                     addr = data.jibunAddress;
                  }

                  // 우편번호와 주소 정보를 해당 필드에 넣는다.
                  document.getElementById('sample6_postcode').value = data.zonecode;
                  document.getElementById("sample6_address").value = addr;
                  // 커서를 상세주소 필드로 이동한다.
                  document.getElementById("sample6_detailAddress")
                        .focus();
               }
            }).open();
   }
</script>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>

<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>


<style>
.selected .success_btn {
   background-color: green;
   color: white;
}

.btn_disabled .success_btn {
   background-color: gray;
   color: white;
}
</style>

<script>
   function enablePaymentButton() {
      var paymentMethod = document.getElementsByName("paymentMethod");
      var payButton = document.querySelector(".success_btn");

      for (var i = 0; i < paymentMethod.length; i++) {
         if (paymentMethod[i].checked) {
            payButton.parentNode.classList.remove("btn_disabled");
            return;
         }
      }

      // 선택된 라디오 버튼이 없을 때 결제 버튼 비활성화
      payButton.parentNode.classList.add("btn_disabled");
   }

</script>
<body>
   <div class="item_list_area">
      <div class="breadcrumbs">
         <ul>
            <li><a href="/">HOME</a></li>
         </ul>
      </div>
         <div class="main_area_center">
            <div class="main">
               <div class="order_title_wrapper">
                  <div class="title">주문서</div>
               </div>
               <div class="order_content_wrapper">
                  <ul>
                     <li class="order_card"><div class="card_cont deal_card_cont">
                           <ul class="item_list">
                              <li><div class="card_box card_box_list">
                                    <div
                                       class="image_wrapper image_wrapper_main_col_1 deal_image_wrapper">
                                       <div class="image_outside">
                                          <div class="image_centerbox">
                                             <img class="thumbnail_img"
                                                src="/images/${product.userId}/${product.fileName}">
                                          </div>
                                       </div>
                                    </div>
                                    <div class="cont cont_main_col_1">
                                       <div class="item_title title_main_col_1">${product.productName}</div>
                                       <div class="item_price pri_main_col_1">${product.price}</div>
                                    </div>
                                 </div></li>
                           </ul>
                        </div></li>
                     <li class="order_card "><div class="title_box">배송지</div>
                        <ul class="order_member_info">
                           <li><dl>
                                 <dt>이름</dt>
                                 <dd class="order_member_name">
                                   <input type="text" class="w_10" name="receiverName" id="receiverName"
                                   		 placeholder="이름 입력" value="${sessionScope.userName }" readonly>
                                 </dd>
                              </dl></li>
                           <li><dl>
                                 <dt>연락처</dt>
                                 <dd class="order_member_phone">
                                    <input type="number" class="w_10" placeholder="숫자만 입력"
                                       value="${sessionScope.mobile}">
                                 </dd>
                              </dl></li>

                           <li>

                              <table width="130%">
                                 <tr>
                                    <td width="10%"><input name="sendrHide"
                                       class="div_input_st" id="sample6_postcode"
                                       placeholder="우편번호" value="${sendrHide}"></td>
                                    <td width="50%" style="vertical-align: bottom;">
                                       <button class="addr_search"
                                          onclick="sample6_execDaumPostcode()">주소찾기</button>
                                    </td>
                                 </tr>

                              </table>

                              <dt>주소</dt>
                              <dd class="order_member_address">
                                 <input class="w_10" cname="address" name="receiverAddr1"
                                    id="sample6_address" placeholder="주소" value="${receiverAddr1}"> <br>
                                 <input class="w_10" name="receiverAddr2" 
                                    id="sample6_detailAddress" placeholder="상세주소 입력" value="${receiverAddr2}">
                                 <br>
                           </li>
                        </ul></li>



                     <li class="order_card last_order_card"><div
                           class="order_card_left">

                           <div class="title_box"></div>
                           <div>
                              <div>
                                 <ul class="pay_method_list item_pay_method_list">
                                    <div class="other_wrapper_div">
                                      
                                    </div>

                                 </ul>
                              </div>
                              <div class="certified_box hide">
                                 <div class="title_txt">
                                    <span>핸드폰 인증</span>
                                 </div>
                                 <div class="phone_number_box">
                                    <input type="number" placeholder="숫자만 입력">
                                    <button class="addr_search">인증요청</button>
                                 </div>
                                 <div class="auth_code_box">
                                    <input type="number" placeholder="인증번호 입력">
                                    <button class="addr_search">인증</button>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="order_card_right">
                           <div class="title_box sub_last_title_box">최종결제금액</div>
                           <div class="final_order_wrapper">
                              <div class="final_order_price">
                                 <dl
                                    class="final_order_price_border_bottom final_order_price_padding">
                                    <dt>상품가격</dt>
                                    <dd>${product.price}원</dd>
                                 </dl>
                                 <dl class="final_order_price_margin">
                                    <dt>배송비</dt>
                                    <dd>
                                       <span>${product.delCharge}원</span>
                                    </dd>
                                 </dl>
                                 <dl>
                                    <dt>결제수수료</dt>
                                    <dd>무료</dd>
                                 </dl>
                                 <dl
                                    class="final_order_price_border_bottom final_order_price_padding">
                                    <dt>안전거래수수료</dt>
                                    <dd>
                                       <span class="consignment_price">1,000원</span><span
                                          class="consignment_price_free">무료</span>
                                    </dd>
                                 </dl>
                              </div>
                              <div class="order_total_price">
                                 <div class="title">최종결제금액</div>
                                 <div class="price" id="orderTotalPrice">${product.price+product.delCharge}원</div>
                              </div>
                              <div class="policy_area">
                                 <div class="description">
                                    결제하기 클릭시 <span class="txt-bl-12 txt_un">결제시 유의사항</span> 및 <span
                                       class="txt-bl-12 txt_un">반품환불정책</span>을 모두 이해하고 이에 동의함을
                                    의미합니다.
                                 </div>
                              </div>
                              <div class="success_btn_box">
                                 <div class="success_btn btn_disabled">
                                 	<button id="pay_btn">결제하기</button>
                                 </div>
                              </div>
                           </div>
                        </div></li>
                  </ul>
               </div>
            </div>
         </div>
      
   </div>
   <script>
   var result = "";
 $("#pay_btn").click(function(){
   var productNo = ${product.productNo};
   var productName = "${product.productName}";
   var buyer = document.getElementById("receiverName").value;
   var price = ${product.price + product.delCharge};
   var email = "${member.email}";
// 주소를 가져오기 위한 변수 설정
   var sendrHide = document.getElementById("sample6_postcode").value;
   var receiverAddr1 = document.getElementById("sample6_address").value;
   var receiverAddr2 = document.getElementById("sample6_detailAddress").value;

   // 주소를 쉼표(,)로 구분한 문자열 생성
   var addressParts = [];
   if (sendrHide) {
       addressParts.push(sendrHide);
   }
   if (receiverAddr1) {
       addressParts.push(receiverAddr1);
   }
   if (receiverAddr2) {
       addressParts.push(receiverAddr2);
   }
   var address = addressParts.join(",");

 
  IMP.init("imp01581573");

    // IMP.request_pay(param, callback) 호출
    IMP.request_pay({ // param
      pg: "html5_inicis",
      pay_method: "card",
      merchant_uid: productNo + new Date(),
      name: productName,
      amount: price,
      buyer_email: email,
      buyer_name: buyer,
      buyer_addr: address
    }, function (rsp) { // callback
    	console.log(rsp);
    
		// 결제검증
	    if ( rsp.success ) {
			$.ajax({
				type : "POST",
	        	url : "/verifyIamport/" + rsp.imp_uid,
	        	 data: {
	                 imp_uid: rsp.imp_uid
	                 // 여기에 필요한 다른 데이터도 추가할 수 있습니다.
	               }
	        }).done(function(data) {
	        	console.log(data);

	        // 위의 rsp.paid_amount 와 data.response.amount를 비교한후 로직 실행 (import 서버검증)
		    if(rsp.paid_amount == data.response.amount){
				var msg = '결제 및 검증이 완료되었습니다.';
				msg += '고유ID : ' + rsp.imp_uid;
				msg += '상점 거래ID : ' + rsp.merchant_uid;
				msg += '결제 금액 : ' + rsp.paid_amount;
				msg += '카드 승인번호 : ' + rsp.apply_num;
				alert(msg);
				// jQuery로 HTTP 요청
        		// 주문정보 생성 및 테이블에 저장
        		// 데이터를 json으로 보내기 위해 바꿔준다.
        		data = JSON.stringify({
	        		"productNo" : productNo, //상품번호
	        		"buyer" : rsp.buyer_name, // 구매자
	        		"productName" : rsp.name,
	        		"orderDate" : new Date(),
	        		"priceOutput" : rsp.paid_amount,
	        		"imp_uid" : rsp.imp_uid,
	        		"address" : rsp.buyer_addr,
        		});
        		jQuery.ajax({
	        		url: "/Insertorder",
	        		type: "POST",
	        		contentType: 'application/json',
	        		dataType: 'text',
	        		data : data
        		}).done(function(data) {
        			console.log(data);
	        			// 결제완료 페이지로 이동
        			window.location.replace('receipt?productNo=${product.productNo}') 

        		}).fail(function(jqXHR, textStatus, errorThrown) {
        		    console.log("Ajax request failed: " + textStatus, errorThrown);
        		});
		    }else{
		    	 var msg = '결제에 실패하였습니다.';
		         msg += '에러내용 : ' + rsp.error_msg;
	    		alert(msg);
			}
	        });
	        }
	    });        
  });
</script>



<%@ include file="../bottom.jsp"%>