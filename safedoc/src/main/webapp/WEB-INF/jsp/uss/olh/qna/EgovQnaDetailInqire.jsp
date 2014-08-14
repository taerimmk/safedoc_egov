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
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>Q&amp;A 상세</title>
<c:import url="/EgovPageLink.do?link=main/inc/headerResource" />
</head>
<body class="fixed-header">
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
				<h1 class="title">
					<c:out value="${result.qestnSj}" />
				</h1>
			</div>
			</header>
			<div class="container">
				<div class="row">
					<div class="content blog blog-post col-sm-9 col-md-9">
						<article class="post">
						<div class="entry-content">
							<p>
								<c:out value="${result.qestnCn}" />
							</p>

						</div>
						</article>
						<!-- .post -->

					</div>
					<!-- .content -->

					<div class="portfolio-tags bottom-padding col-sm-9 col-md-9">
						<p>
							<b>작성자명:&nbsp;&nbsp;</b><span><c:out
									value="${result.wrterNm}" /></span>
						</p>
						<p>
							<b>작성일자:&nbsp;&nbsp;</b><span><c:out
									value='${fn:substring(result.writngDe, 0,4)}' />-<c:out
									value='${fn:substring(result.writngDe, 4,6)}' />-<c:out
									value='${fn:substring(result.writngDe, 6,8)}' /></span>
						</p>
						<p>
							<b>질의응답처리상태:&nbsp;&nbsp;</b><span><c:out
									value="${result.qnaProcessSttusCodeNm}" /></span>
						</p>
						<a href="#" class="btn btn-warning"
							onclick="fn_egov_updt_qnacn('<c:out value="${result.qaId}"/>'); return false;">수정</a>
						<a
							href="<c:url value='/uss/olh/qna/QnaCnDelete.do'/>?qaId=<c:out value='${result.qaId}'/>"
							class="btn btn-danger"
							onclick="fn_egov_delete_qnacn('<c:out value="${result.qaId}"/>'); return false;">삭제</a>
						<a
							href="<c:url value='/uss/olh/qna/QnaListInqire.do'/>"
							class="btn btn-info"
							onclick="fn_egov_inqire_qnalist(); return false;">목록</a>
					</div>



				</div>
				<!-- 답변내용이 있을경우 Display... -->
				<c:if test="${result.qnaProcessSttusCode == '3'}">
					<div class="bottom-padding bottom-padding-min">
						<div class="title-box">
							<h2 class="title">답변내용</h2>
						</div>
						<div class="clearfix"></div>
						<div class="row">

							<div class="content blog blog-post col-sm-9 col-md-9">
								<article class="post">
								<div class="entry-content">
									<p>
										<c:out value="${result.answerCn}" />
									</p>
								</div>
								</article>
								<!-- .post -->

							</div>
							<div class="portfolio-tags bottom-padding col-sm-9 col-md-9">
								<p>
									<b>답변일자:&nbsp;&nbsp;</b><span><c:if
											test="${result.answerDe != null}">
											<c:out value='${fn:substring(result.answerDe, 0,4)}' />-<c:out
												value='${fn:substring(result.answerDe, 4,6)}' />-<c:out
												value='${fn:substring(result.answerDe, 6,8)}' />
										</c:if></span>
								</p>
							</div>

							<div class="clearfix"></div>
						</div>
					</div>
				</c:if>
			</div>
			<!-- .container --> </section>
			<!-- #main -->

		</div>
		<!-- .page-box-content -->
	</div>
	<!-- .page-box -->
	<form name="QnaManageForm"
		action="<c:url value='/uss/olh/qna/QnaPasswordConfirm.do'/>"
		method="post">
		<input name="qaId" type="hidden"
			value="<c:out value='${result.qaId}'/>" /> <input
			name="writngPassword" type="hidden" value="" /> <input
			name="passwordConfirmAt" type="hidden" value="" />
	</form>
	
	<c:import url="/EgovPageLink.do?link=main/inc/EgovIncFooter" />
	<c:import url="/EgovPageLink.do?link=main/inc/footerResource" />
	<script type="text/javaScript" language="javascript">
		/* ********************************************************
		 * 목록 으로 가기
		 ******************************************************** */
		function fn_egov_inqire_qnalist() {

			document.QnaManageForm.action = "<c:url value='/uss/olh/qna/QnaListInqire.do'/>";
			document.QnaManageForm.submit();

		}

		/* ********************************************************
		 * 수정처리화면
		 ******************************************************** */
		function fn_egov_updt_qnacn(qaId) {

			// Update하기 위한 키값을 셋팅
			document.QnaManageForm.qaId.value = qaId;

			var url = "<c:url value='/uss/olh/qna/QnaPasswordConfirmView.do'/>";
			var status = "dialogWidth=350px;dialogHeight=200px;resizable=no;center=yes";

			// 작성비밀번호 확인 화면을 호출한다.
			var returnValue = window.showModalDialog(url, self, status);

			// 결과값을 받아. 결과를 Submit한다.
			if (returnValue) {

				document.QnaManageForm.action = "<c:url value='/uss/olh/qna/QnaPasswordConfirm.do'/>";
				document.QnaManageForm.submit();

			}

		}

		/**********************************************************
		 * 삭제처리화면
		 ******************************************************** */
		function fn_egov_delete_qnacn(qaId) {

			if (confirm("<spring:message code="common.delete.msg" />")) {

				// Delete하기 위한 키값을 셋팅
				document.QnaManageForm.qaId.value = qaId;

				var url = "<c:url value='/uss/olh/qna/QnaPasswordConfirmView.do'/>";
				var status = "dialogWidth=350px;dialogHeight=200px;resizable=no;center=yes";
				// 작성비밀번호 확인 화면을 호출한다.
				var returnValue = window.showModalDialog(url, self, status);

				// 결과값을 받아. 결과를 Submit한다.
				if (returnValue) {
					document.QnaManageForm.action = "<c:url value='/uss/olh/qna/QnaCnDelete.do'/>";
					document.QnaManageForm.submit();
				}
			}

		}

		/*********************************************************
		 * 작성비밀번호.체크..
		 ******************************************************** */
		function fn_egov_passwordConfirm() {

			alert("작성 비밀번호를 확인 바랍니다!");

		}
	</script>
	<c:if test="${result.passwordConfirmAt == 'N,'}">
		<script type="text/javascript">
			fn_egov_passwordConfirm();
		</script>
	</c:if>
	
</body>
</html>