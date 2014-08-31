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
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page import="egovframework.com.cmm.LoginVO"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>MAIN</title>
<c:import url="/EgovPageLink.do?link=main/inc/headerResource" />

</head>
<body class="fixed-header">
	<div class="page-box">
		<div class="page-box-content">

			<c:import url="/EgovPageLink.do?link=main/inc/EgovIncHeader" />

			<div class="slider rs-slider load">
				<div class="tp-banner-container">
					<div class="tp-banner">
						<ul>
							<li data-delay="7000" data-transition="fade" data-slotamount="7"
								data-masterspeed="2000">
								<div class="elements">

									<div class="tp-caption lfl skewtoleft" data-x="121"
										data-y="121" data-speed="1500" data-start="1000"
										data-easing="Power4.easeOut" data-endspeed="1000"
										data-endeasing="Power1.easeIn" style="z-index: 3">
										<img src="/img/content/slider/rs-slider4-img15.png"
											width="576" height="393" alt="">
									</div>
									<!-- <div class="tp-caption lfb"
			  data-x="395"
			  data-y="335"
			  data-speed="1000"
			  data-start="2040"
			  data-easing="Power4.easeOut"
			  data-endspeed="500"
			  data-endeasing="Power1.easeIn"
			  style="z-index: 4">
			  <img src="/img/content/slider/rs-slider4-img15.png" width="33" height="25" alt="">
			</div>
			 -->
									<h2 class="tp-caption lft skewtotop title" data-x="722"
										data-y="101" data-speed="1000" data-start="1700"
										data-easing="Power4.easeOut" data-endspeed="500"
										data-endeasing="Power1.easeIn">
										<strong>KOSIS</strong>
									</h2>

									<div class="tp-caption lfr skewtoright description"
										data-x="707" data-y="189" data-speed="1000" data-start="1500"
										data-easing="Power4.easeOut" data-endspeed="500"
										data-endeasing="Power1.easeIn" style="max-width: 480px">
										<p class="">한국구조물진단연구원 을 방문해주셔서 감사합니다.</p>
									</div>

									<!-- <a
										href="http://themeforest.net/item/progressive-multipurpose-responsive-template/7197521"
										class="btn cherry tp-caption lfb btn-default" data-x="722"
										data-y="342" data-speed="1000" data-start="1700"
										data-easing="Power4.easeOut" data-endspeed="500"
										data-endeasing="Power1.easeIn"> READ MORE </a> -->
								</div> <img src="/img/content/slider/slide1.jpg" alt=""
								data-bgfit="cover" data-bgposition="center top"
								data-bgrepeat="no-repeat">
							</li>

							<li data-delay="7000" data-transition="fade" data-slotamount="7"
								data-masterspeed="2000">
								<div class="elements">
									<h2 class="tp-caption sft skewtotop title" data-x="590"
										data-y="101" data-speed="1000" data-start="500"
										data-easing="Power4.easeOut" data-endspeed="400"
										data-endeasing="Power1.easeIn">화해 진단</h2>

									<div
										class="tp-caption lfr skewtoright description cm-description-2"
										data-x="575" data-y="189" data-speed="1000" data-start="1000"
										data-easing="Power4.easeOut" data-endspeed="400"
										data-endeasing="Power1.easeIn" style="max-width: 600px;">
										<p>화재에 노출되어 화해를 입은 상태, 화재시간 및 화재온도의 추정, 부재 강도, 부재의 변형 및
											손상, 균열 및 철근의 노출, 파열, 좌굴 등을 조사하여 안전성과 사용성을 평가</p>
									</div>

								</div> <img src="/img/content/slider/slide2.jpg" alt=""
								data-bgfit="cover" data-bgposition="center top"
								data-bgrepeat="no-repeat">
							</li>

							<li data-delay="10300" data-transition="fade" data-slotamount="7"
								data-masterspeed="2000" class="slid2">
								<div class="elements">
									<h2 class="tp-caption sft skewtotop title" data-x="215"
										data-y="101" data-speed="1000" data-start="1100"
										data-easing="Power4.easeOut" data-endspeed="400"
										data-endeasing="Power1.easeIn">누수진단</h2>

									<div class="tp-caption lfl skewtoleft description col-xs-5"
										data-x="200" data-y="189" data-speed="1000" data-start="1000"
										data-easing="Power4.easeOut" data-endspeed="400"
										data-endeasing="Power1.easeIn" style="max-width: 520px;">
										<p>누수현상을 조사하여 누수경로를 추적하며 누수의 원인을 규명하고 그에 따라 누수를 일으킨 추동력(driving forces)을 통제하여 누수를 방지하기 위한 구조상세를 마련하는 진단
</p>
									</div>


								</div> <img src="/img/content/slider/slide3.jpg" alt=""
								data-bgfit="cover" data-bgposition="center top"
								data-bgrepeat="no-repeat">
							</li>


						</ul>
						<div class="tp-bannertimer"></div>
					</div>
				</div>
			</div>
			<!-- .rs-slider -->

			<div class="banner-set load">
				<div class="container">
					<div class="banners">
						<a href="#" class="banner"> <img
							src="/img/content/recent1.jpg" width="253" height="158" alt="">
							<h2 class="title">초기안전점검</h2> <!-- <div class="description">Nunc condimentum eros vel nibh
								consectetur dignissim. Ut ante neque, ullamcorper ac feugiat at,
								ullamcorper sagittis magna.</div> -->
						</a> <a href="#" class="banner"> <img
							src="/img/content/recent2.jpg" width="253" height="158" alt="">
							<h2 class="title">정기안전점검</h2> <!-- <div class="description">Maecenas ac leo velit. Aliquam
								venenatis tellus in erat pellentesque ut dignissim turpis
								consequat. Fusce sit amet sagittis urna.</div> -->
						</a> <a href="#" class="banner"> <img
							src="/img/content/recent3.jpg" width="253" height="158" alt="">
							<h2 class="title">정밀안전점검</h2> <!-- <div class="description">Phasellus quis mauris non mauris
								sceleris vehicula. Vestibulum ipsum odio, placerat sed consequat
								in, congue non nibh.</div> -->
						</a> <a href="#" class="banner"> <img
							src="/img/content/recent4.jpg" width="253" height="158" alt="">
							<h2 class="title">정밀안전진단</h2> <!-- <div class="description">Maecenas et massa odio, tincidunt
								ultrices sapien. Praesent non tortor quis metus posuere gravida
								at quis nulla.</div> -->
						</a> <a href="#" class="banner"> <img
							src="/img/content/recent5.jpg" width="253" height="158" alt="">
							<h2 class="title">하자진단</h2> <!-- <div class="description">Nunc condimentum eros vel nibh
								consectetur dignissim. Ut ante neque, ullamcorper ac feugiat at,
								ullamcorper sagittis magna.</div> -->
						</a>

					</div>
					<!-- .banners -->
					<div class="clearfix"></div>
				</div>
				<div class="nav-box">
					<div class="container">
						<a class="prev" href="#"><span
							class="glyphicon glyphicon-arrow-left"></span></a>
						<div class="pagination switches"></div>
						<a class="next" href="#"><span
							class="glyphicon glyphicon-arrow-right"></span></a>
					</div>
				</div>
			</div>
			<!-- .banner-set -->

			<div class="clearfix"></div>

			<section id="main" class="no-padding"> <article
				class="content">


			<div class="full-width-box">
				<div class="fwb-bg fwb-paralax band-8"
					data-stellar-background-ratio="0.5">
					<div class="overlay"></div>
				</div>

				<div class="container">
					<div class="row">
						<!-- <div class="col-sm-6 col-md-6"></div> -->
						<div class="col-sm-12 col-md-12">
							<!-- <div class="title-box">
								<h1 class="title no-top-padding">Video</h1>
							</div> -->
							<div class="video-box vimeo">
								<iframe width="640" height="480"
									src="//www.youtube.com/embed/acu96BJYiKk" frameborder="0"
									allowfullscreen></iframe>
							</div>
						</div>
					</div>
				</div>
			</div>
			</article> </section>
			<!-- #main -->

		</div>
		<!-- .page-box-content -->
	</div>
	<!-- .page-box -->


	<c:import url="/EgovPageLink.do?link=main/inc/EgovIncFooter" />
	<c:import url="/EgovPageLink.do?link=main/inc/footerResource" />
</body>
</html>