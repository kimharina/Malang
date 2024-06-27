<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>

<style>
@media all and (max-width: 800px) {
	img {
		width: 100%;
	}
}
</style>

<style
	data-styled="fZpils bomZsk flgLcX dtdrmX biejse bVXsF dCjETc bbkazi gIfxQX bqKtOs bjCfpT hHiLWC cGRJiW"
	data-styled-version="4.4.1">
/* sc-component-id: sc-7fea6738-0 */
.fZpils {
	width: 400px;
	margin: 0 auto;
	padding-top: 90px;
}

@media all and (max-width:800px) {
	.fZpils {
		width: -webkit-fit-content;
		width: -moz-fit-content;
		width: fit-content;
		margin: 0 auto;
		padding: 52px 20px 0;
	}
}
/* sc-component-id: sc-7fea6738-1 */
.bomZsk {
	color: #000000;
	font-size: 26px;
	font-weight: bold;
	text-align: center;
	margin-bottom: 40px;
}
/* sc-component-id: sc-7fea6738-2 */
.flgLcX {
	width: 100%;
	margin-top: 20px;
	border: none !important;
	font-size: 16px !important;
	border-radius: 0 !important;
	padding: 0 0 8px 0 !important;
	border-bottom: 1px solid #f0f0f0 !important;
}
/* sc-component-id: sc-7fea6738-3 */
.dtdrmX {
	position: relative;
}

/* sc-component-id: sc-7fea6738-4 */
.biejse {
	position: absolute;
	top: 23px;
	right: 23px;
	width: 20px;
	height: 16px;
	cursor: pointer;
}
/* sc-component-id: sc-7fea6738-5 */
.gIfxQX {
	width: 303px;
	margin: 20px auto;
}
/* sc-component-id: sc-7fea6738-6 */
.bVXsF {
	text-align: right;
	color: #333;
	margin: 10px 0 30px;
}
/* sc-component-id: sc-7fea6738-7 */
.dCjETc {
	color: #333;
	font-size: 15px;
	cursor: pointer;
}
/* sc-component-id: sc-7fea6738-8 */
.bbkazi {
	color: #333;
	padding: 0 5px;
}
/* sc-component-id: sc-7fea6738-9 */
.bqKtOs {
	color: #ffffff;
	cursor: pointer;
	padding: 18px 0;
	font-size: 17px;
	font-weight: 500;
	text-align: center;
	border-radius: 3px;
	margin: 15px 0 20px;
	background-color: #0484f6;
}
/* sc-component-id: sc-7fea6738-10 */
.bjCfpT {
	text-align: center;
}
/* sc-component-id: sc-7fea6738-11 */
.hHiLWC {
	font-size: 17px;
}
/* sc-component-id: sc-7fea6738-12 */
.cGRJiW {
	color: #0484f6;
	font-size: 17px;
	cursor: pointer;
}
.login {
	width: 100%;
	height: 60px;
	background: #93b8fe;
	border: #93b8fe;
	border-radius: 4px;
	font-weight: 700;
	font-size: 16px;
	color: #ffffff;
}
</style>
<script type="text/javascript">
function searchMember(mode){
	window.open("find?mode="+mode, "find", "width=650, height=450")
}

function loginCheck(){
	let userId = document.getElementById('userId');
	let pw = document.getElementById('pw');
	
	if(userId.value == ""){
		alert('아이디는 필수 항목입니다.');
	}else if(pw.value == ""){
		alert('비밀번호는 필수 항목입니다.');
	}else{
		var f = document.getElementById('f');
		f.submit();
	}
}
</script>
<body>
	<form action="loginProc" method="post" id="f">
		<div id="__next">
			<div class="sc-7fea6738-0 fZpils">
				<div class="sc-7fea6738-1 bomZsk">ID/PW 로그인</div>
				<input type="text" placeholder="아이디입력" class="sc-7fea6738-2 flgLcX" name="userId" id="userId"/>
				<div class="sc-7fea6738-3 dtdrmX">
					<input type="password" placeholder="비밀번호 입력" class="sc-7fea6738-2 flgLcX" name="pw" id="pw" />
				</div>
				<div class="sc-7fea6738-6 bVXsF">
					<span class="sc-7fea6738-7 dCjETc">
						<a href="javascript:searchMember('userId')">아이디 찾기</a>
					</span><span class="sc-7fea6738-8 bbkazi">|</span>
					<span class="sc-7fea6738-7 dCjETc">
						<a href="javascript:searchMember('pw')">비밀번호 찾기</a>
					</span>
				</div>
				<div class="sc-7fea6738-5 gIfxQX">
					<div></div>
				</div>
				<input type="button" class="login" onclick="loginCheck()"value="로그인">
				<br><br>
				<div class="sc-7fea6738-10 bjCfpT">
					<span class="sc-7fea6738-11 hHiLWC">처음이신가요? </span>
					<span class="sc-7fea6738-12 cGRJiW">
						<a href="certification">회원가입</a>
					</span>
				</div>
			</div>
		</div>
	</form>
</body>
</html>