<%--
  Class Name : EgovQnaPasswordConfirm.jsp
  Description : EgovQnaPasswordConfirm 화면
  Modification Information
 
      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2009.02.01   박정규          최초 생성
     2011.08.31  JJY       경량환경 버전 생성
 
    author   : 공통서비스개발팀 박정규
    since    : 2009.02.01
--%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="full-height">
<head>
<title>작성비밀번호 확인</title>
<c:import url="/EgovPageLink.do?link=main/inc/headerResource" />
</head>
<body>

	<div class="page-box">
		<div class="">
			<div class="row">
				<!-- <div class="col-sm-12 col-md-12"> -->
				<div class="front-end">
					<div class="form-content">
						<form class="form-box" name="QnaManageForm" method="post"
							onsubmit="fn_egov_confirm_qnapassword();" action="#LINK">
							<input type="submit" id="invisible" class="invisible" />
							<!-- <h3 class="title">Sign In</h3>
								<p>If you have an account with us, please log in.</p> -->
							<div class="form-group">
								<label>비밀번호 확인: <span class="required">*</span></label> <input
									class="form-control" type="password" name="writngPassword"
									value="" maxlength="20" />
							</div>

							<div class="buttons-box clearfix">
								<button class="btn btn-info"
									onclick="javascript:fn_egov_confirm_qnapassword(); return false;">확인</button>
								<button class="btn btn-default"
									onclick="JavaScript:fn_egov_cancel_qnapassword(); return false;">취소</button>

							</div>
						</form>
						<!-- .form-box -->
					</div>
				</div>
				<!-- .front-end -->
				<!-- </div> -->
			</div>
		</div>
		<!-- #main -->

	</div>
	<!-- .page-box -->
<script type="text/javaScript" language="javascript">

/* ********************************************************
 * 초기화
 ******************************************************** */
function fn_egov_initl_qnacn(){

	// 작성글 비밀번호 입력란에 포커스..
	document.QnaManageForm.writngPassword.focus();

}

/* ********************************************************
 * 확인처리
 ******************************************************** */
function fn_egov_confirm_qnapassword(){

	var opener = window.dialogArguments;

	//  현재화면의 작성 비밀번호
	var	ls_writngPassword = document.QnaManageForm.writngPassword.value;
	
	// 부모화면으로 작성비밀번호를 넘긴다.
	opener.document.QnaManageForm.writngPassword.value = ls_writngPassword;	
	
	// 부모화면으로 결과값을 True 넘긴다.
	window.returnValue = true;	
	window.close();	

		
}

/* ********************************************************
 * 취소처리
 ******************************************************** */
function fn_egov_cancel_qnapassword() {
	
	self.close();
			
}

</script>
</body>
</html>