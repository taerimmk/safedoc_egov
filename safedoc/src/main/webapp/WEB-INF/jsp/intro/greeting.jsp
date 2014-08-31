<%--
  Class Name : EgovMainView.jsp 
  Description : 메인화면
  Modification Information
 
      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2011.08.31   JJY       경량환경 버전 생성
 
    author   : 실행환경개발팀 JJY
    since    : 2011.08.31 
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
<title>인사말</title>
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
						<li><a href="index.html">회사소개</a></li>
						<li class="active">인사말</li>
					</ul>
				</div>
			</div>
			<!-- .breadcrumb-box -->

			<section id="main"> <header class="page-header">
			<div class="container">
				<h1 class="title">인사말</h1>
			</div>
			</header>
			<div class="container">
				<div class="row">
					<article class="content col-sm-6 col-md-6">
					<p>저희 홈페이지를 방문해 주셔서 감사합니다. 우리 연구원은 토목․건축 구조물의 구조설계, 구조물 진단,
						토질․지반조사, 계측관리, 보수․보강, 구조 및 재료시험, 기술행정 등의 각 분야에서 다년간 쌓은 지식과 경험을 가진
						우수한 기술진을 확보하고, 체계적이고 과학적으로 공신력있게 업무를 수행하고 있습니다.</p>
					<p>구조물의 계획, 설계, 시공, 유지관리는 설계 및 시공기법은 물론 공법, 재료, 구조, 시험, 계측, 지반,
						유지관리 전반에 대한 사항을 포함하는 고도의 종합적이고 공학적인 지식과 경험이 요구되기 때문에 구조물을 계획, 설계,
						시공, 유지관리하는 기관은 종합엔지니어링의 특성을 갖는 것이 중요하다 할 수 있습니다. 그래서 우리 연구원은 명실 공히
						구조물과 관련한 엔지니어링 활동주체의 종합기관을 지향하고 있습니다.</p>
					</article>

					
					<div class="col-sm-6 col-md-6">
						<a class="gallery-images" rel="fancybox"
							href="img/content/portfolio-2.jpg"> <img
							src="/img/content/member01.jpg" width="345px" height="254" alt="" />
						</a>
					</div>
					<!-- <img
						src="/img/content/member01.jpg" class="ls-bg ls-preloaded" alt=""
						style="padding: 0px; border-width: 0px; width: 345px; height: 254.21052631578948px; margin-left: 0px; margin-top: -0.10526315789473983px;" /> -->
					<article class="content col-sm-12 col-md-12">
					<p>이러한 취지에서 우리연구원은 각종 토목건축구조물의 구조설계업무는 물론 건축물, 교량 및 터널, 수리시설 등에
						대한 안전진단업무를 수행하고 있으며, 토질 및 기초, 건축설계분야의 엔지니어링 활동주체의 등록과 함께, 구조물 관련한
						기술, 조사, 학술용역을 수행할 기업부설연구소를 두고 있습니다. 또한, 구조물의 개보수 및 보강을 전담할 별도의 시설물
						유지관리 전문건설업체를 운영하고 있습니다. 우리 연구원이 지향하고 있는 토목․건축분야의 종합엔지니어링의 실현과 고도의
						공학적인 기술력이 요구되는 구조물 설계분야에 대한 고급인력의 확보를 위하여 상시로 전문분야의 기술자를 초빙하고
						있습니다.</p>
					<p>우리 연구원은 현재 교량, 터널, 건축, 수리, 항만 구조물의 점검 및 진단, 구조설계, 감리, 토질조사,
						계측관리, 보수․보강 및 진단기술의 연구에 이르기까지 구조물 전반에 관한 업무를 수행할 전문 기술인력과 체제를 갖추고
						있습니다.</p>
					<p>특히 그동안 경험한 진단기술과 보수보강의 경험을 공유하고 기술 자료의 출판을 위해 출판등록을 하여 도서로서
						발행함으로서 구조물진단분야가 전문분야로의 발전을 도모하고 있습니다. 우리 임직원은 앞으로도 항상 열심히 정진하여
						“정직하게 성실하게 내일을 개척하자”는 사훈을 모토로 사회에 건전한 구조물이 건설되고, 건전한 엔지니어링 문화가
						형성되도록 진정 노력할 것입니다.</p>
					<p>여러분의 아낌없는 협조와 성원을 부탁드리겠습니다. 끝으로 귀사와 여러분의 무궁한 발전을 기원합니다.
						감사합니다.</p>
					</article>

					<div class="clearfix"></div>

					</article>
					<!-- .content -->
				</div>
			</div>
			<!-- .container --> </section>
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