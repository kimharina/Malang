<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<head>
<meta charSet="utf-8" />
<link rel="stylesheet" as="style" crossorigin="true"
	href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.8/dist/web/variable/pretendardvariable.css" />
<title>세컨웨어 - 현명한 사람들의 패션 중고거래, 구 헬로마켓</title>

<link rel="preload" href="/_next/static/css/f408636dd8aac38d.css"
	as="style" />
<link rel="stylesheet" href="/_next/static/css/f408636dd8aac38d.css"
	data-n-g="" />
<link rel="preload" href="/_next/static/css/e07f49fc073c7046.css"
	as="style" />
<link rel="stylesheet" href="/_next/static/css/e07f49fc073c7046.css"
	data-n-g="" />
</head>
<style>
@media all and (max-width: 800px) {
	img {
		width: 100%;
	}
}
</style>
<style data-styled="dyzAhi cghefr jrzPJx iQfodW"
	data-styled-version="4.4.1">
/* sc-component-id: sc-167db110-0 */
.dyzAhi {
	width: 400px;
	margin: 140px auto 0;
}

@media all and (max-width:800px) {
	.dyzAhi {
		width: 85%;
	}
}
/* sc-component-id: sc-167db110-1 */
.cghefr {
	color: 	#1E3269;
	font-size: 26px;
	font-weight: 700;
	text-align: center;
}
/* sc-component-id: sc-167db110-2 */
.jrzPJx {
	color: #454c53;
	font-size: 15px;
	margin: 40px 0 17px;
}
/* sc-component-id: sc-167db110-3 */
.iQfodW {
	width: 100%;
	height: 48px;
	color: #0484f6;
	font-size: 15px;
	text-align: center;
	border-radius: 3px;
	background-color: #fff;
	border: 1px solid #0484f6;
}

data-styled ="kBavEB bRGbyl jBQUFO gFEAkP kWnTmY eaYwS cUnmdr dSytL evldug
	 " data-styled-version ="4.4.1 "> /* sc-component-id: sc-7838496c-0 */
	.kBavEB {
	width: 400px;
	margin: 0 auto;
	padding-top: 89px;
}

@media all and (max-width:800px) {
	.kBavEB {
		width: auto;
		margin: 0 auto;
		padding: 52px 20px 0;
	}
}
/* sc-component-id: sc-7838496c-1 */
.bRGbyl {
	color: bRGbyl;
	font-size: 26px;
	font-weight: bold;
	text-align: center;
	margin-bottom: 40px;
}
/* sc-component-id: sc-7838496c-2 */
.jBQUFO {
	color: #454c53;
	font-size: 16px;
	font-weight: 500;
}
/* sc-component-id: sc-7838496c-3 */
.gFEAkP {
	width: 100%;
	margin-top: 15px;
	border: none !important;
	font-size: 16px !important;
	border-radius: 0 !important;
	padding: 0 0 8px 0 !important;
	border-bottom: 1px solid #f0f0f0 !important;
}
/* sc-component-id: sc-7838496c-4 */
.dSytL {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	margin-top: 20px;
}
/* sc-component-id: sc-7838496c-5 */
.evldug {
	width: 195px;
	color: #0484f6;
	padding: 14px 0;
	font-size: 15px;
	cursor: pointer;
	text-align: center;
	margin-right: 10px;
	border-radius: 3px;
	background-color: #fff;
	border: 1px solid #0484f6;
}
/* sc-component-id: sc-7838496c-6 */
.eaYwS {
	margin-top: 20px;
	line-height: 30px;
}
/* sc-component-id: sc-7838496c-7 */
.cUnmdr {
	font-size: 15px;
	font-weight: 500;
}
/* sc-component-id: sc-7838496c-9 */
.kWnTmY {
	width: 303px;
	margin: 20px auto;
}
.btn {
	background-color:#5a5a5a;
	width: 60px;
	height: 40px;
	padding: 3px;
	margin: 5px 5px 5px;
	border-radius: 4px;
	border: solid 1px #5a5a5a;
	font-size: 9pt;
	color: #ffffff;
}
input:disabled {
    background: #F0F0F0;
    border: solid 1px #F0F0F0;
}
.blank {
	margin: 50px 300px 200px 300px;
}
.logo_image{
	align: center;
	width: 130px;
  	height: 130px;
}
</style>

<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
		function check(mode){

			if (mode=="pw" && f.userId.value==""){
				alert("아이디를 입력해 주세요!!")
				f.userId.focus()
				return
			}
			document.f.submit()
		}
		$(function(){
			//휴대폰 번호 인증
			var code2 = "";
			$("#phoneChk").click(function(){
				var mobile = $("#mobile").val();
				if(mobile == ''){
					alert('휴대폰 번호를 입력해주세요');
				}else{
				    var mobile = $("#mobile").val();
				    $.ajax({
				        type:"POST",
				        url:"phoneCheck?mobile=" + mobile,
				        data: {mobile:mobile},
				        cache : false,
				        success:function(data){
				            if(data == "error"){
				                alert("휴대폰 번호가 올바르지 않습니다.")
				            }else{                    
				                alert("인증번호 발송이 완료되었습니다. 휴대폰에서 인증번호를 확인해주세요.")
				                code2 = data;
				               
				            }
				        } 
				    });
				}
			});
			 
			//휴대폰 인증번호 대조
			$("#phoneChk2").click(function(){
				const next = 
				document.getElementById('next_btn');

			      if($("#phone2").val() == code2){
			           alert('인증성공')
			           next.disabled = false;
			           
			      }else{
			          alert('인증실패')
			          next.disabled = true;
			      }
			  });

			});
	</script>
</head>
<body>
			<br>
			<br>
		 <div align="center">
            <img alt="말랑 이미지 로고"
               src="/icon/sitelogo.png"
               class="logo_image" />
         </div>
	<div class="blank">
		<c:choose>
			<c:when test="${mode =='userId' }">
				<div class="sc-167db110-1 cghefr">아이디 찾기</div>
			</c:when>
			<c:otherwise>
				<div class="sc-7838496c-1 bRGbyl">비밀번호 찾기</div>	
			</c:otherwise>
		</c:choose>
		<br>
		<div align="center">
		<form name="f" action="find" method="post">
			<table>
				<c:if test="${mode == 'pw' }">
					<tr>
						<td><input type="text" placeholder="아이디" class="sc-aa2134f8-7 ByBKB" id="userId" name="userId" value="" /></td>
					</tr>
				</c:if>
				<tr>
					<td width="70%"><input class="sc-aa2134f8-7 ByBKB" id="mobile" type="text" name="mobile" placeholder="전화번호 입력"></td>
					<td width="30%"><input type="button" class="btn" value="인증요청" id="phoneChk"></td>
				</tr>
				<tr>
					<td width="70%"><input class="sc-aa2134f8-7 ByBKB" id="phone2" type="text" name="phone2" placeholder="인증번호 입력"></td>
					<td width="30%"><input type="button" class="btn" value="인증확인" id="phoneChk2"></td>
				</tr>
				</table>
				<input type="button" class="btn" disabled value="다음" id="next_btn"onclick="javascript:check('${mode }')">              
				<input type="button" class="btn" value="취소" onclick="javascript:self.close()">  

		</form>
		</div>
	</div>
	
</body>
</html>












