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
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<style>
.selected .success_btn {
   background-color: green;
   color: white;
}

.btn_disabled .success_btn {
   background-color: gray;
   color: white;
}
.receipt {
	-webkit-letter-spacing: 0px;
	-moz-letter-spacing: 0px;
	-ms-letter-spacing: 0px;
	letter-spacing: 0px;
	font-weight: 500;
	font-size: 0.875rem;
	font-family: Pretendard Variable;
	line-height: 100%;
	color: #ffff;
	max-width: 194px;
	width: -webkit-fit-content;
	width: -moz-fit-content;
	width: fit-content;
	line-height: 14px;
	padding: 6px 8px;
	border-radius: 4px;
	margin: 12px 0 4px 0;
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
	background: #bebebe;
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
                  <div class="title">구매정보</div>
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
                                       <div class="item_title title_main_col_1">${order.productName}</div>
                                       <div class="item_price pri_main_col_1">${product.priceOutput}</div>

                                    </div>
                                 </div></li>
                           </ul>
                        </div></li>
                     <li class="order_card "><div class="title_box">배송지</div>
                        <ul class="order_member_info">
                           <li><dl>
                                 <dt>주문번호</dt>
                                 <dd class="order_member_name">
                                   <input class="w_10" name="imp_uid" id="imp_uid"
                                   		 value="${order.imp_uid }" readonly>
                                 </dd>
                              </dl></li>
                           <li><dl>
                                 <dt>이름</dt>
                                 <dd class="order_member_name">
                                   <input class="w_10" name="receiverName" id="receiverName"
                                   		  value="${order.buyer }" readonly>
                                 </dd>
                              </dl></li>

                           <li>

                              <dt>주소</dt>
                              <dd class="order_member_address">
                                 <input class="w_10" cname="address" name="receiverAddr1"
                                    id="sample6_address" value="${order.address}" size="70px"> <br>
                           </li>
                           <li>

                              <dt>구매일</dt>
                              <dd class="order_member_address">
                                 <input cname="address" name="date"
                                    id="date" value="${date}"> <br>
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
                            
                           </div>
                        </div>
                        <div class="order_card_right">
                           <div class="title_box sub_last_title_box">최종결제금액</div>
                           <div class="final_order_wrapper">
                              <div class="final_order_price">
                                 <dl
                                    class="final_order_price_border_bottom final_order_price_padding">
                                    <dt>상품가격</dt>
                                    <dd>${product.priceOutput}원</dd>
                                 </dl>
                                 <dl class="final_order_price_margin">
                                    <dt>배송비</dt>
                                    <dd>${product.delChargeOutput}원</dd>
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
                                <dd>${priceOutput}원</dd>
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
                                 	<button onclick="location.href='myshop?${sessionScope.userId}&tab=item'" id="btn">목록</button>
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

<%@ include file="../bottom.jsp"%>