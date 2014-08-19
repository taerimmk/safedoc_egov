<%--
  Class Name : EgovNoticeInqire.jsp
  Description : 게시물 조회 화면
  Modification Information
 
      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2009.03.23   이삼섭          최초 생성
     2009.06.26   한성곤          2단계 기능 추가 (댓글관리, 만족도조사)
     2011.08.31  JJY       경량환경 버전 생성
 
    author   : 공통서비스 개발팀 이삼섭
    since    : 2009.03.23
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title><c:out value='${result.bbsNm}' /> - 글조회</title>
<c:import url="/EgovPageLink.do?link=main/inc/headerResource" />
<script type="text/javascript" src="<c:url value='/js/EgovBBSMng.js' />"></script>
<c:if test="${sec == 'true'}">
	<c:set var="prefix" value="/sec" />
</c:if>
<script type="text/javascript">
	function onloading() {
		if ("<c:out value='${msg}'/>" != "") {
			alert("<c:out value='${msg}'/>");
		}
	}

	function fn_egov_select_noticeList(pageNo) {
		document.frm.pageIndex.value = pageNo;
		document.frm.action = "<c:url value='/cop/bbs${prefix}/selectBoardList.do'/>";
		document.frm.submit();
	}

	function fn_egov_delete_notice() {
		if ("<c:out value='${sec}'/>" == "true"
				&& document.frm.password.value == '') {
			alert('등록시 사용한 패스워드를 입력해 주세요.');
			document.frm.password.focus();
			return;
		}

		if (confirm('<spring:message code="common.delete.msg" />')) {
			document.frm.action = "<c:url value='/cop/bbs${prefix}/deleteBoardArticle.do'/>";
			document.frm.submit();
		}
	}

	function fn_egov_moveUpdt_notice() {
		if ("<c:out value='${sec}'/>" == "true"
				&& document.frm.password.value == '') {
			alert('등록시 사용한 패스워드를 입력해 주세요.');
			document.frm.password.focus();
			return;
		}

		document.frm.action = "<c:url value='/cop/bbs${prefix}/forUpdateBoardArticle.do'/>";
		document.frm.submit();
	}

	function fn_egov_addReply() {
		document.frm.action = "<c:url value='/cop/bbs${prefix}/addReplyBoardArticle.do'/>";
		document.frm.submit();
	}
</script>
<!-- 2009.06.29 : 2단계 기능 추가  -->
<c:if test="${useComment == 'true'}">
	<c:import url="/cop/bbs/selectCommentList.do" charEncoding="utf-8">
		<c:param name="type" value="head" />
	</c:import>
</c:if>
<c:if test="${useSatisfaction == 'true'}">
	<c:import url="/cop/bbs/selectSatisfactionList.do" charEncoding="utf-8">
		<c:param name="type" value="head" />
	</c:import>
</c:if>
<c:if test="${useScrap == 'true'}">
	<script type="text/javascript">
		function fn_egov_addScrap() {
			document.frm.action = "<c:url value='/cop/bbs/addScrap.do'/>";
			document.frm.submit();
		}
	</script>
</c:if>
</head>
<body class="fixed-header">
	<div class="page-box">
		<div class="page-box-content">

			<c:import url="/EgovPageLink.do?link=main/inc/EgovIncHeader" />

			<div class="breadcrumb-box">
				<div class="container">
					<ul class="breadcrumb">
						<li><a href="index.html">Contact</a></li>
						<li><a href="/blog-view.html"><c:out
									value='${result.bbsNm}' /> - 글조회</a></li>
					</ul>
				</div>
			</div>
			<!-- .breadcrumb-box -->

			<section id="main"> <header class="page-header">
			<div class="container">
				<h1 class="title">
					<c:out value="${result.nttSj}" />
				</h1>
			</div>
			</header>
			<div class="container">
				<div class="row">
					<form name="frm" method="post"
						action="<c:url value='/cop/bbs${prefix}/selectBoardList.do'/>">
						<input type="hidden" name="pageIndex"
							value="<c:out value='${searchVO.pageIndex}'/>"> <input
							type="hidden" name="bbsId"
							value="<c:out value='${result.bbsId}'/>"> <input
							type="hidden" name="nttId"
							value="<c:out value='${result.nttId}'/>"> <input
							type="hidden" name="parnts"
							value="<c:out value='${result.parnts}'/>"> <input
							type="hidden" name="sortOrdr"
							value="<c:out value='${result.sortOrdr}'/>"> <input
							type="hidden" name="replyLc"
							value="<c:out value='${result.replyLc}'/>"> <input
							type="hidden" name="nttSj"
							value="<c:out value='${result.nttSj}'/>"> <input
							type="submit" id="invisible" class="invisible" />
						<div class="content blog blog-post col-sm-9 col-md-9">


							<article class="post">
							<div class="entry-content">
								<p>
									<c:out value="${result.nttCn}" escapeXml="false" />
								</p>

							</div>
							</article>
							<!-- .post -->

						</div>
						<!-- .content -->

						<div class="portfolio-tags bottom-padding col-sm-9 col-md-9">
							<p>
								<b>작성자명:&nbsp;&nbsp;</b><span><c:out
										value="${result.ntcrNm}" /></span>
							</p>
							<p>
								<b>작성시간:&nbsp;&nbsp;</b><span><c:out
										value="${result.frstRegisterPnttm}" /></span>
							</p>
							<p>
								<b>조회수:&nbsp;&nbsp;</b><span><c:out
										value="${result.inqireCo}" /></span>
							</p>
							
							<p>
								<b>비밀번호 확인:&nbsp;&nbsp;</b><span>
								<input
										type="password" name="password" value="" class="form-control-a"
										placeholder="비밀번호" /></span>
							</p>
							<!-- <div class="col-sm-9 col-md-9">
								<div class="form-group has-feedback ">
									<label>비밀번호 <span class="required">*</span></label> <input
										type="password" name="password" value="" class="form-control"
										placeholder="비밀번호 확인" /> <small class="help-block"></small>
								</div>
							</div> -->
							<c:if test="${result.frstRegisterId == sessionUniqId}">
								<a href="#LINK" class="btn btn-warning"
									onclick="javascript:fn_egov_moveUpdt_notice(); return false;">수정</a>
								<a href="#LINK" class="btn btn-danger"
									onclick="javascript:fn_egov_delete_notice(); return false;">삭제</a>
							</c:if>
							<c:if test="${result.replyPosblAt == 'Y'}">
								<a href="#LINK" class="btn btn-info"
									onclick="javascript:fn_egov_addReply(); return false;">답글작성</a>
							</c:if>
							<a href="#LINK" class="btn btn-info"
								onclick="javascript:fn_egov_select_noticeList('1'); return false;">목록</a>
						</div>

					</form>

				</div>

			</div>
			<!-- .container --> </section>
			<!-- #main -->

		</div>
		<!-- .page-box-content -->
	</div>
	<!-- .page-box -->


	<c:import url="/EgovPageLink.do?link=main/inc/EgovIncFooter" />
	<c:import url="/EgovPageLink.do?link=main/inc/footerResource" />


</body>
</html>