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

			<section id="main"> <header class="page-header">
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
							<form class="form-inline" role="form" name="QnaListForm"
								action="<c:url value='/uss/olh/qna/QnaListInqire.do'/>"
								method="post">
								<!--실명확인을 위한  설정   Start...-->
								<input type="hidden" name="ihidnum" value=""> <input
									type="hidden" name="realname" value=""> <input
									type="hidden" name="nextUrlName" value="QA등록"> <input
									type="hidden" name="nextUrl"
									value="/uss/olh/qna/QnaCnRegistView.do"> <input
									type="hidden" name="certificationAt" value="${certificationAt}">
								<input type="hidden" name="loginRealnmAt" value=""> <input
									type="hidden" name="wrterNm" value="">
								<!--실명확인을 위한  설정 End......-->
								<div class="form-group">
									<select class="form-control" name="searchCondition">
										<option selected value="">선택하세요</option>
										<option value="wrterNm"
											<c:if test="${searchVO.searchCondition == 'wrterNm'}">selected="selected"</c:if>>작성자명</option>
										<option value="qestnSj"
											<c:if test="${searchVO.searchCondition == 'qestnSj'}">selected="selected"</c:if>>질문제목</option>
									</select>
								</div>
								<div class="form-group">
									<label class="sr-only" for="exampleInputPassword2">search</label>
									<input type="text" class="form-control"
										id="exampleInputPassword2" placeholder="검색어"
										name="searchKeyword"
										value='<c:out value="${searchVO.searchKeyword}"/>'
										maxlength="35">
								</div>

								<button type="button" class="btn btn-default"
									onclick="fn_egov_search_qnacn(); return false;">검색</button>
								<a href="<c:url value='/uss/olh/qna/QnaCnRegistView.do'/>"
									onclick="fn_egov_regist_cnsltcn(); return false;"><button
										type="button" class="btn btn-info">등록</button></a> <input
									name="qaId" type="hidden" value=""> <input
									name="passwordConfirmAt" type="hidden" value=""> <input
									name="pageIndex" type="hidden"
									value="<c:out value='${searchVO.pageIndex}'/>" />
							</form>
						</div>
						<table class="table table-bordered table-hover">
							<colgroup>
								<col width="10%">
								<col width="40%">
								<col width="15%">
								<col width="10%">
								<%-- <col width="10%"> --%>
								<col width="15%">
							</colgroup>
							<thead>
								<tr>
									<th>순번</th>
									<th>질문제목</th>
									<th>작성자</th>
									<th>진행상태</th>
									<!-- <th>조회수</th> -->
									<th>작성일자</th>
								</tr>
							</thead>
							<tbody>
								<c:if test="${fn:length(resultList) == 0}">
									<tr>
										<td class="lt_text3" colspan="6"><spring:message
												code="common.nodata.msg" /></td>
									</tr>
								</c:if>
								<c:forEach items="${resultList}" var="resultInfo"
									varStatus="status">
									<tr>
										<td class="lt_text3"><c:out
												value="${paginationInfo.totalRecordCount+1 - ((searchVO.pageIndex-1) * searchVO.pageSize + status.count)}" /></td>
										<td class="lt_text3"><a
											href="<c:url value='/uss/olh/qna/QnaInqireCoUpdt.do'/>?qaId=${resultInfo.qaId}&amp;pageIndex=${searchVO.pageIndex}"
											onclick="fn_egov_inquire_qnadetail('<c:out value="${resultInfo.qaId}"/>'); return false;">
												<c:out value="${resultInfo.qestnSj}" />
										</a></td>
										<td class="lt_text3"><c:out value="${resultInfo.wrterNm}" /></td>
										<td class="lt_text3"><c:out
												value="${resultInfo.qnaProcessSttusCodeNm}" /></td>
										<%-- <td class="lt_text3"><c:out value="${resultInfo.rdcnt}" /></td> --%>
										<td class="lt_text3"><c:out
												value='${fn:substring(resultInfo.writngDe, 0,4)}' />-<c:out
												value='${fn:substring(resultInfo.writngDe, 4,6)}' />-<c:out
												value='${fn:substring(resultInfo.writngDe, 6,8)}' /></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
							<div class="pagination-box">
								<ul class="pagination">
									<ui:pagination paginationInfo="${paginationInfo}" type="image"
										jsFunction="fn_egov_select_linkPage" />		
								</ul>
							</div>
							<!-- .pagination-box -->
							
							
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
</body>
</html>
