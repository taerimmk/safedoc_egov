<%--
  Class Name : EgovLoginUsr.jsp
  Description : Login 인증 화면
  Modification Information
 
      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2009.03.03  박지욱          최초 생성
     2011.08.31  JJY       경량환경 버전 생성
 
    author   : 공통서비스개발팀 박지욱
    since    : 2009.03.03
--%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="full-height">
<head>
<title>Login</title>
<c:import url="/EgovPageLink.do?link=main/inc/headerResource" />
</head>
<body class="page-login-promo blur-page"
	data-blur-image="/img/content/bg-login.jpg" data-blur-amount="1"
	onLoad="fnInit();">

	<div class="page-box">

		<header class="header header-three">
		<div class="header-wrapper">
			<div class="container">
				<div class="row">
					<div class="logo-box col-sm-12 col-md-12">
						<div class="logo">
							<a href="/"> <img src="/img/logo.png" class="logo-img" alt="">
							</a>
						</div>
					</div>
				</div>
				<!--.row -->
			</div>
		</div>
		<!-- .header-wrapper --> </header>
		<!-- .header -->

		<section id="main">
		<div class="container login-register">
			<div class="row">
				<div class="col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
					<div data-appear-animation="bounceInDown">
						<div class="rotation">
							<div class="front-end">
								<div class="form-content">
									<!-- <form class="form-box login-form form-validator"> -->
									<form name="loginForm"
										action="<c:url value='/uat/uia/actionSecurityLogin.do'/>"
										method="post" class="form-box login-form form-validator">
										<div style="visibility: hidden; display: none;">
											<input name="iptSubmit1" type="submit" value="전송" title="전송" />
										</div>
										<input type="hidden" name="message" value="${message}" /> <input
											name="userSe" type="hidden" value="GNR" /> <input
											name="j_username" type="hidden" />
										<h3 class="title">
											로 그 인<small>
										</h3>
										<!-- <p>If you have an account with us, please log in.</p> -->

										<div class="form-group">
											<label>아이디: <span class="required">*</span></label> <input
												class="form-control" type="text" name="id" id="id" required
												maxlength="10" />
										</div>

										<div class="form-group">
											<label>비밀번호: <span class="required">*</span></label> <input
												class="form-control" type="password" name="password"
												id="password" required
												onKeyDown="javascript:if (event.keyCode == 13) { actionLogin(); }" />
										</div>
										<!-- <div class="form-group">
					<label class="checkbox">
					  <input type="checkbox"> Remember password
					</label>
				  </div> -->

										<div class="buttons-box clearfix">
											<button class="btn btn-default">로그인</button>
											<!-- <button type="button" class="btn btn-info"><i class="fa fa-twitter"></i> Login with Twitter</button> -->
											<!-- <a href="#" class="switch-form forgot">Forgot Your Password?</a> -->
											<span class="required"><b>*</b> Required Field</span>
										</div>
									</form>
									<!-- .form-box -->
								</div>
							</div>
							<!-- .front-end -->


						</div>

					</div>
				</div>
			</div>
		</div>
		<!-- .container --> </section>
		<!-- #main -->

	</div>
	<!-- .page-box -->
	<c:import url="/EgovPageLink.do?link=main/inc/footerResource" />
	<script type="text/javascript">
	<!--
		function actionLogin() {

			if (document.loginForm.id.value == "") {
				alert("아이디를 입력하세요");
			} else if (document.loginForm.password.value == "") {
				alert("비밀번호를 입력하세요");
			} else {
				document.loginForm.action = "<c:url value='/uat/uia/actionSecurityLogin.do'/>";
				//document.loginForm.j_username.value = document.loginForm.userSe.value + document.loginForm.username.value;
				//document.loginForm.action="<c:url value='/j_spring_security_check'/>";
				document.loginForm.submit();
			}
		}

		function goRegiUsr() {
			var userSe = document.loginForm.userSe.value;
			// 일반회원
			if (userSe == "GNR") {
				document.loginForm.action = "<c:url value='/uss/umt/cmm/EgovMberSbscrbView.do'/>";
				document.loginForm.submit();
			} else {
				alert("일반회원 가입만 허용됩니다.");
			}
		}

		function setCookie(name, value, expires) {
			document.cookie = name + "=" + escape(value) + "; path=/; expires="
					+ expires.toGMTString();
		}

		function getCookie(Name) {
			var search = Name + "="
			if (document.cookie.length > 0) { // 쿠키가 설정되어 있다면
				offset = document.cookie.indexOf(search)
				if (offset != -1) { // 쿠키가 존재하면
					offset += search.length
					// set index of beginning of value
					end = document.cookie.indexOf(";", offset)
					// 쿠키 값의 마지막 위치 인덱스 번호 설정
					if (end == -1)
						end = document.cookie.length
					return unescape(document.cookie.substring(offset, end))
				}
			}
			return "";
		}

		function saveid(form) {
			var expdate = new Date();
			// 기본적으로 30일동안 기억하게 함. 일수를 조절하려면 * 30에서 숫자를 조절하면 됨
			if (form.checkId.checked)
				expdate.setTime(expdate.getTime() + 1000 * 3600 * 24 * 30); // 30일
			else
				expdate.setTime(expdate.getTime() - 1); // 쿠키 삭제조건
			setCookie("saveid", form.id.value, expdate);
		}

		function getid(form) {
			form.checkId.checked = ((form.id.value = getCookie("saveid")) != "");
		}

		function fnInit() {
			var message = document.loginForm.message.value;
			if (message != "") {
				alert(message);
			}

			getid(document.loginForm);
		}
	//-->
	</script>
</body>
</html>