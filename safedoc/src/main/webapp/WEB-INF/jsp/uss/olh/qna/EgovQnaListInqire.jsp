<%--
  Class Name : EgovQnaListInqire.jsp
  Description : EgovQnaListInqire 화면
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
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Q&amp;A 목록</title>
<c:import url="/EgovPageLink.do?link=main/inc/headerResource" />
<script type="text/javaScript" language="javascript">
	/*********************************************************
	 * 초기화
	 ******************************************************** */
	function fn_egov_initl_qnalist() {

		// 첫 입력란에 포커스..
		document.QnaListForm.searchKeyword.focus();

	}

	/*********************************************************
	 * 페이징 처리 함수
	 ******************************************************** */
	function fn_egov_select_linkPage(pageNo) {

		document.QnaListForm.pageIndex.value = pageNo;
		document.QnaListForm.action = "<c:url value='/uss/olh/qna/QnaListInqire.do'/>";
		document.QnaListForm.submit();

	}

	/*********************************************************
	 * 조회 처리 함수
	 ******************************************************** */
	function fn_egov_search_qnacn() {

		document.QnaListForm.pageIndex.value = 1;
		document.QnaListForm.submit();

	}

	/*********************************************************
	 * Q&A 등록화면 호출
	 ******************************************************** */
	function fn_egov_regist_cnsltcn() {

		document.QnaListForm.action = "<c:url value='/uss/olh/qna/QnaCnRegistView.do'/>";
		document.QnaListForm.submit();

	}

	/* ********************************************************
	 * 상세회면 처리 함수
	 ******************************************************** */
	function fn_egov_inquire_qnadetail(qaId) {

		// 사이트 키값(siteId) 셋팅.
		document.QnaListForm.qaId.value = qaId;
		//  document.QnaListForm.action = "<c:url value='/uss/olh/qna/QnaDetailInqire.do'/>";
		document.QnaListForm.action = "<c:url value='/uss/olh/qna/QnaInqireCoUpdt.do'/>";
		document.QnaListForm.submit();

	}
</script>
</head>
<body>
	<div class="page-box">
		<div class="page-box-content">

			<c:import url="/EgovPageLink.do?link=main/inc/EgovIncHeader" />

			<div class="breadcrumb-box">
				<div class="container">
					<ul class="breadcrumb">
						<li><a href="index.html">Q&amp;A</a></li>
						<li><a href="#">Q&amp;A 게시판</a></li>
					</ul>
				</div>
			</div>
			<!-- .breadcrumb-box -->

			<section id="main" class="page"> <header
				class="page-header">
			<div class="container">
				<h1 class="title">Q&amp;A 목록</h1>
			</div>
			</header>
			<div class="container">
				<div class="row">
					<article class="content col-sm-12 col-md-12">
					<div class="bs-docs-section">
						<!-- <div class="bs-callout bs-callout-danger">
							
						</div> -->
						<div class="bs-example">
							<form class="form-inline" role="form">
								<div class="form-group">
									<label class="sr-only" for="exampleInputEmail2">Email
										address</label> <input type="email" class="form-control"
										id="exampleInputEmail2" placeholder="Enter email">
								</div>
								
								<button type="submit" class="btn btn-default">Sign in</button>
							</form>
							</div>
						<table class="table table-bordered table-hover">
							<thead>
								<tr>
									<th>#</th>
									<th>First Name</th>
									<th>Last Name</th>
									<th>Username</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td>Mark</td>
									<td>Otto</td>
									<td>@mdo</td>
								</tr>
								<tr>
									<td>2</td>
									<td>Jacob</td>
									<td>Thornton</td>
									<td>@fat</td>
								</tr>
								<tr>
									<td>3</td>
									<td colspan="2">Larry the Bird</td>
									<td>@twitter</td>
								</tr>
							</tbody>
						</table>

					</div>
				</div>
				</article>
				<!-- .content -->
			</div>
		</div>
		</section>
		<!-- #main -->

	</div>
	<!-- .page-box-content -->
	</div>
	<!-- .page-box -->

	<c:import url="/EgovPageLink.do?link=main/inc/EgovIncFooter" />
	<c:import url="/EgovPageLink.do?link=main/inc/footerResource" />
</body>
</html>
