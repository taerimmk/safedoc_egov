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
<style type="text/css">
.caption_h4 {
	color: #fff;
	font-size: 33px;
	font-weight: lighter;
	white-space: normal;
	line-height: 30px;
	margin-bottom: 15px;
	text-align: left;
	background: rgb(0, 0, 0);
	background: rgba(0, 0, 0, .8);
	-webkit-border-radius: 7px;
	-moz-border-radius: 7px;
	border-radius: 7px;
	padding: 15px;
}

.caption_p {
	color: #fff;
	font-size: 18px;
	/* font-weight: lighter; */
	white-space: normal;
	line-height: 30px;
	margin-top: 15px;
	text-align: left;
	background: #4eccb9;
	-webkit-border-radius: 7px;
	-moz-border-radius: 7px;
	border-radius: 7px;
	padding: 15px;
	display: table;
	margin-bottom: 15px;
}
</style>
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
										<p class="caption_p">한국구조물진단연구원 을 방문해주셔서 감사합니다.</p>
									</div>

									<a
										href="http://themeforest.net/item/progressive-multipurpose-responsive-template/7197521"
										class="btn cherry tp-caption lfb btn-default" data-x="722"
										data-y="342" data-speed="1000" data-start="1700"
										data-easing="Power4.easeOut" data-endspeed="500"
										data-endeasing="Power1.easeIn"> READ MORE </a>
								</div> <img src="/img/content/slider/slide1.jpg" alt=""
								data-bgfit="cover" data-bgposition="center top"
								data-bgrepeat="no-repeat">
							</li>

							<li data-delay="7000" data-transition="fade" data-slotamount="7"
								data-masterspeed="2000">
								<div class="elements">
									<div class="tp-caption lfb skewtobottom" data-x="145"
										data-y="66" data-speed="1000" data-start="500"
										data-easing="Power4.easeOut" data-endspeed="500"
										data-endeasing="Power1.easeIn" style="z-index: 3">
										<img src="/img/content/slider/rs-slider1-phone.png"
											width="375" height="434" alt="">
									</div>

									<div class="tp-caption lfb skewtobottom" data-x="307"
										data-y="105" data-speed="1000" data-start="500"
										data-easing="Power4.easeOut" data-endspeed="400"
										data-endeasing="Power1.easeIn" style="z-index: 1">
										<img src="/img/content/slider/rs-slider1-phone-bg.png"
											width="160" height="296" alt="">
									</div>

									<h2 class="tp-caption sft skewtotop title" data-x="590"
										data-y="101" data-speed="1000" data-start="500"
										data-easing="Power4.easeOut" data-endspeed="400"
										data-endeasing="Power1.easeIn">Clean &amp; Valid code</h2>

									<div
										class="tp-caption lfr skewtoright description cm-description-2"
										data-x="575" data-y="189" data-speed="1000" data-start="1000"
										data-easing="Power4.easeOut" data-endspeed="400"
										data-endeasing="Power1.easeIn" style="max-width: 600px;">
										<p>Perfect HTML5 &amp; CSS3. Valid code, latest
											technologies, always up-to-date. Compatible with the latest
											desktop and mobile browsers down to IE8. Works perfectly
											wherever you need and wherever you want.</p>
									</div>

									<a
										href="http://themeforest.net/item/progressive-multipurpose-responsive-template/7197521"
										class="btn tp-caption customin cherry btn-default"
										data-x="590" data-y="332"
										data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
										data-speed="1200" data-start="1400"
										data-easing="Power3.easeInOut" data-endspeed="300"
										style="z-index: 5"> Read more </a>

									<div class="tp-caption customin customout" data-x="337"
										data-y="148"
										data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
										data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
										data-speed="1200" data-start="800"
										data-easing="Power3.easeInOut" data-endspeed="300"
										style="z-index: 5">
										<img src="/img/content/slider/rs-slider1-html5-1.png"
											width="99" height="111" alt="">
									</div>

									<div class="tp-caption customin" data-x="355" data-y="158"
										data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
										data-speed="1200" data-start="1200"
										data-easing="Power3.easeInOut" data-end="3300"
										data-endspeed="400" style="z-index: 5">
										<img src="/img/content/slider/rs-slider1-html5-2.png"
											width="72" height="91" alt="">
									</div>

									<div class="tp-caption customin" data-x="355" data-y="158"
										data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
										data-speed="1200" data-start="3700"
										data-easing="Power3.easeInOut" data-endspeed="100"
										style="z-index: 5">
										<img src="/img/content/slider/rs-slider1-css3.png" width="72"
											height="91" alt="">
									</div>

									<div
										class="tp-caption lfb skewtobottom customin customout phone-text"
										data-x="359" data-y="325"
										data-customin="x:0;y:55;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
										data-customout="x:0;y:55;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
										data-speed="1000" data-start="1000"
										data-easing="Power0.easeOut" data-end="3500"
										data-endspeed="400" data-endeasing="Power0.easeIn"
										data-captionhidden="on" style="z-index: 2">HTML5</div>

									<div
										class="tp-caption lfb skewtobottom customin customout phone-text"
										data-x="365" data-y="325"
										data-customin="x:0;y:55;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
										data-customout="x:0;y:55;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
										data-speed="1000" data-start="3600"
										data-easing="Power0.easeOut" data-endspeed="400"
										data-endeasing="Power0.easeIn" data-captionhidden="on"
										style="z-index: 2">CSS3</div>
								</div> <img src="/img/content/slider/rs-slider1-bg.jpg" alt=""
								data-bgfit="cover" data-bgposition="center top"
								data-bgrepeat="no-repeat">
							</li>

							<li data-delay="10300" data-transition="fade" data-slotamount="7"
								data-masterspeed="2000" class="slid2">
								<div class="elements">
									<h2 class="tp-caption sft skewtotop title" data-x="15"
										data-y="101" data-speed="1000" data-start="1100"
										data-easing="Power4.easeOut" data-endspeed="400"
										data-endeasing="Power1.easeIn">Four homepages</h2>

									<div class="tp-caption lfl skewtoleft description col-xs-5"
										data-x="0" data-y="189" data-speed="1000" data-start="1000"
										data-easing="Power4.easeOut" data-endspeed="400"
										data-endeasing="Power1.easeIn" style="max-width: 520px;">
										<p>We have developed four different homepages for you to
											choose the most convenient one. Make your choice based on
											your own taste and sense of style, use extra elements and
											Twitter Bootstrap to build any page you want.</p>
									</div>

									<a
										href="http://themeforest.net/item/progressive-multipurpose-responsive-template/7197521"
										class="btn btn-primary tp-caption customin" data-x="15"
										data-y="332"
										data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
										data-speed="1200" data-start="1000"
										data-easing="Power3.easeInOut" data-endspeed="300"
										style="z-index: 5"> Read more </a>

									<div class="tp-caption lfb skewtobottom customin"
										data-x="right" data-hoffset="100" data-y="70"
										data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:-360;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
										data-speed="1000" data-start="1000"
										data-easing="Power4.easeOut" data-end="14000"
										data-endspeed="500" data-endeasing="Power1.easeIn"
										style="z-index: 3">
										<img src="/img/content/slider/rs-slider2-img.png" width="731"
											height="284" alt="">
									</div>

									<div class="tp-caption lfb customout" data-x="right"
										data-hoffset="-126" data-y="70"
										data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
										data-speed="400" data-start="2000"
										data-easing="Power0.easeOut" data-end="3000"
										data-endspeed="400" data-endeasing="Power0.easeIn"
										data-captionhidden="on" style="z-index: 2">
										<img src="/img/content/slider/rs-slider2-homepage1.png"
											width="277" height="280" alt="">
									</div>

									<div class="tp-caption lfb customout" data-x="right"
										data-hoffset="-126" data-y="70"
										data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
										data-speed="400" data-start="3500"
										data-easing="Power0.easeOut" data-end="4500"
										data-endspeed="400" data-endeasing="Power0.easeIn"
										data-captionhidden="on" style="z-index: 2">
										<img src="/img/content/slider/rs-slider2-homepage2.png"
											width="277" height="280" alt="">
									</div>

									<div class="tp-caption lfb customout" data-x="right"
										data-hoffset="-126" data-y="70"
										data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
										data-speed="400" data-start="5000"
										data-easing="Power0.easeOut" data-end="6000"
										data-endspeed="400" data-endeasing="Power0.easeIn"
										data-captionhidden="on" style="z-index: 2">
										<img src="/img/content/slider/rs-slider2-homepage3.png"
											width="277" height="280" alt="">
									</div>

									<div class="tp-caption lfb customout" data-x="right"
										data-hoffset="-126" data-y="70"
										data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
										data-speed="400" data-start="6500"
										data-easing="Power0.easeOut" data-end="7500"
										data-endspeed="400" data-endeasing="Power0.easeIn"
										data-captionhidden="on" style="z-index: 2">
										<img src="/img/content/slider/rs-slider2-homepage4.png"
											width="277" height="280" alt="">
									</div>

									<div class="tp-caption  customout" data-x="right"
										data-hoffset="-208" data-y="130"
										data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:1;transformPerspective:600;transformOrigin:50% 50%;"
										data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
										data-speed="1" data-start="2300" data-easing="Power0.easeOut"
										data-end="3800" data-endspeed="1"
										data-endeasing="Power0.easeIn" data-captionhidden="on"
										style="z-index: 4">
										<img src="/img/content/slider/rs-slider2-one.png" width="110"
											height="168" alt="">
									</div>

									<div class="tp-caption customin customout" data-x="right"
										data-hoffset="-208" data-y="130"
										data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:1;transformPerspective:600;transformOrigin:50% 50%;"
										data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
										data-speed="1" data-start="3800" data-easing="Power0.easeOut"
										data-end="5300" data-endspeed="1"
										data-endeasing="Power0.easeIn" data-captionhidden="on"
										style="z-index: 4">
										<img src="/img/content/slider/rs-slider2-two.png" width="110"
											height="168" alt="">
									</div>

									<div class="tp-caption customin customout" data-x="right"
										data-hoffset="-208" data-y="130"
										data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:1;transformPerspective:600;transformOrigin:50% 50%;"
										data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
										data-speed="1" data-start="5300" data-easing="Power0.easeOut"
										data-end="6800" data-endspeed="1"
										data-endeasing="Power0.easeIn" data-captionhidden="on"
										style="z-index: 4">
										<img src="/img/content/slider/rs-slider2-three.png"
											width="110" height="168" alt="">
									</div>

									<div class="tp-caption customin customout" data-x="right"
										data-hoffset="-208" data-y="130"
										data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:1;transformPerspective:600;transformOrigin:50% 50%;"
										data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
										data-speed="1" data-start="6800" data-easing="Power0.easeOut"
										data-end="8000" data-endspeed="1"
										data-endeasing="Power0.easeIn" data-captionhidden="on"
										style="z-index: 4">
										<img src="/img/content/slider/rs-slider2-four.png" width="110"
											height="168" alt="">
									</div>

									<div class="tp-caption customin customout" data-x="right"
										data-hoffset="-208" data-y="130"
										data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:1;transformPerspective:600;transformOrigin:50% 50%;"
										data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
										data-speed="1" data-start="8200" data-easing="Power0.easeOut"
										data-end="8300" data-endspeed="1"
										data-endeasing="Power0.easeIn" data-captionhidden="on"
										style="z-index: 4">
										<img src="/img/content/slider/rs-slider2-four.png" width="110"
											height="168" alt="">
									</div>

									<div class="tp-caption customin customout" data-x="right"
										data-hoffset="-208" data-y="130"
										data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:1;transformPerspective:600;transformOrigin:50% 50%;"
										data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
										data-speed="1" data-start="8400" data-easing="Power0.easeOut"
										data-end="8500" data-endspeed="1"
										data-endeasing="Power0.easeIn" data-captionhidden="on"
										style="z-index: 4">
										<img src="/img/content/slider/rs-slider2-four.png" width="110"
											height="168" alt="">
									</div>

									<div class="tp-caption customin customout" data-x="right"
										data-hoffset="-208" data-y="130"
										data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:1;transformPerspective:600;transformOrigin:50% 50%;"
										data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
										data-speed="1" data-start="8600" data-easing="Power0.easeOut"
										data-end="8700" data-endspeed="1"
										data-endeasing="Power0.easeIn" data-captionhidden="on"
										style="z-index: 4">
										<img src="/img/content/slider/rs-slider2-four.png" width="110"
											height="168" alt="">
									</div>

									<div class="tp-caption customin customout" data-x="right"
										data-hoffset="-208" data-y="130"
										data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:1;transformPerspective:600;transformOrigin:50% 50%;"
										data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
										data-speed="1" data-start="8800" data-easing="Power0.easeOut"
										data-end="8900" data-endspeed="1"
										data-endeasing="Power0.easeIn" data-captionhidden="on"
										style="z-index: 4">
										<img src="/img/content/slider/rs-slider2-four.png" width="110"
											height="168" alt="">
									</div>

									<div class="tp-caption customin customout" data-x="right"
										data-hoffset="-239" data-y="187"
										data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:1;transformPerspective:600;transformOrigin:50% 50%;"
										data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
										data-speed="1" data-start="9000" data-easing="Power0.easeOut"
										data-end="10300" data-endspeed="1"
										data-endeasing="Power0.easeIn" data-captionhidden="on"
										style="z-index: 4">
										<img src="/img/content/slider/rs-slider2-quadrate1.png"
											width="48" height="48" alt="">
									</div>

									<div class="tp-caption customin customout" data-x="right"
										data-hoffset="-224" data-y="172"
										data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:1;transformPerspective:600;transformOrigin:50% 50%;"
										data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
										data-speed="1" data-start="9100" data-easing="Power0.easeOut"
										data-end="10200" data-endspeed="1"
										data-endeasing="Power0.easeIn" data-captionhidden="on"
										style="z-index: 4">
										<img src="/img/content/slider/rs-slider2-quadrate2.png"
											width="79" height="79" alt="">
									</div>

									<div class="tp-caption customin customout" data-x="right"
										data-hoffset="-209" data-y="157"
										data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:1;transformPerspective:600;transformOrigin:50% 50%;"
										data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
										data-speed="1" data-start="9200" data-easing="Power0.easeOut"
										data-end="10100" data-endspeed="1"
										data-endeasing="Power0.easeIn" data-captionhidden="on"
										style="z-index: 4">
										<img src="/img/content/slider/rs-slider2-quadrate3.png"
											width="110" height="107" alt="">
									</div>

									<div class="tp-caption customin customout" data-x="right"
										data-hoffset="-194" data-y="142"
										data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:1;transformPerspective:600;transformOrigin:50% 50%;"
										data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
										data-speed="1" data-start="9300" data-easing="Power0.easeOut"
										data-end="10000" data-endspeed="1"
										data-endeasing="Power0.easeIn" data-captionhidden="on"
										style="z-index: 4">
										<img src="/img/content/slider/rs-slider2-quadrate4.png"
											width="140" height="138" alt="">
									</div>

									<div class="tp-caption customin customout" data-x="right"
										data-hoffset="-179" data-y="127"
										data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:1;transformPerspective:600;transformOrigin:50% 50%;"
										data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
										data-speed="1" data-start="9400" data-easing="Power0.easeOut"
										data-end="9900" data-endspeed="1"
										data-endeasing="Power0.easeIn" data-captionhidden="on"
										style="z-index: 4">
										<img src="/img/content/slider/rs-slider2-quadrate5.png"
											width="170" height="168" alt="">
									</div>

									<div class="tp-caption customin customout" data-x="right"
										data-hoffset="-164" data-y="112"
										data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:1;transformPerspective:600;transformOrigin:50% 50%;"
										data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
										data-speed="1" data-start="9500" data-easing="Power0.easeOut"
										data-end="9800" data-endspeed="1"
										data-endeasing="Power0.easeIn" data-captionhidden="on"
										style="z-index: 4">
										<img src="/img/content/slider/rs-slider2-quadrate6.png"
											width="200" height="200" alt="">
									</div>

									<div class="tp-caption customin customout" data-x="right"
										data-hoffset="-149" data-y="97"
										data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:1;transformPerspective:600;transformOrigin:50% 50%;"
										data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
										data-speed="1" data-start="9600" data-easing="Power0.easeOut"
										data-end="9700" data-endspeed="1"
										data-endeasing="Power0.easeIn" data-captionhidden="on"
										style="z-index: 4">
										<img src="/img/content/slider/rs-slider2-quadrate7.png"
											width="231" height="231" alt="">
									</div>
								</div> <img src="/img/content/slider/rs-slider2-bg.jpg" alt=""
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
							<h2 class="title">초기안전점검</h2>
							<!-- <div class="description">Nunc condimentum eros vel nibh
								consectetur dignissim. Ut ante neque, ullamcorper ac feugiat at,
								ullamcorper sagittis magna.</div> -->
						</a> <a href="#" class="banner"> <img
							src="/img/content/recent2.jpg" width="253" height="158" alt="">
							<h2 class="title">정기안전점검</h2>
							<!-- <div class="description">Maecenas ac leo velit. Aliquam
								venenatis tellus in erat pellentesque ut dignissim turpis
								consequat. Fusce sit amet sagittis urna.</div> -->
						</a> <a href="#" class="banner"> <img
							src="/img/content/recent3.jpg" width="253" height="158" alt="">
							<h2 class="title">정밀안전점검</h2>
							<!-- <div class="description">Phasellus quis mauris non mauris
								sceleris vehicula. Vestibulum ipsum odio, placerat sed consequat
								in, congue non nibh.</div> -->
						</a> <a href="#" class="banner"> <img
							src="/img/content/recent4.jpg" width="253" height="158" alt="">
							<h2 class="title">정밀안전진단</h2>
							<!-- <div class="description">Maecenas et massa odio, tincidunt
								ultrices sapien. Praesent non tortor quis metus posuere gravida
								at quis nulla.</div> -->
						</a> <a href="#" class="banner"> <img
							src="/img/content/recent5.jpg" width="253" height="158" alt="">
							<h2 class="title">하자진단</h2>
							<!-- <div class="description">Nunc condimentum eros vel nibh
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