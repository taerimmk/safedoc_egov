
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
<title>회사소개</title>
<c:import url="/EgovPageLink.do?link=main/inc/headerResource" />
</head>
<body class="fixed-header">
	<div class="page-box">
		<div class="page-box-content">

			<c:import url="/EgovPageLink.do?link=main/inc/EgovIncHeader" />
			<!-- .header -->

			<div class="breadcrumb-box">
				<div class="container">
					<ul class="breadcrumb">
						<li><a href="index.html">주요실적</a></li>
						<li class="active"></li>
					</ul>
				</div>
			</div>
			<!-- .breadcrumb-box -->

			<section id="main"> <header class="page-header">
			<div class="container">
				<h1 class="title">주요실적</h1>
			</div>
			</header>

			<div class="container">
				<div class="content">
					<div class="row">
						<div class="bottom-padding col-sm-12 col-md-12">
							<p>우리 연구소가 설립된 1997년 이래로부터 현재까지 구조물진단 및 기술용역실적은 1만 여건에 이르고
								있으나, 이들 용역의뢰주체에서 보안유지를 요청하는 경우도 있기 때문에 실적의 일부만을 게재하며 이러한 점을 고려하여
								최근의 실적은 수록하지 않은 것으로 하였다. 특히 공동주택, 백화점, 호텔, 판매시설 등에 대한 1종, 2종시설물의
								정밀안전점검 및 진단실적이 다수 있으나, 이들은 일정한 지침에 의해 수행하는 법정점검(진단)으로서 일반화된
								진단이므로 제한된 지면을 고려하여 기재를 생략합니다.</p>
						</div>
					</div>

					<div class="title-box">
						<h2 class="title">${career.cate_nm}</h2>
					</div>
					<div class="timeline">
						<!-- <article class="post">
						<div class="timeline-time">
							<time datetime="2014-06-23">2011.06</time>
						</div>
						<div class="timeline-icon border border-primary">
							<div class="livicon" data-n="pen" data-c="#fff" data-hc="0"
								data-s="22"></div>
						</div>
						<div class="timeline-content border border-primary" data-appear-animation="fadeInLeft">
							<h2 class="entry-title">
								<a href="#">중앙로∼가좌지구 도로개설공사 기초 철근배근 조사</a>
							</h2>
						</div>
						</article> -->
						<!-- .post -->
						<c:if test="${not empty careerList }">
						<c:forEach items="${careerList}" var="rData">
							<article class="post">
							<div class="timeline-time">
								<time datetime="2014-06-23">${rData.date}</time>
							</div>

							<div class="timeline-icon bg-danger">
								<div class="livicon" data-n="calendar" data-c="#fff" data-hc="0"
									data-s="22"></div>
							</div>

							<div class="timeline-content bg bg-danger"
								data-appear-animation="fadeInRight">
								<h2 class="entry-title">
									<a href="#">${rData.careers}</a>
								</h2>
							</div>
							</article>
							</c:forEach>
						</c:if>
						<!-- .post -->


					</div>
					<!-- .timeline -->
				</div>
				<!-- .content -->
			</div>
			</section>
			<!-- #main -->

		</div>
		<!-- .page-box-content -->
	</div>
	<!-- .page-box -->

	<c:import url="/EgovPageLink.do?link=main/inc/EgovIncFooter" />
	<div class="clearfix"></div>

	<c:import url="/EgovPageLink.do?link=main/inc/footerResource" />
</body>
</html>




