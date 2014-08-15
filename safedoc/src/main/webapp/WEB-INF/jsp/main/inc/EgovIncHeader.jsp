<%--
  Class Name : EgovIncHeader.jsp
  Description : 화면상단 Header(include)
  Modification Information

      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2011.08.31   JJY       경량환경 버전 생성

    author   : 실행환경개발팀 JJY
    since    : 2011.08.31
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="egovframework.com.cmm.LoginVO" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header class="header header-two">
<div class="header-wrapper">
	<div class="container">
	  <div class="row">
		<div class="col-xs-6 col-md-2 col-lg-3 logo-box">
		  <div class="logo">
			<a href="/">
			  <img src="/img/logo.png" class="logo-img" alt="">
			</a>
		  </div>
		</div><!-- .logo-box -->
		
		<div class="col-xs-6 col-md-10 col-lg-9 right-box">
		  <div class="right-box-wrapper">
			<div class="header-icons">
			  <div class="search-header hidden-600">
				<a href="#">
				  <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
					<path d="M12.001,10l-0.5,0.5l-0.79-0.79c0.806-1.021,1.29-2.308,1.29-3.71c0-3.313-2.687-6-6-6C2.687,0,0,2.687,0,6
					s2.687,6,6,6c1.402,0,2.688-0.484,3.71-1.29l0.79,0.79l-0.5,0.5l4,4l2-2L12.001,10z M6,10c-2.206,0-4-1.794-4-4s1.794-4,4-4
					s4,1.794,4,4S8.206,10,6,10z"></path>
					<image src="/img/png-icons/search-icon.png" alt="" width="16" height="16" style="vertical-align: top;">
				  </svg>
				</a>
			  </div><!-- .search-header
			  
			  --><div class="phone-header hidden-600">
				<a href="#">
				  <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
					<path d="M11.001,0H5C3.896,0,3,0.896,3,2c0,0.273,0,11.727,0,12c0,1.104,0.896,2,2,2h6c1.104,0,2-0.896,2-2
					c0-0.273,0-11.727,0-12C13.001,0.896,12.105,0,11.001,0z M8,15c-0.552,0-1-0.447-1-1s0.448-1,1-1s1,0.447,1,1S8.553,15,8,15z
					M11.001,12H5V2h6V12z"></path>
					<image src="/img/png-icons/phone-icon.png" alt="" width="16" height="16" style="vertical-align: top;">
				  </svg>
				</a>
			  </div><!-- .phone-header -->
			</div><!-- .header-icons -->
			
			<div class="primary">
			  <div class="navbar navbar-default" role="navigation">
				<button type="button" class="navbar-toggle btn-navbar collapsed" data-toggle="collapse" data-target=".primary .navbar-collapse">
				  <span class="text">Menu</span>
				  <span class="icon-bar"></span>
				  <span class="icon-bar"></span>
				  <span class="icon-bar"></span>
				</button>
	  
				<nav class="collapse collapsing navbar-collapse">
				  <ul class="nav navbar-nav navbar-center">
					<li class="parent">
					  <a href="#">회사소개</a>
					  <ul class="sub">
						<li><a href="<c:url value="/EgovPageLink.do?link=intro/greeting"/>" >인사말</a></li>
						<li><a href="<c:url value="/EgovPageLink.do?link=intro/comIntro"/>">회사소개</a></li>
						<li><a href="<c:url value="/EgovPageLink.do?link=intro/ceoIntro"/>">원장소개</a></li>
						<li><a href="<c:url value="/EgovPageLink.do?link=intro/organization"/>">조직도</a></li>
						<li><a href="<c:url value="/EgovPageLink.do?link=intro/location"/>">오시는길</a></li>
					  </ul>
					</li>
					<li class="parent">
					  <a href="#">구조물진단이란?</a>
					  <ul class="sub">
						<li><a href="sidebar-blocks.html">구조물 진단범위</a></li>
						<li><a href="full-width.html">구조물 진단유형</a></li>
					  </ul>
					</li>
					<li class="parent">
					  <a href="#">주요실적</a>
					  <ul class="sub">
						<li><a href="<c:url value="/uss/olh/qna/QnaListInqire.do"/>" >Q&A 게시판</a></li>
					  </ul><!-- .sub -->
					</li>
					<li class="parent">
					  <a href="#">Q&A</a>
					  <ul class="sub">
						<li><a href="<c:url value="/uss/olh/qna/QnaListInqire.do"/>" >Q&A 게시판</a></li>
					  </ul><!-- .sub -->
					</li>
					<li class="parent">
					  <a href="#">Contact</a>
					  <ul class="sub">
					  
					  
						<li><a href="<c:url value="/cop/bbs/sec/selectBoardList.do?bbsId=BBSMSTR_000000000001"/>">견적문의</a></li>
						<!-- <li><a href="sidebar-blocks.html">방명록</a></li> -->
					  </ul><!-- .sub -->
					</li>
					<%
       LoginVO loginVO = (LoginVO)session.getAttribute("LoginVO"); 
       if(loginVO == null){ 
    %>
					<li class="">
					  <a href="<c:url value='/uat/uia/egovLoginUsr.do'/>">로그인</a>
					  
					</li>
					<% }else { %>
					<c:set var="loginName" value="<%= loginVO.getName()%>"/>
					<li class="parent">
					  <a href="#"><c:out value="${loginName}"/> 님</a>
					  <ul class="sub">
					  	<li><a href="<c:url value='/uss/olh/qnm/QnaAnswerListInqire.do'/>">서비스관리</a></li>	
						<li><a href="<c:url value='/uat/uia/actionLogout.do'/>">로그아웃</a></li>
						
					  </ul>
					</li>
					<% } %>
				  </ul>
				</nav>
			  </div>
			</div><!-- .primary -->
		  </div>
		</div>
		
		<div class="phone-active col-sm-9 col-md-9">
		  <a href="#" class="close"><span>close</span>×</a>
		  <span class="title">Call Us</span> <strong>+1 (777) 123 45 67</strong>
		</div>
		<div class="search-active col-sm-9 col-md-9">
		  <a href="#" class="close"><span>close</span>×</a>
		  <form name="search-form">
			<input class="search-string form-control" type="search" placeholder="Search here" name="search-string">
			<button class="search-submit">
			  <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
				<path fill="#231F20" d="M12.001,10l-0.5,0.5l-0.79-0.79c0.806-1.021,1.29-2.308,1.29-3.71c0-3.313-2.687-6-6-6C2.687,0,0,2.687,0,6
				s2.687,6,6,6c1.402,0,2.688-0.484,3.71-1.29l0.79,0.79l-0.5,0.5l4,4l2-2L12.001,10z M6,10c-2.206,0-4-1.794-4-4s1.794-4,4-4
				s4,1.794,4,4S8.206,10,6,10z"></path>
				<image src="/img/png-icons/search-icon.png" alt="" width="16" height="16" style="vertical-align: top;">
			  </svg>
			</button>
		  </form>
		</div>
	  </div><!--.row -->
	</div>
  </div><!-- .header-wrapper -->
   
</header><!-- .header -->

 <%-- <%
       LoginVO loginVO = (LoginVO)session.getAttribute("LoginVO"); 
       if(loginVO == null){ 
    %>
    <div id="header_loginname">
        <a href="#" ></a>
    </div>
    <div class="header_loginconnection"></div>
    <ul class="login_bg_area">
        <li class="righttop_bgleft">&nbsp;</li>
        <li class="righttop_bgmiddle"><a href="<c:url value='/uat/uia/egovLoginUsr.do'/>">로그인</a></li>
        <li class="righttop_bgright">&nbsp;</li>
    </ul>
    <% }else { %>
    <c:set var="loginName" value="<%= loginVO.getName()%>"/>
    <div id="header_loginname">
        <a href="#LINK" onclick="alert('개인정보 확인 등의 링크 제공'); return false;"><c:out value="${loginName}"/> 님</a>
    </div>
    <div class="header_loginconnection"> 관리자로 로그인하셨습니다.</div>
    <ul class="login_bg_area">
        <li class="righttop_bgleft">&nbsp;</li>
        <li class="righttop_bgmiddle"><a href="<c:url value='/uat/uia/actionLogout.do'/>">로그아웃</a></li>
        <li class="righttop_bgright">&nbsp;</li>
    </ul>
    <% } %> --%>    