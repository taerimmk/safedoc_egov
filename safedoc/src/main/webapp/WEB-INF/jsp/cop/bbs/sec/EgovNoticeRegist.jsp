<%--
  Class Name : EgovNoticeRegist.jsp
  Description : 게시물  생성 화면
  Modification Information
 
      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2009.03.24  이삼섭          최초 생성
     2011.08.31  JJY       경량환경 버전 생성
 
    author   : 공통서비스 개발팀 이삼섭
    since    : 2009.03.24
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
<title><c:out value='${bdMstr.bbsNm}' /> - 게시글쓰기</title>
<c:import url="/EgovPageLink.do?link=main/inc/headerResource" />
<script type="text/javascript" src="<c:url value='/js/EgovBBSMng.js' />"></script>
<!-- script type="text/javascript" src="<c:url value='/html/egovframework/cmm/utl/htmlarea/EgovWebEditor.js'/>" ></script-->
<script type="text/javascript"
	src="<c:url value='/js/EgovMultiFile.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/js/EgovCalPopup.js'/>"></script>
<script type="text/javascript" src="<c:url value="/validator.do"/>"></script>
<validator:javascript formName="board" staticJavascript="false"
	xhtml="true" cdata="false" />
<c:if test="${sec == 'true'}">
	<c:set var="prefix" value="/sec" />
</c:if>
<script type="text/javascript">
	function fn_egov_validateForm(obj) {
		return true;
	}

	function fn_egov_regist_notice() {
		//document.board.onsubmit();

		if (!validateBoard(document.board)) {
			return;
		}
		if (confirm('<spring:message code="common.regist.msg" />')) {
			//document.board.onsubmit();
			document.board.action = "<c:url value='/cop/bbs${prefix}/insertBoardArticle.do'/>";
			document.board.submit();
		}
	}

	function fn_egov_select_noticeList() {
		document.board.action = "<c:url value='/cop/bbs${prefix}/selectBoardList.do'/>"
				+ "?bbsId=" + "<c:out value='${bdMstr.bbsId}'/>";
		document.board.submit();
	}
</script>
</head>
<body class="fixed-header" onLoad="fn_egov_initl_qnacn();">
	<div class="page-box">
		<div class="page-box-content">

			<c:import url="/EgovPageLink.do?link=main/inc/EgovIncHeader" />

			<div class="breadcrumb-box">
				<div class="container">
					<ul class="breadcrumb">
						<li><a href="index.html">Contact</a></li>
						<li><a href="/blog-view.html"><c:out
									value='${bdMstr.bbsNm}' /></a></li>
					</ul>
				</div>
			</div>
			<!-- .breadcrumb-box -->

			<section id="main"> <header class="page-header">
			<div class="container">
				<h1 class="title">
					<c:out value='${bdMstr.bbsNm}' />
					- 게시글쓰기
				</h1>
			</div>
			</header>
			<div class="container">
				<div class="row">
					<div class="col-sm-9 col-md-9">
						<form:form commandName="board" name="board" method="post"
							enctype="multipart/form-data">

							<input name="pageIndex" type="hidden"
								value="<c:out value='${searchVO.pageIndex}'/>" />
							<input type="hidden" name="bbsId"
								value="<c:out value='${bdMstr.bbsId}'/>" />
							<input type="hidden" name="bbsAttrbCode"
								value="<c:out value='${bdMstr.bbsAttrbCode}'/>" />
							<input type="hidden" name="bbsTyCode"
								value="<c:out value='${bdMstr.bbsTyCode}'/>" />
							<input type="hidden" name="replyPosblAt"
								value="<c:out value='${bdMstr.replyPosblAt}'/>" />
							<input type="hidden" name="fileAtchPosblAt"
								value="<c:out value='${bdMstr.fileAtchPosblAt}'/>" />
							<input type="hidden" name="posblAtchFileNumber"
								value="<c:out value='${bdMstr.posblAtchFileNumber}'/>" />
							<input type="hidden" name="posblAtchFileSize"
								value="<c:out value='${bdMstr.posblAtchFileSize}'/>" />
							<input type="hidden" name="tmplatId"
								value="<c:out value='${bdMstr.tmplatId}'/>" />

							<input type="hidden" name="cal_url"
								value="<c:url value='/sym/cmm/EgovNormalCalPopup.do'/>" />
							<input type="hidden" name="authFlag"
								value="<c:out value='${bdMstr.authFlag}'/>" />

							<c:if test="${sec == 'true'}">
								<input type="hidden" name="ntcrNm" value="dummy">
								<!-- validator 처리를 위해 지정 -->
								<input type="hidden" name="password" value="dummy">
								<!-- validator 처리를 위해 지정 -->
							</c:if>

							<c:if test="${bdMstr.bbsAttrbCode != 'BBSA01'}">
								<input name="ntceBgnde" type="hidden" value="10000101">
								<input name="ntceEndde" type="hidden" value="99991231">
							</c:if>
							<ul class="list-unstyled">
								<li>
									<div class="form-group has-feedback">
										<label>견적제목 <span class="required">*</span></label> <input
											id="nttSj" name="nttSj" class="form-control" type="text"
											placeholder="견적제목" required="" maxlength="60" /> <small
											class="help-block"><form:errors path="nttSj" /></small>
									</div> <%-- <div class="form-group has-feedback">
										<label>작성비밀번호 <span class="required">*</span></label> <input
											class="form-control" type="password" name="writngPassword"
											value="<c:out value='${result.writngPassword}'/>"
											maxlength="20" placeholder="작성비밀번호" required=""
											data-bv-field="Last Name" /><i class="form-control-feedback"
											data-bv-icon-for="Last Name" style="display: none;"></i> <small
											class="help-block" data-bv-validator="notEmpty"
											data-bv-for="Last Name" data-bv-result="NOT_VALIDATED"
											style="display: none;">Please enter a value</small>
									</div> --%>
								</li>
								<%-- <li>
									<div class="form-group has-feedback">
										<label>이메일 <!-- <span class="required">*</span> --></label> <input
											class="form-control" type="email" name="emailAdres"
											value="<c:out value='${result.emailAdres}'/>" maxlength="30"
											placeholder="이메일" required="" data-bv-field="email" /><input
											type="hidden" name="emailAnswerAt" id="emailAnswerAt"
											value="N" />
									</div>
								</li> --%>
								<li>
									<div class="form-group has-feedback">
										<label>질문내용 <span class="required">*</span></label>
										<textarea id="nttCn" name="nttCn" cols="95" rows="20"
											class="form-control"></textarea>
										<small class="help-block"><form:errors path="nttCn" /></small>
									</div>
								</li>
							</ul>
						</form:form>
						
						
						<div class="buttons" align="center" style="margin-bottom: 100px">
							<c:if test="${bdMstr.authFlag == 'Y'}">
								<a href="#LINK" class="btn btn-success"
									onclick="javascript:fn_egov_regist_notice(); return fasle;"><spring:message
										code="button.save" /></a>
							</c:if>
							<a href="#LINK" class="btn btn-info"
								onclick="javascript:fn_egov_select_noticeList(); return fasle;"><spring:message
									code="button.list" /></a>
						</div>

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
	
</body>
</html>