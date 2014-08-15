<%--
  Class Name :
  Description :
  Modification Information

      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2009.03.19   이삼섭          최초 생성
     2011.08.31  JJY       경량환경 버전 생성

    author   : 공통서비스 개발팀 이삼섭
    since    : 2009.03.19
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="egovframework.com.cmm.service.EgovProperties"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var="ImgUrl" value="/images/egovframework/cop/bbs/" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title><c:out value="${brdMstrVO.bbsNm}" /> 목록</title>
<c:import url="/EgovPageLink.do?link=main/inc/headerResource" />
<c:if test="${anonymous == 'true'}">
	<c:set var="prefix" value="/anonymous" />
</c:if>
<script type="text/javascript" src="<c:url value='/js/EgovBBSMng.js' />"></script>
<c:choose>
	<c:when test="${preview == 'true'}">
		<script type="text/javascript">
		<!--
			function press(event) {
			}

			function fn_egov_addNotice() {
			}

			function fn_egov_select_noticeList(pageNo) {
			}

			function fn_egov_inqire_notice(nttId, bbsId) {
			}
		//-->
		</script>
	</c:when>
	<c:otherwise>
		<script type="text/javascript">
		<!--
			function press(event) {
				if (event.keyCode == 13) {
					fn_egov_select_noticeList('1');
				}
			}

			function fn_egov_addNotice() {
				document.frm.action = "<c:url value='/cop/bbs${prefix}/addBoardArticle.do'/>";
				document.frm.submit();
			}

			function fn_egov_select_noticeList(pageNo) {
				document.frm.pageIndex.value = pageNo;
				document.frm.action = "<c:url value='/cop/bbs${prefix}/selectBoardList.do'/>";
				document.frm.submit();
			}

			function fn_egov_inqire_notice(nttId, bbsId) {
				//document.subForm.nttId.value = nttId;
				//document.subForm.bbsId.value = bbsId;
				//document.subForm.action = "<c:url value='/cop/bbs${prefix}/selectBoardArticle.do'/>";
				//document.subForm.submit();
			}
		//-->
		</script>
	</c:otherwise>
</c:choose>
</head>
<body>
	<div class="page-box">
		<div class="page-box-content">

			<c:import url="/EgovPageLink.do?link=main/inc/EgovIncHeader" />

			<div class="breadcrumb-box">
				<div class="container">
					<ul class="breadcrumb">
						Contact
						</a>
						</li>
						<li><a href="#">견적문의</a></li>
					</ul>
				</div>
			</div>
			<!-- .breadcrumb-box -->

			<section id="main"> <header class="page-header">
			<div class="container">
				<h1 class="title">${brdMstrVO.bbsNm}</h1>
			</div>
			</header>
			<div class="container">
				<div class="row">

					<article class="content col-sm-12 col-md-12">
					<div class="bs-docs-section">
						<!-- <div class="bs-callout bs-callout-danger">
							
						</div> -->
						<div class="bs-example">
							<form name="frm"
								action="<c:url value='/cop/bbs${prefix}/selectBoardList.do'/>"
								method="post">
								<input type="hidden" name="bbsId"
									value="<c:out value='${boardVO.bbsId}'/>" /> <input
									type="hidden" name="nttId" value="0" /> <input type="hidden"
									name="bbsTyCode"
									value="<c:out value='${brdMstrVO.bbsTyCode}'/>" /> <input
									type="hidden" name="bbsAttrbCode"
									value="<c:out value='${brdMstrVO.bbsAttrbCode}'/>" /> <input
									type="hidden" name="authFlag"
									value="<c:out value='${brdMstrVO.authFlag}'/>" /> <input
									name="pageIndex" type="hidden"
									value="<c:out value='${searchVO.pageIndex}'/>" /> <input
									type="submit" value="실행"
									onclick="fn_egov_select_noticeList('1'); return false;"
									id="invisible" class="invisible" />

								<!--실명확인을 위한  설정 End......-->
								<!-- <div class="col-xs-2"> -->
								<div class="form-group col-xs-2">
									<select class="form-control" name="searchCnd">
										<option value="0"
											<c:if test="${searchVO.searchCnd == '0'}">selected="selected"</c:if>>제목</option>
										<option value="1"
											<c:if test="${searchVO.searchCnd == '1'}">selected="selected"</c:if>>내용</option>
										<option value="2"
											<c:if test="${searchVO.searchCnd == '2'}">selected="selected"</c:if>>작성자</option>
									</select>
								</div>
								<div class="form-group col-xs-4">
									<label class="sr-only" for="exampleInputPassword2">search</label>
									<input type="text" class="form-control"
										id="exampleInputPassword2" placeholder="검색어"
										name="searchWrd"
										onkeypress="press(event);"
										value='<c:out value="${searchVO.searchWrd}"/>' 
										maxlength="35">
								</div>

								<button type="button" class="btn btn-default"
									onclick="fn_egov_select_noticeList('1'); return false;">검색</button>
								<c:if test="${brdMstrVO.authFlag == 'Y'}">
									<a
										href="<c:url value='/cop/bbs${prefix}/addBoardArticle.do?bbsId=${boardVO.bbsId}'/>"><button
											type="button" class="btn btn-info">등록</button></a>
								</c:if>
							</form>
						</div>
						<table class="table table-bordered table-hover">
							<%-- <colgroup>
								<col width="5%">
								<col>
								<c:if test="${brdMstrVO.bbsAttrbCode == 'BBSA01'}">
									<col width="15%">
									<col width="15%">
								</c:if>
								<c:if test="${anonymous != 'true'}">
									<col width="10%">
								</c:if>
								<col width="15%">
								<col width="5%">
							</colgroup> --%>
							<thead>
								<tr>
									<th>번호</th>
									<th>제목</th>
									<c:if test="${brdMstrVO.bbsAttrbCode == 'BBSA01'}">
										<th>게시시작일</th>
										<th>게시종료일</th>
									</c:if>
									<c:if test="${anonymous != 'true'}">
										<th>작성자</th>
									</c:if>
									<th>작성일</th>
									<th>조회수</th>
								</tr>
							</thead>
							<tbody>
								<c:if test="${fn:length(resultList) == 0}">
									<tr>
										<c:choose>
											<c:when test="${brdMstrVO.bbsAttrbCode == 'BBSA01'}">
												<td colspan="7"><spring:message
														code="common.nodata.msg" /></td>
											</c:when>
											<c:otherwise>
												<c:choose>
													<c:when test="${anonymous == 'true'}">
														<td colspan="4"><spring:message
																code="common.nodata.msg" /></td>
													</c:when>
													<c:otherwise>
														<td colspan="5"><spring:message
																code="common.nodata.msg" /></td>
													</c:otherwise>
												</c:choose>
											</c:otherwise>
										</c:choose>
									</tr>
								</c:if>

								<c:forEach var="result" items="${resultList}" varStatus="status">
									<tr>
										<td class="lt_text3"><c:out
												value="${paginationInfo.totalRecordCount+1 - ((searchVO.pageIndex-1) * searchVO.pageSize + status.count)}" /></td>
										<td align="left" class="lt_text3">
											<form name="subForm" method="post"
												action="<c:url value='/cop/bbs${prefix}/selectBoardArticle.do'/>">
												<c:if test="${result.replyLc!=0}">
													<c:forEach begin="0" end="${result.replyLc}" step="1">
			                    &nbsp;
			                </c:forEach>
													<img src="<c:url value='/images/reply_arrow.gif'/>"
														alt="reply arrow">
												</c:if>
												<c:choose>
													<c:when
														test="${result.isExpired=='Y' || result.useAt == 'N'}">
														<c:out value="${result.nttSj}" />
													</c:when>
													<c:otherwise>
														<input type="hidden" name="bbsId"
															value="<c:out value='${result.bbsId}'/>" />
														<input type="hidden" name="nttId"
															value="<c:out value="${result.nttId}"/>" />
														<input type="hidden" name="bbsTyCode"
															value="<c:out value='${brdMstrVO.bbsTyCode}'/>" />
														<input type="hidden" name="bbsAttrbCode"
															value="<c:out value='${brdMstrVO.bbsAttrbCode}'/>" />
														<input type="hidden" name="authFlag"
															value="<c:out value='${brdMstrVO.authFlag}'/>" />
														<input name="pageIndex" type="hidden"
															value="<c:out value='${searchVO.pageIndex}'/>" />
														<span class="link"><input type="submit"
															style="width: 320px; border: solid 0px black; text-align: left;"
															value="<c:out value="${result.nttSj}"/>"></span>
													</c:otherwise>
												</c:choose>
											</form>
										</td>
										<c:if test="${brdMstrVO.bbsAttrbCode == 'BBSA01'}">
											<td class="lt_text3"><c:out value="${result.ntceBgnde}" /></td>
											<td class="lt_text3"><c:out value="${result.ntceEndde}" /></td>
										</c:if>
										<c:if test="${anonymous != 'true'}">
											<td class="lt_text3"><c:out
													value="${result.frstRegisterNm}" /></td>
										</c:if>
										<td class="lt_text3"><c:out
												value="${result.frstRegisterPnttm}" /></td>
										<td class="lt_text3"><c:out value="${result.inqireCo}" /></td>
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
