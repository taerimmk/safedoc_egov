<%--
  Class Name : EgovQnaDetailInqure.jsp
  Description : EgovQnaDetailInqure 화면
  Modification Information
 
      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2009.02.01   박정규          최초 생성
     2011.08.31  JJY       경량환경 버전 생성
 
    author   : 공통서비스개발팀 박정규
    since    : 2009.02.01
--%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="validator"
	uri="http://www.springmodules.org/tags/commons-validator"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>Q&amp;A 수정</title>
<c:import url="/EgovPageLink.do?link=main/inc/headerResource" />
<script type="text/javascript" src="<c:url value="/validator.do"/>"></script>
<validator:javascript formName="qnaManageVO" staticJavascript="false"
	xhtml="true" cdata="false" />

</head>
<body class="fixed-header" onLoad="fn_egov_initl_qnacn();">
	<div class="page-box">
		<div class="page-box-content">

			<c:import url="/EgovPageLink.do?link=main/inc/EgovIncHeader" />

			<div class="breadcrumb-box">
				<div class="container">
					<ul class="breadcrumb">
						<li><a href="index.html">Q&amp;A</a></li>
						<li><a href="/blog-view.html">Q&amp;A 게시판</a></li>
					</ul>
				</div>
			</div>
			<!-- .breadcrumb-box -->

			<section id="main"> <header class="page-header">
			<div class="container">
				<h1 class="title">Q&amp;A 수정</h1>
			</div>
			</header>
			<div class="container">
				<div class="row">
					<div class="col-sm-9 col-md-9">
						<form:form commandName="qnaManageVO" name="qnaManageVO"
							action="${pageContext.request.contextPath}/uss/olh/qna/QnaCnUpdt.do"
							method="post">
							<input name="qaId" type="hidden"
								value="<c:out value='${result.qaId}'/>">
							<input name="answerCn" type="hidden" value="Testing..." />
							<ul class="list-unstyled">
								<li>
									<div class="form-group has-feedback">
										<label>작성자명 <span class="required">*</span></label>
										<form:input path="wrterNm" class="form-control" type="text"
											placeholder="작성자명" required="" data-bv-field="First Name"
											maxlength="20" />
										<i class="form-control-feedback" data-bv-icon-for="First Name"
											style="display: none;"></i> <small class="help-block"
											data-bv-validator="notEmpty" data-bv-for="First Name"
											data-bv-result="NOT_VALIDATED" style="display: none;"><form:errors
												path="wrterNm" /></small>
									</div>

									<div class="form-group has-feedback">
										<label>작성비밀번호 <span class="required">*</span></label> <input
											class="form-control" type="password" name="writngPassword"
											value="<c:out value='${result.writngPassword}'/>"
											maxlength="20" placeholder="작성비밀번호" required=""
											data-bv-field="Last Name" /><i class="form-control-feedback"
											data-bv-icon-for="Last Name" style="display: none;"></i> <small
											class="help-block" data-bv-validator="notEmpty"
											data-bv-for="Last Name" data-bv-result="NOT_VALIDATED"
											style="display: none;">Please enter a value</small>
									</div>
								</li>
								<li>
									<div class="form-group has-feedback">
										<label>이메일 <!-- <span class="required">*</span> --></label> <input
											class="form-control" type="email" name="emailAdres"
											value="<c:out value='${result.emailAdres}'/>" maxlength="30"
											placeholder="이메일" required="" data-bv-field="email" /><input
											type="hidden" name="emailAnswerAt" id="emailAnswerAt"
											value="N" />
									</div>
								</li>
								<li>
									<div class="form-group has-feedback">
										<label>질문제목 <span class="required">*</span></label>
										<form:input path="qestnSj" maxlength="70" class="form-control"
											type="text" placeholder="질문제목" required="" />
										<small class="help-block" data-bv-validator="notEmpty"
											data-bv-result="NOT_VALIDATED"><form:errors
												path="qestnSj" /></small>
									</div>

									<div class="form-group has-feedback">
										<label>질문내용 <span class="required">*</span></label>
										<form:textarea path="qestnCn" cols="95" rows="20"
											cssClass="form-control" />
										<small class="help-block" data-bv-validator="notEmpty"
											data-bv-result="NOT_VALIDATED"><form:errors
												path="qestnCn" /></small>
									</div>
								</li>
							</ul>
						</form:form>

						<a href="#" class="btn btn-success"
							onclick="fn_egov_updt_qnacn(document.qnaManageVO,'<c:out value="${result.qaId}"/>'); return false;" >저장</a>
						
						<a href="<c:url value='/uss/olh/qna/QnaListInqire.do'/>"
							class="btn btn-info"
							onclick="fn_egov_inqire_qnalist(); return false;">목록</a>
					</div>
				</div>

			</div>
			<!-- .container --> </section>
			<!-- #main -->

		</div>
		<!-- .page-box-content -->
	</div>


	<c:import url="/EgovPageLink.do?link=main/inc/EgovIncFooter" />
	<c:import url="/EgovPageLink.do?link=main/inc/footerResource" />
	<script type="text/javaScript" language="javascript">
		/* ********************************************************
		 * 초기화
		 ******************************************************** */
		function fn_egov_initl_qnacn() {

			// 첫 입력란에 포커스..

		}

		/* ********************************************************
		 * 저장처리화면
		 ******************************************************** */
		function fn_egov_updt_qnacn(form, qaId) {

			if (!validateQnaManageVO(form)) {

				return;

			} else {

				form.qaId.value = qaId;
				form.action = "<c:url value='/uss/olh/qna/QnaCnUpdt.do'/>";
				form.submit();

			}

		}

		/* ********************************************************
		 * 목록 으로 가기
		 ******************************************************** */
		function fn_egov_inqire_qnalist() {

			qnaManageVO.action = "<c:url value='/uss/olh/qna/QnaListInqire.do'/>";
			qnaManageVO.submit();

		}
	</script>
</body>
</html>