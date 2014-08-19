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
	pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page import="egovframework.com.cmm.LoginVO"%>
<%@ page session="false" %>
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
							<h2 class="title">Home Theater</h2>
							<div class="description">Nunc condimentum eros vel nibh
								consectetur dignissim. Ut ante neque, ullamcorper ac feugiat at,
								ullamcorper sagittis magna.</div>
						</a> <a href="#" class="banner"> <img
							src="/img/content/recent2.jpg" width="253" height="158" alt="">
							<h2 class="title">Multiroom</h2>
							<div class="description">Maecenas ac leo velit. Aliquam
								venenatis tellus in erat pellentesque ut dignissim turpis
								consequat. Fusce sit amet sagittis urna.</div>
						</a> <a href="#" class="banner"> <img
							src="/img/content/recent3.jpg" width="253" height="158" alt="">
							<h2 class="title">Lighting Control</h2>
							<div class="description">Phasellus quis mauris non mauris
								sceleris vehicula. Vestibulum ipsum odio, placerat sed consequat
								in, congue non nibh.</div>
						</a> <a href="#" class="banner"> <img
							src="/img/content/recent4.jpg" width="253" height="158" alt="">
							<h2 class="title">Amazing Sound</h2>
							<div class="description">Maecenas et massa odio, tincidunt
								ultrices sapien. Praesent non tortor quis metus posuere gravida
								at quis nulla.</div>
						</a> <a href="#" class="banner"> <img
							src="/img/content/recent5.jpg" width="253" height="158" alt="">
							<h2 class="title">Home Theater</h2>
							<div class="description">Nunc condimentum eros vel nibh
								consectetur dignissim. Ut ante neque, ullamcorper ac feugiat at,
								ullamcorper sagittis magna.</div>
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

			<section id="main"> <article class="content">
			<div class="container">
				<div class="title-box">
					<h1 class="title">Who we are</h1>
				</div>

				<div class="row">
					<div class="col-sm-6 col-md-6 bottom-padding">
						<p class="lead">
							<strong>Lorem ipsum dolor sit amet, consectetur
								adipisicing elit. Facilis minus pariatur eligendi sunt
								doloremque vitae reiciendis tempore voluptatibus quis architecto
								suscipit magnam.</strong>
						</p>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Repudiandae odit iste exercitationem praesentium deleniti nostrum
							laborum rem id nihil tempora. Adipisci ea commodi unde nam
							placeat cupiditate quasi a ducimus rem consequuntur ex eligendi
							minima voluptatem assumenda voluptas quidem sit maiores odio
							velit voluptate.</p>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Facilis dolorum mollitia debitis numquam itaque facere culpa
							harum natus amet alias dolor repudiandae repellendus distinctio
							aliquid placeat perspiciatis quaerat beatae vero?</p>
						<a href="#" class="btn btn-default">Read more</a>
					</div>

					<div class="col-sm-6 col-md-6 bottom-padding">
						<div class="progress border-radius hover"
							data-appear-progress-animation="80%">
							<div class="progress-bar progress-bar-info">Web Design 80%</div>
						</div>

						<div class="progress border-radius"
							data-appear-progress-animation="70%">
							<div class="progress-bar progress-bar-success">HTML/CSS 70%</div>
						</div>

						<div class="progress border-radius"
							data-appear-progress-animation="40%">
							<div class="progress-bar progress-bar-info">Opencart 40%</div>
						</div>

						<div class="progress border-radius"
							data-appear-progress-animation="90%">
							<div class="progress-bar progress-bar-warning">Graphic
								Design 90%</div>
						</div>

						<div class="progress border-radius"
							data-appear-progress-animation="58%">
							<div class="progress-bar progress-bar-danger">WordPress 58%</div>
						</div>
					</div>
					<!-- .employee -->
				</div>

				<div class="carousel-box bottom-padding load">
					<div class="clearfix"></div>

					<div class="row">
						<div class="carousel no-responsive gallery">
							<div class="col-sm-4 col-md-3">
								<a class="gallery-images" rel="fancybox"
									href="img/content/office-1.jpg"> <img
									src="/img/content/office-1-270.jpg" width="270" height="135"
									alt=""> <span class="bg-images"><i
										class="fa fa-search"></i></span>
								</a>
							</div>
							<div class="col-sm-4 col-md-3">
								<a class="gallery-images" rel="fancybox"
									href="img/content/office-2.jpg"> <img
									src="/img/content/office-2-270.jpg" width="270" height="135"
									alt=""> <span class="bg-images"><i
										class="fa fa-search"></i></span>
								</a>
							</div>
							<div class="col-sm-4 col-md-3">
								<a class="gallery-images" rel="fancybox"
									href="img/content/office-3.jpg"> <img
									src="/img/content/office-3-270.jpg" width="270" height="135"
									alt=""> <span class="bg-images"><i
										class="fa fa-search"></i></span>
								</a>
							</div>
							<div class="col-sm-4 col-md-3">
								<a class="gallery-images" rel="fancybox"
									href="img/content/office-4.jpg"> <img
									src="/img/content/office-4-270.jpg" width="270" height="135"
									alt=""> <span class="bg-images"><i
										class="fa fa-search"></i></span>
								</a>
							</div>
						</div>
					</div>
				</div>

				<div class="clearfix"></div>
			</div>

			<div class="full-width-box bottom-padding cm-padding-bottom-36">
				<div class="fwb-bg fwb-paralax band-6"
					data-stellar-background-ratio="0.5">
					<div class="overlay"></div>
				</div>

				<div class="container">
					<div class="portfolio">
						<div class="btn-group filter-buttons filter-list white">
							<button type="button" class="dropdown-toggle"
								data-toggle="dropdown">
								All works <span class="caret"></span>
							</button>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#" data-filter="*" class="active">All
										works</a></li>
								<li><a href="#" data-filter=".web-design">Web Design</a></li>
								<li><a href="#" data-filter=".graphic-design">Graphic
										Design</a></li>
								<li><a href="#" data-filter=".ecommerce">eCommerce</a></li>
							</ul>
							<div class="clearfix"></div>
						</div>
						<!-- .filter-buttons -->

						<div class="clearfix"></div>

						<div class="row filter-elements">
							<div class="work-element web-design col-xs-12 col-sm-3 col-md-3">
								<a href="portfolio-single.html" class="work"> <img
									src="/img/content/portfolio-1-270.jpg" width="270" height="197"
									alt=""> <span class="shadow"></span>
									<div class="bg-hover"></div>
									<div class="work-title">
										<h3 class="title">Morbi non lacus ac sapien molestie</h3>
										<div class="description">Web design</div>
									</div>
								</a>
							</div>
							<!-- .work-element -->

							<div
								class="work-element graphic-design col-xs-12 col-sm-3 col-md-3">
								<a href="portfolio-single.html" class="work"> <img
									src="/img/content/portfolio-2-270.jpg" width="270" height="197"
									alt=""> <span class="shadow"></span>
									<div class="bg-hover"></div>
									<div class="work-title">
										<h3 class="title">Sed at turpis tortor bibendum</h3>
										<div class="description">Web design</div>
									</div>
								</a>
							</div>
							<!-- .work-element -->

							<div class="work-element ecommerce col-xs-12 col-sm-3 col-md-3">
								<a href="portfolio-single.html" class="work"> <img
									src="/img/content/portfolio-3-270.jpg" width="270" height="197"
									alt=""> <span class="shadow"></span>
									<div class="bg-hover"></div>
									<div class="work-title">
										<h3 class="title">Mauris quis sapien mass</h3>
										<div class="description">Web design</div>
									</div>
								</a>
							</div>
							<!-- .work-element -->

							<div
								class="work-element graphic-design col-xs-12 col-sm-3 col-md-3">
								<a href="portfolio-single.html" class="work"> <img
									src="/img/content/portfolio-4-270.jpg" width="270" height="197"
									alt=""> <span class="shadow"></span>
									<div class="bg-hover"></div>
									<div class="work-title">
										<h3 class="title">Donec pulvinar pulvinar arcu</h3>
										<div class="description">Other</div>
									</div>
								</a>
							</div>
							<!-- .work-element -->

							<div
								class="work-element graphic-design col-xs-12 col-sm-3 col-md-3">
								<a href="portfolio-single.html" class="work"> <img
									src="/img/content/portfolio-5-270.jpg" width="270" height="197"
									alt=""> <span class="shadow"></span>
									<div class="bg-hover"></div>
									<div class="work-title">
										<h3 class="title">Proin faucibus pretium</h3>
										<div class="description">Web design</div>
									</div>
								</a>
							</div>
							<!-- .work-element -->

							<div class="work-element ecommerce col-xs-12 col-sm-3 col-md-3">
								<a href="portfolio-single.html" class="work"> <img
									src="/img/content/portfolio-6-270.jpg" width="270" height="197"
									alt=""> <span class="shadow"></span>
									<div class="bg-hover"></div>
									<div class="work-title">
										<h3 class="title">Pellentesque in dui mauris</h3>
										<div class="description">Other</div>
									</div>
								</a>
							</div>
							<!-- .work-element -->

							<div class="work-element ecommerce col-xs-12 col-sm-3 col-md-3">
								<a href="portfolio-single.html" class="work"> <img
									src="/img/content/portfolio-7-270.jpg" width="270" height="197"
									alt=""> <span class="shadow"></span>
									<div class="bg-hover"></div>
									<div class="work-title">
										<h3 class="title">Vivamus auctor metus porta</h3>
										<div class="description">Web design</div>
									</div>
								</a>
							</div>
							<!-- .work-element -->

							<div class="work-element web-design col-xs-12 col-sm-3 col-md-3">
								<a href="portfolio-single.html" class="work"> <img
									src="/img/content/portfolio-8-270.jpg" width="270" height="197"
									alt=""> <span class="shadow"></span>
									<div class="bg-hover"></div>
									<div class="work-title">
										<h3 class="title">Quisque nec lorem vel metus ultrices</h3>
										<div class="description">Web design</div>
									</div>
								</a>
							</div>
							<!-- .work-element -->
						</div>
					</div>
				</div>
			</div>
			<!-- .full-width-box -->

			<div class="container">
				<div class="row services">
					<div class="col-sm-12 col-md-12">
						<div class="title-box">
							<h1 class="title">Services</h1>
						</div>
					</div>

					<div class="big-services-box col-sm-4 col-md-4">
						<div>
							<div class="big-icon bg" data-appear-animation="wobble">
								<i class="fa fa-picture-o"></i>
							</div>
							<h4 class="title" data-appear-animation="bounceInLeft">Web
								Design</h4>
							<div class="text-small" data-appear-animation="bounceInLeft">
								Duis aute irure dolor in reprehenderit in voluptate velit esse
								cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat
								cupidatat.
								<div class="clearfix"></div>
								<br>
								<button class="btn btn-default">Read more</button>
							</div>
						</div>
					</div>
					<!-- .services-box-two -->

					<div class="big-services-box col-sm-4 col-md-4">
						<div>
							<div class="big-icon bg" data-appear-animation="wobble">
								<i class="fa fa-wrench"></i>
							</div>
							<h4 class="title" data-appear-animation="bounceInUp">Graphic
								Design</h4>
							<div class="text-small" data-appear-animation="bounceInUp">
								The standard chunk of Lorem Ipsum used since the 1500s is
								reproduced below for those intereste. It is a long established
								fact that a reader.
								<div class="clearfix"></div>
								<br>
								<button class="btn btn-default">Read more</button>
							</div>
						</div>
					</div>
					<!-- .services-box-two -->

					<div class="big-services-box col-sm-4 col-md-4">
						<div>
							<div class="big-icon bg" data-appear-animation="wobble">
								<i class="fa fa-bug"></i>
							</div>
							<h4 class="title" data-appear-animation="bounceInRight">Internet
								Marketing</h4>
							<div class="text-small" data-appear-animation="bounceInRight">
								The readable content of a page when looking at its layout. The
								point of using. Duis aute irure dolor reprehenderit in voluptate
								velit esse cillum.
								<div class="clearfix"></div>
								<br>
								<button class="btn btn-default">Read more</button>
							</div>
						</div>
					</div>
					<!-- .services-box-two -->
				</div>
				<br>
				<br>
			</div>

			<div class="full-width-box bottom-padding cm-padding-bottom-36">
				<div class="fwb-bg fwb-fixed band-1">
					<div class="overlay"></div>
				</div>

				<div class="container">
					<div class="row text-center">
						<div class="col-sm-6 col-md-4 col-lg-3">
							<div class="pricing">
								<div class="title">
									<a href="#">First Package</a>
								</div>
								<div class="price-box">
									<div class="icon pull-right circle">
										<span class="livicon" data-n="shopping-cart" data-s="32"
											data-c="#1e1e1e" data-hc="0"></span>
									</div>
									<div class="starting">Starting at</div>
									<div class="price">
										$199<span>/month</span>
									</div>
								</div>
								<ul class="options">
									<li><span><i class="fa fa-check"></i></span>Responsive
										Design</li>
									<li class="active"><span><i class="fa fa-check"></i></span>Styled
										elements</li>
									<li><span><i class="fa fa-check"></i></span>Easy Setup</li>
								</ul>
								<div class="bottom-box">
									<a href="#" class="more">Read more <span
										class="fa fa-angle-right"></span></a>
									<div class="rating-box">
										<div style="width: 60%" class="rating">
											<svg xmlns="http://www.w3.org/2000/svg"
												xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
												width="73px" height="12px" viewBox="0 0 73 12"
												enable-fwb-bg="new 0 0 73 12" xml:space="preserve"> <polygon
												fill-rule="evenodd" clip-rule="evenodd" fill="#1e1e1e"
												points="6.5,0 8,5 13,5 9,7.7 10,12 6.5,9.2 3,12 4,7.7 0,5 5,5"></polygon>
											<polygon fill-rule="evenodd" clip-rule="evenodd"
												fill="#1e1e1e"
												points="66.5,0 68,5 73,5 69,7.7 70,12 66.5,9.2 63,12 64,7.7 60,5 65,5 "></polygon>
											<polygon fill-rule="evenodd" clip-rule="evenodd"
												fill="#1e1e1e"
												points="21.5,0 23,5 28,5 24,7.7 25,12 21.5,9.2 18,12 19,7.7 15,5 20,5 "></polygon>
											<polygon fill-rule="evenodd" clip-rule="evenodd"
												fill="#1e1e1e"
												points="51.5,0 53,5 58,5 54,7.7 55,12 51.5,9.2 48,12 49,7.7 45,5 50,5 "></polygon>
											<polygon fill-rule="evenodd" clip-rule="evenodd"
												fill="#1e1e1e"
												points="36.5,0 38,5 43,5 39,7.7 40,12 36.5,9.2 33,12 34,7.7 30,5 35,5 "></polygon>
											</svg>
										</div>
									</div>
									<div class="clearfix"></div>
									<button class="btn btn-default btn-lg">Buy Now</button>
								</div>
							</div>
							<!-- .pricing -->
						</div>

						<div class="col-sm-6 col-md-4 col-lg-3">
							<div class="pricing prising-info">
								<div class="title">
									<a href="#">Second Package</a>
								</div>
								<div class="price-box">
									<div class="icon pull-right circle">
										<span class="livicon" data-n="wrench" data-s="32"
											data-c="#35beeb" data-hc="0"></span>
									</div>
									<div class="starting">Starting at</div>
									<div class="price">
										$299<span>/month</span>
									</div>
								</div>
								<ul class="options">
									<li><span><i class="fa fa-check"></i></span>Responsive
										Design</li>
									<li class="active"><span><i class="fa fa-check"></i></span>Styled
										elements</li>
									<li><span><i class="fa fa-check"></i></span>Easy Setup</li>
								</ul>
								<div class="bottom-box">
									<a href="#" class="more">Read more <span
										class="fa fa-angle-right"></span></a>
									<div class="rating-box">
										<div style="width: 80%" class="rating">
											<svg xmlns="http://www.w3.org/2000/svg"
												xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
												width="73px" height="12px" viewBox="0 0 73 12"
												enable-fwb-bg="new 0 0 73 12" xml:space="preserve"> <polygon
												fill-rule="evenodd" clip-rule="evenodd" fill="#1e1e1e"
												points="6.5,0 8,5 13,5 9,7.7 10,12 6.5,9.2 3,12 4,7.7 0,5 5,5"></polygon>
											<polygon fill-rule="evenodd" clip-rule="evenodd"
												fill="#1e1e1e"
												points="66.5,0 68,5 73,5 69,7.7 70,12 66.5,9.2 63,12 64,7.7 60,5 65,5 "></polygon>
											<polygon fill-rule="evenodd" clip-rule="evenodd"
												fill="#1e1e1e"
												points="21.5,0 23,5 28,5 24,7.7 25,12 21.5,9.2 18,12 19,7.7 15,5 20,5 "></polygon>
											<polygon fill-rule="evenodd" clip-rule="evenodd"
												fill="#1e1e1e"
												points="51.5,0 53,5 58,5 54,7.7 55,12 51.5,9.2 48,12 49,7.7 45,5 50,5 "></polygon>
											<polygon fill-rule="evenodd" clip-rule="evenodd"
												fill="#1e1e1e"
												points="36.5,0 38,5 43,5 39,7.7 40,12 36.5,9.2 33,12 34,7.7 30,5 35,5 "></polygon>
											</svg>
										</div>
									</div>
									<div class="clearfix"></div>
									<button class="btn btn-info btn-lg">Buy Now</button>
								</div>
							</div>
							<!-- .pricing -->
						</div>

						<div class="col-sm-6 col-md-4 col-lg-3">
							<div class="pricing pricing-success">
								<div class="title">
									<a href="#">Third Package</a>
								</div>
								<div class="price-box">
									<div class="icon pull-right circle">
										<span class="livicon" data-n="piggybank" data-s="32"
											data-c="#9ab71a" data-hc="0"></span>
									</div>
									<div class="starting">Starting at</div>
									<div class="price">
										$399<span>/month</span>
									</div>
								</div>
								<ul class="options">
									<li class="active"><span><i class="fa fa-check"></i></span>Responsive
										Design</li>
									<li class="active"><span><i class="fa fa-check"></i></span>Styled
										elements</li>
									<li><span><i class="fa fa-check"></i></span>Easy Setup</li>
								</ul>
								<div class="bottom-box">
									<a href="#" class="more">Read more <span
										class="fa fa-angle-right"></span></a>
									<div class="rating-box">
										<div style="width: 80%" class="rating">
											<svg xmlns="http://www.w3.org/2000/svg"
												xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
												width="73px" height="12px" viewBox="0 0 73 12"
												enable-fwb-bg="new 0 0 73 12" xml:space="preserve"> <polygon
												fill-rule="evenodd" clip-rule="evenodd" fill="#1e1e1e"
												points="6.5,0 8,5 13,5 9,7.7 10,12 6.5,9.2 3,12 4,7.7 0,5 5,5"></polygon>
											<polygon fill-rule="evenodd" clip-rule="evenodd"
												fill="#1e1e1e"
												points="66.5,0 68,5 73,5 69,7.7 70,12 66.5,9.2 63,12 64,7.7 60,5 65,5 "></polygon>
											<polygon fill-rule="evenodd" clip-rule="evenodd"
												fill="#1e1e1e"
												points="21.5,0 23,5 28,5 24,7.7 25,12 21.5,9.2 18,12 19,7.7 15,5 20,5 "></polygon>
											<polygon fill-rule="evenodd" clip-rule="evenodd"
												fill="#1e1e1e"
												points="51.5,0 53,5 58,5 54,7.7 55,12 51.5,9.2 48,12 49,7.7 45,5 50,5 "></polygon>
											<polygon fill-rule="evenodd" clip-rule="evenodd"
												fill="#1e1e1e"
												points="36.5,0 38,5 43,5 39,7.7 40,12 36.5,9.2 33,12 34,7.7 30,5 35,5 "></polygon>
											</svg>
										</div>
									</div>
									<div class="clearfix"></div>
									<button class="btn btn-success btn-lg">Buy Now</button>
								</div>
							</div>
							<!-- .pricing -->
						</div>

						<div
							class="col-sm-6 col-md-4 col-md-offset-4 col-lg-3 col-lg-offset-0">
							<div class="pricing pricing-error">
								<div class="title">
									<a href="#">Fourth Package</a>
								</div>
								<div class="price-box">
									<div class="icon pull-right circle">
										<span class="livicon" data-n="key" data-s="32"
											data-c="#de2a61" data-hc="0"></span>
									</div>
									<div class="starting">Starting at</div>
									<div class="price">
										$499<span>/month</span>
									</div>
								</div>
								<ul class="options">
									<li class="active"><span><i class="fa fa-check"></i></span>Responsive
										Design</li>
									<li class="active"><span><i class="fa fa-check"></i></span>Styled
										elements</li>
									<li class="active"><span><i class="fa fa-check"></i></span>Easy
										Setup</li>
								</ul>
								<div class="bottom-box">
									<a href="#" class="more">Read more <span
										class="fa fa-angle-right"></span></a>
									<div class="rating-box">
										<div style="width: 100%" class="rating">
											<svg xmlns="http://www.w3.org/2000/svg"
												xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
												width="73px" height="12px" viewBox="0 0 73 12"
												enable-fwb-bg="new 0 0 73 12" xml:space="preserve"> <polygon
												fill-rule="evenodd" clip-rule="evenodd" fill="#1e1e1e"
												points="6.5,0 8,5 13,5 9,7.7 10,12 6.5,9.2 3,12 4,7.7 0,5 5,5"></polygon>
											<polygon fill-rule="evenodd" clip-rule="evenodd"
												fill="#1e1e1e"
												points="66.5,0 68,5 73,5 69,7.7 70,12 66.5,9.2 63,12 64,7.7 60,5 65,5 "></polygon>
											<polygon fill-rule="evenodd" clip-rule="evenodd"
												fill="#1e1e1e"
												points="21.5,0 23,5 28,5 24,7.7 25,12 21.5,9.2 18,12 19,7.7 15,5 20,5 "></polygon>
											<polygon fill-rule="evenodd" clip-rule="evenodd"
												fill="#1e1e1e"
												points="51.5,0 53,5 58,5 54,7.7 55,12 51.5,9.2 48,12 49,7.7 45,5 50,5 "></polygon>
											<polygon fill-rule="evenodd" clip-rule="evenodd"
												fill="#1e1e1e"
												points="36.5,0 38,5 43,5 39,7.7 40,12 36.5,9.2 33,12 34,7.7 30,5 35,5 "></polygon>
											</svg>
										</div>
									</div>
									<div class="clearfix"></div>
									<button class="btn btn-danger btn-lg">Buy Now</button>
								</div>
							</div>
							<!-- .pricing -->
						</div>
					</div>
				</div>
			</div>
			<!-- .full-width-box -->

			<div class="container">
				<div class="row">
					<div class="bottom-padding col-sm-6 col-md-6">
						<div class="carousel-box load overflow"
							data-carousel-pagination="true" data-carousel-nav="false"
							data-carousel-one="true">
							<div class="title-box">
								<a class="next" href="#"> <svg
										xmlns="http://www.w3.org/2000/svg"
										xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
										width="9px" height="16px" viewBox="0 0 9 16"
										enable-background="new 0 0 9 16" xml:space="preserve"> <polygon
										fill-rule="evenodd" clip-rule="evenodd" fill="#fcfcfc"
										points="1,0.001 0,1.001 7,8 0,14.999 1,15.999 9,8 "></polygon>
									</svg>
								</a> <a class="prev" href="#"> <svg
										xmlns="http://www.w3.org/2000/svg"
										xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
										width="9px" height="16px" viewBox="0 0 9 16"
										enable-background="new 0 0 9 16" xml:space="preserve"> <polygon
										fill-rule="evenodd" clip-rule="evenodd" fill="#fcfcfc"
										points="8,15.999 9,14.999 2,8 9,1.001 8,0.001 0,8 "></polygon>
									</svg>
								</a>
								<h2 class="title">Posts</h2>
							</div>

							<div class="clearfix"></div>

							<div class="row">
								<div class="carousel no-responsive">
									<div class="post">
										<h2 class="entry-title">
											<a href="/blog-view.html">Lorem ipsum dolor sit.</a>
										</h2>
										<div class="entry-content">Lorem ipsum dolor sit amet,
											consectetur adipisicing elit. Excepturi facere earum quis
											ipsa vitae qui minima esse ducimus dolorum iste nisi laborum
											repellat dolores dolore debitis adipisci nemo quia autem
											pariatur a voluptatem dignissimos maiores accusantium nobis
											tempora consequatur cumque quas ea doloribus deleniti.
											Quibusdam commodi laboriosam error temporibus iste ipsa
											soluta distinctio maiores ad totam beatae incidunt veritatis
											enim? Reiciendis voluptate cupiditate asperiores ratione
											laboriosam alias mollitia eaque labore aperiam similique
											reprehenderit assumenda quidem eos explicabo rerum. Porro at
											ex magni aliquam laborum delectus voluptate officia modi nam
											et cupiditate culpa asperiores eaque fuga quae. Dolorum
											commodi labore neque fuga totam voluptate vitae ea laudantium
											iure quos placeat accusamus.</div>

										<div class="entry-meta">
											<span class="autor-name">Mike Example</span>, <span
												class="time">03.11.2012</span> <span class="separator">|</span>
											<span class="meta">Posted in <a href="#">Sports</a>, <a
												href="#">Movies</a></span> <span class="comments-link pull-right">
												<a href="#">3 comment(s)</a>
											</span>
										</div>
									</div>

									<div class="post">
										<h2 class="entry-title">
											<a href="/blog-view.html">Lorem ipsum dolor sit.</a>
										</h2>
										<div class="entry-content">Lorem ipsum dolor sit amet,
											consectetur adipisicing elit. Excepturi facere earum quis
											ipsa vitae qui minima esse ducimus dolorum iste nisi laborum
											repellat dolores dolore debitis adipisci nemo quia autem
											pariatur a voluptatem dignissimos maiores accusantium nobis
											tempora consequatur cumque quas ea doloribus deleniti.
											Quibusdam commodi laboriosam error temporibus iste ipsa
											soluta distinctio maiores ad totam beatae incidunt veritatis
											enim? Reiciendis voluptate cupiditate asperiores ratione
											laboriosam alias mollitia eaque labore aperiam similique
											reprehenderit assumenda quidem eos explicabo rerum. Porro at
											ex magni aliquam laborum delectus voluptate officia modi nam
											et cupiditate culpa asperiores eaque fuga quae. Dolorum
											commodi labore neque fuga totam voluptate vitae ea laudantium
											iure quos placeat accusamus.</div>

										<div class="entry-meta">
											<span class="autor-name">Mike Example</span>, <span
												class="time">03.11.2012</span> <span class="separator">|</span>
											<span class="meta">Posted in <a href="#">Sports</a>, <a
												href="#">Movies</a></span> <span class="comments-link pull-right">
												<a href="#">3 comment(s)</a>
											</span>
										</div>
									</div>
								</div>
							</div>

							<div class="clearfix"></div>

							<div class="pagination switches"></div>
						</div>
					</div>

					<div class="bottom-padding col-sm-6 col-md-6">
						<div class="title-box">
							<h2 class="title">Open a few toggles at a time</h2>
						</div>

						<div class="panel-group multi-collapse" id="accordion2">
							<div class="panel panel-default active">
								<div class="panel-heading">
									<div class="panel-title">
										<a data-toggle="collapse" data-parent="#accordion2"
											href="#collapse21"> Portfolio Pages </a>
									</div>
								</div>
								<div id="collapse21" class="panel-collapse collapse in">
									<div class="panel-body">
										<img src="/img/content/animations-100.png" class="alignright"
											width="100" height="62" alt=""> Lorem ipsum dolor sit
										amet, consectetur adipisicing elit. Dolores ipsa esse
										obcaecati repudiandae veniam amet modi recusandae optio earum
										sequi accusantium culpa vitae iste sit commodi eaque
										voluptatem officia quam.
									</div>
								</div>
							</div>

							<div class="panel panel-default active">
								<div class="panel-heading">
									<div class="panel-title">
										<a data-toggle="collapse" data-parent="#accordion2"
											href="#collapse22"> Gallery Pages </a>
									</div>
								</div>
								<div id="collapse22" class="panel-collapse collapse in">
									<div class="panel-body">Lorem ipsum dolor sit amet,
										consectetur adipisicing elit. Itaque natus quaerat voluptate?
										Asperiores hic dolore voluptate corporis obcaecati reiciendis
										sunt ipsam iste. Eligendi inventore voluptatibus quia saepe
										odit deserunt nam?</div>
								</div>
							</div>

							<div class="panel panel-default">
								<div class="panel-heading">
									<div class="panel-title">
										<a data-toggle="collapse" data-parent="#accordion2"
											href="#collapse23"> Styles Pages </a>
									</div>
								</div>
								<div id="collapse23" class="panel-collapse collapse">
									<div class="panel-body">
										<img src="/img/content/animations.png" class="alignleft"
											width="100" height="62" alt=""> Lorem ipsum dolor sit
										amet, consectetur adipisicing elit. Dolores ipsa esse
										obcaecati repudiandae veniam amet modi recusandae optio earum
										sequi accusantium culpa vitae iste sit commodi eaque
										voluptatem officia quam. Molestiae nobis quidem atque
										explicabo eum facilis libero porro in fugiat pariatur
										molestias maiores voluptates rerum ipsa architecto quae
										assumenda harum fuga modi accusantium nihil dolor consequatur
										totam commodi quam quas neque dolorem veritatis unde adipisci
										ad illo excepturi quia facere reprehenderit non alias cum
										minima labore quo repudiandae perferendis?
									</div>
								</div>
							</div>

							<div class="panel panel-default">
								<div class="panel-heading">
									<div class="panel-title">
										<a data-toggle="collapse" data-parent="#accordion2"
											href="#collapse24"> Shop Pages </a>
									</div>
								</div>
								<div id="collapse24" class="panel-collapse collapse">
									<div class="panel-body">
										<img src="/img/content/animations.png" class="alignleft"
											width="100" height="62" alt=""> Lorem ipsum dolor sit
										amet, consectetur adipisicing elit. Dolores ipsa esse
										obcaecati repudiandae veniam amet modi recusandae optio earum
										sequi accusantium culpa vitae iste sit commodi eaque
										voluptatem officia quam. Molestiae nobis quidem atque
										explicabo eum facilis libero porro in fugiat pariatur
										molestias maiores voluptates rerum ipsa architecto quae
										assumenda harum fuga modi accusantium nihil dolor consequatur
										totam commodi quam quas neque dolorem veritatis unde adipisci
										ad illo excepturi quia facere reprehenderit non alias cum
										minima labore quo repudiandae perferendis?
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div id="cm-video-bg" class="full-width-box bottom-padding">
				<div class="fwb-bg fwb-video band-16">
					<video autoplay="" muted="" loop=""> <source
						src="video/video.mp4" type="video/mp4"> <source
						src="video/video.webm" type="video/webm"></video>
					<div class="overlay"></div>
				</div>

				<div class="container">
					<div class="row">
						<div class="white text-center col-sm-12 col-md-12">
							<div class="title-box text-center title-white">
								<h1 class="title">Video Background</h1>
							</div>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Itaque quisquam aperiam necessitatibus id consequuntur quidem
								praesentium laboriosam repellendus modi fugiat aliquam quam
								minus mollitia eveniet sapiente perferendis voluptatibus ad rem?
								Id nesciunt alias neque non illum facilis nobis cupiditate ullam
								corrupti nisi esse cum tempore tempora praesentium soluta autem
								vitae!</p>
							<a href="#" class="btn btn-default">Read more</a>
						</div>
					</div>
				</div>
			</div>
			<!-- .full-width-box -->

			<div class="container">
				<div
					class="carousel-box bottom-padding bottom-padding-mini load overflow">
					<div class="title-box no-margin">
						<a class="next" href="#"> <svg
								xmlns="http://www.w3.org/2000/svg"
								xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
								width="9px" height="16px" viewBox="0 0 9 16"
								enable-background="new 0 0 9 16" xml:space="preserve"> <polygon
								fill-rule="evenodd" clip-rule="evenodd" fill="#fcfcfc"
								points="1,0.001 0,1.001 7,8 0,14.999 1,15.999 9,8 "></polygon> </svg>
						</a> <a class="prev" href="#"> <svg
								xmlns="http://www.w3.org/2000/svg"
								xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
								width="9px" height="16px" viewBox="0 0 9 16"
								enable-background="new 0 0 9 16" xml:space="preserve"> <polygon
								fill-rule="evenodd" clip-rule="evenodd" fill="#fcfcfc"
								points="8,15.999 9,14.999 2,8 9,1.001 8,0.001 0,8 "></polygon> </svg>
						</a>
						<h2 class="title">Best Sellers</h2>
					</div>

					<div class="clearfix"></div>

					<div class="row">
						<div class="carousel products">
							<div class="col-sm-3 col-md-3 product rotation">
								<div class="default">
									<a href="shop-product-view.html" class="product-image"> <img
										src="/img/content/product-11.png" alt="" title="" width="270"
										height="270">
									</a>
									<div class="product-description">
										<div class="vertical">
											<h3 class="product-name">
												<a href="shop-product-view.html">Sony Led TV KDL-46HX853</a>
											</h3>
											<div class="price">$1, 449.00</div>
										</div>
									</div>
								</div>
								<div class="product-hover">
									<h3 class="product-name">
										<a href="shop-product-view.html">Sony Led TV KDL-46HX853</a>
									</h3>
									<div class="price">$1, 449.00</div>
									<a href="shop-product-view.html" class="product-image"> <img
										src="/img/content/product-11.png" alt="" title="" width="70"
										height="70">
									</a>
									<ul>
										<li>117 cm / 46"LCD TV</li>
										<li>Full HD 3D &amp; 2D</li>
										<li>Sony Internet TV</li>
										<li>Dynamic Edge LED</li>
										<li>1X-Reality PRO</li>
									</ul>
									<div class="actions">
										<a href="shop-product-view.html" class="add-cart"> <svg
												xmlns="http://www.w3.org/2000/svg"
												xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
												width="16px" height="16px" viewBox="0 0 16 16"
												enable-background="new 0 0 16 16" xml:space="preserve">
											<g> <path fill="#1e1e1e"
												d="M15.001,4h-0.57l-3.707-3.707c-0.391-0.391-1.023-0.391-1.414,0c-0.391,0.391-0.391,1.023,0,1.414L11.603,4
						  H4.43l2.293-2.293c0.391-0.391,0.391-1.023,0-1.414s-1.023-0.391-1.414,0L1.602,4H1C0.448,4,0,4.448,0,5s0.448,1,1,1
						  c0,2.69,0,7.23,0,8c0,1.104,0.896,2,2,2h10c1.104,0,2-0.896,2-2c0-0.77,0-5.31,0-8c0.553,0,1-0.448,1-1S15.554,4,15.001,4z
						  M13.001,14H3V6h10V14z"></path>
											<path fill="#1e1e1e"
												d="M11.001,13c0.553,0,1-0.447,1-1V8c0-0.553-0.447-1-1-1s-1,0.447-1,1v4C10.001,12.553,10.448,13,11.001,13z"></path>
											<path fill="#1e1e1e"
												d="M8,13c0.553,0,1-0.447,1-1V8c0-0.553-0.448-1-1-1S7,7.447,7,8v4C7,12.553,7.448,13,8,13z"></path>
											<path fill="#1e1e1e"
												d="M5,13c0.553,0,1-0.447,1-1V8c0-0.553-0.447-1-1-1S4,7.447,4,8v4C4,12.553,4.448,13,5,13z"></path>
											</g> </svg>
										</a> <a href="#" class="add-wishlist"> <svg
												xmlns="http://www.w3.org/2000/svg"
												xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
												width="16px" height="16px" viewBox="0 0 16 16"
												enable-background="new 0 0 16 16" xml:space="preserve">
											<path fill="#1e1e1e"
												d="M11.335,0C10.026,0,8.848,0.541,8,1.407C7.153,0.541,5.975,0,4.667,0C2.088,0,0,2.09,0,4.667C0,12,8,16,8,16
					  s8-4,8-11.333C16.001,2.09,13.913,0,11.335,0z M8,13.684C6.134,12.49,2,9.321,2,4.667C2,3.196,3.197,2,4.667,2C6,2,8,4,8,4
					  s2-2,3.334-2c1.47,0,2.666,1.196,2.666,2.667C14.001,9.321,9.867,12.49,8,13.684z"></path>
											</svg>
										</a> <a href="#" class="add-compare"> <svg
												xmlns="http://www.w3.org/2000/svg"
												xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
												width="16px" height="16px" viewBox="0 0 16 16"
												enable-background="new 0 0 16 16" xml:space="preserve">
											<path fill="#1e1e1e"
												d="M16,3.063L13,0v2H1C0.447,2,0,2.447,0,3s0.447,1,1,1h12v2L16,3.063z"></path>
											<path fill="#1e1e1e"
												d="M16,13.063L13,10v2H1c-0.553,0-1,0.447-1,1s0.447,1,1,1h12v2L16,13.063z"></path>
											<path fill="#1e1e1e"
												d="M15,7H3V5L0,7.938L3,11V9h12c0.553,0,1-0.447,1-1S15.553,7,15,7z"></path>
											</svg>
										</a>
									</div>
									<!-- .actions -->
								</div>
								<!-- .product-hover -->
							</div>
							<!-- .product -->
							<div class="col-sm-3 col-md-3 product rotation">
								<div class="default">
									<a href="shop-product-view.html" class="product-image"> <img
										src="/img/content/product-12.png" alt="" title="" width="270"
										height="270">
									</a>
									<div class="product-description">
										<div class="vertical">
											<h3 class="product-name">
												<a href="shop-product-view.html">Sony 3D TV KD3-46H853</a>
											</h3>
											<div class="price">$1, 449.00</div>
										</div>
									</div>
								</div>
								<div class="product-hover">
									<h3 class="product-name">
										<a href="shop-product-view.html">Sony 3D TV KD3-46H853</a>
									</h3>
									<div class="price">$1, 449.00</div>
									<a href="shop-product-view.html" class="product-image"> <img
										src="/img/content/product-12.png" alt="" title="" width="70"
										height="70">
									</a>
									<ul>
										<li>117 cm / 46"LCD TV</li>
										<li>Full HD 3D &amp; 2D</li>
										<li>Sony Internet TV</li>
										<li>Dynamic Edge LED</li>
										<li>1X-Reality PRO</li>
									</ul>
									<div class="actions">
										<a href="shop-product-view.html" class="add-cart"> <svg
												xmlns="http://www.w3.org/2000/svg"
												xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
												width="16px" height="16px" viewBox="0 0 16 16"
												enable-background="new 0 0 16 16" xml:space="preserve">
											<g> <path fill="#1e1e1e"
												d="M15.001,4h-0.57l-3.707-3.707c-0.391-0.391-1.023-0.391-1.414,0c-0.391,0.391-0.391,1.023,0,1.414L11.603,4
						  H4.43l2.293-2.293c0.391-0.391,0.391-1.023,0-1.414s-1.023-0.391-1.414,0L1.602,4H1C0.448,4,0,4.448,0,5s0.448,1,1,1
						  c0,2.69,0,7.23,0,8c0,1.104,0.896,2,2,2h10c1.104,0,2-0.896,2-2c0-0.77,0-5.31,0-8c0.553,0,1-0.448,1-1S15.554,4,15.001,4z
						  M13.001,14H3V6h10V14z"></path>
											<path fill="#1e1e1e"
												d="M11.001,13c0.553,0,1-0.447,1-1V8c0-0.553-0.447-1-1-1s-1,0.447-1,1v4C10.001,12.553,10.448,13,11.001,13z"></path>
											<path fill="#1e1e1e"
												d="M8,13c0.553,0,1-0.447,1-1V8c0-0.553-0.448-1-1-1S7,7.447,7,8v4C7,12.553,7.448,13,8,13z"></path>
											<path fill="#1e1e1e"
												d="M5,13c0.553,0,1-0.447,1-1V8c0-0.553-0.447-1-1-1S4,7.447,4,8v4C4,12.553,4.448,13,5,13z"></path>
											</g> </svg>
										</a> <a href="#" class="add-wishlist"> <svg
												xmlns="http://www.w3.org/2000/svg"
												xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
												width="16px" height="16px" viewBox="0 0 16 16"
												enable-background="new 0 0 16 16" xml:space="preserve">
											<path fill="#1e1e1e"
												d="M11.335,0C10.026,0,8.848,0.541,8,1.407C7.153,0.541,5.975,0,4.667,0C2.088,0,0,2.09,0,4.667C0,12,8,16,8,16
					  s8-4,8-11.333C16.001,2.09,13.913,0,11.335,0z M8,13.684C6.134,12.49,2,9.321,2,4.667C2,3.196,3.197,2,4.667,2C6,2,8,4,8,4
					  s2-2,3.334-2c1.47,0,2.666,1.196,2.666,2.667C14.001,9.321,9.867,12.49,8,13.684z"></path>
											</svg>
										</a> <a href="#" class="add-compare"> <svg
												xmlns="http://www.w3.org/2000/svg"
												xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
												width="16px" height="16px" viewBox="0 0 16 16"
												enable-background="new 0 0 16 16" xml:space="preserve">
											<path fill="#1e1e1e"
												d="M16,3.063L13,0v2H1C0.447,2,0,2.447,0,3s0.447,1,1,1h12v2L16,3.063z"></path>
											<path fill="#1e1e1e"
												d="M16,13.063L13,10v2H1c-0.553,0-1,0.447-1,1s0.447,1,1,1h12v2L16,13.063z"></path>
											<path fill="#1e1e1e"
												d="M15,7H3V5L0,7.938L3,11V9h12c0.553,0,1-0.447,1-1S15.553,7,15,7z"></path>
											</svg>
										</a>
									</div>
									<!-- .actions -->
								</div>
								<!-- .product-hover -->
							</div>
							<!-- .product -->
							<div class="col-sm-3 col-md-3 product rotation">
								<div class="default">
									<a href="shop-product-view.html" class="product-image"> <img
										src="/img/content/product-13.png" alt="" title="" width="270"
										height="270">
									</a>
									<div class="product-description">
										<div class="vertical">
											<h3 class="product-name">
												<a href="shop-product-view.html">Projector VPL-VW95ES</a>
											</h3>
											<div class="price">$1, 449.00</div>
										</div>
									</div>
								</div>
								<div class="product-hover">
									<h3 class="product-name">
										<a href="shop-product-view.html">Projector VPL-VW95ES</a>
									</h3>
									<div class="price">$1, 449.00</div>
									<a href="shop-product-view.html" class="product-image"> <img
										src="/img/content/product-13.png" alt="" title="" width="70"
										height="70">
									</a>
									<ul>
										<li>117 cm / 46"LCD TV</li>
										<li>Full HD 3D &amp; 2D</li>
										<li>Sony Internet TV</li>
										<li>Dynamic Edge LED</li>
										<li>1X-Reality PRO</li>
									</ul>
									<div class="actions">
										<a href="shop-product-view.html" class="add-cart"> <svg
												xmlns="http://www.w3.org/2000/svg"
												xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
												width="16px" height="16px" viewBox="0 0 16 16"
												enable-background="new 0 0 16 16" xml:space="preserve">
											<g> <path fill="#1e1e1e"
												d="M15.001,4h-0.57l-3.707-3.707c-0.391-0.391-1.023-0.391-1.414,0c-0.391,0.391-0.391,1.023,0,1.414L11.603,4
						  H4.43l2.293-2.293c0.391-0.391,0.391-1.023,0-1.414s-1.023-0.391-1.414,0L1.602,4H1C0.448,4,0,4.448,0,5s0.448,1,1,1
						  c0,2.69,0,7.23,0,8c0,1.104,0.896,2,2,2h10c1.104,0,2-0.896,2-2c0-0.77,0-5.31,0-8c0.553,0,1-0.448,1-1S15.554,4,15.001,4z
						  M13.001,14H3V6h10V14z"></path>
											<path fill="#1e1e1e"
												d="M11.001,13c0.553,0,1-0.447,1-1V8c0-0.553-0.447-1-1-1s-1,0.447-1,1v4C10.001,12.553,10.448,13,11.001,13z"></path>
											<path fill="#1e1e1e"
												d="M8,13c0.553,0,1-0.447,1-1V8c0-0.553-0.448-1-1-1S7,7.447,7,8v4C7,12.553,7.448,13,8,13z"></path>
											<path fill="#1e1e1e"
												d="M5,13c0.553,0,1-0.447,1-1V8c0-0.553-0.447-1-1-1S4,7.447,4,8v4C4,12.553,4.448,13,5,13z"></path>
											</g> </svg>
										</a> <a href="#" class="add-wishlist"> <svg
												xmlns="http://www.w3.org/2000/svg"
												xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
												width="16px" height="16px" viewBox="0 0 16 16"
												enable-background="new 0 0 16 16" xml:space="preserve">
											<path fill="#1e1e1e"
												d="M11.335,0C10.026,0,8.848,0.541,8,1.407C7.153,0.541,5.975,0,4.667,0C2.088,0,0,2.09,0,4.667C0,12,8,16,8,16
					  s8-4,8-11.333C16.001,2.09,13.913,0,11.335,0z M8,13.684C6.134,12.49,2,9.321,2,4.667C2,3.196,3.197,2,4.667,2C6,2,8,4,8,4
					  s2-2,3.334-2c1.47,0,2.666,1.196,2.666,2.667C14.001,9.321,9.867,12.49,8,13.684z"></path>
											</svg>
										</a> <a href="#" class="add-compare"> <svg
												xmlns="http://www.w3.org/2000/svg"
												xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
												width="16px" height="16px" viewBox="0 0 16 16"
												enable-background="new 0 0 16 16" xml:space="preserve">
											<path fill="#1e1e1e"
												d="M16,3.063L13,0v2H1C0.447,2,0,2.447,0,3s0.447,1,1,1h12v2L16,3.063z"></path>
											<path fill="#1e1e1e"
												d="M16,13.063L13,10v2H1c-0.553,0-1,0.447-1,1s0.447,1,1,1h12v2L16,13.063z"></path>
											<path fill="#1e1e1e"
												d="M15,7H3V5L0,7.938L3,11V9h12c0.553,0,1-0.447,1-1S15.553,7,15,7z"></path>
											</svg>
										</a>
									</div>
									<!-- .actions -->
								</div>
								<!-- .product-hover -->
							</div>
							<!-- .product -->
							<div class="col-sm-3 col-md-3 product rotation">
								<div class="default">
									<a href="shop-product-view.html" class="product-image"> <img
										src="/img/content/product-14.png" alt="" title="" width="270"
										height="270">
									</a>
									<div class="product-description">
										<div class="vertical">
											<h3 class="product-name">
												<a href="shop-product-view.html">XA700 Wireless speaker</a>
											</h3>
											<div class="price">$1, 449.00</div>
										</div>
									</div>
								</div>
								<div class="product-hover">
									<h3 class="product-name">
										<a href="shop-product-view.html">XA700 Wireless speaker</a>
									</h3>
									<div class="price">$1, 449.00</div>
									<a href="shop-product-view.html" class="product-image"> <img
										src="/img/content/product-14.png" alt="" title="" width="70"
										height="70">
									</a>
									<ul>
										<li>117 cm / 46"LCD TV</li>
										<li>Full HD 3D &amp; 2D</li>
										<li>Sony Internet TV</li>
										<li>Dynamic Edge LED</li>
										<li>1X-Reality PRO</li>
									</ul>
									<div class="actions">
										<a href="shop-product-view.html" class="add-cart"> <svg
												xmlns="http://www.w3.org/2000/svg"
												xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
												width="16px" height="16px" viewBox="0 0 16 16"
												enable-background="new 0 0 16 16" xml:space="preserve">
											<g> <path fill="#1e1e1e"
												d="M15.001,4h-0.57l-3.707-3.707c-0.391-0.391-1.023-0.391-1.414,0c-0.391,0.391-0.391,1.023,0,1.414L11.603,4
						  H4.43l2.293-2.293c0.391-0.391,0.391-1.023,0-1.414s-1.023-0.391-1.414,0L1.602,4H1C0.448,4,0,4.448,0,5s0.448,1,1,1
						  c0,2.69,0,7.23,0,8c0,1.104,0.896,2,2,2h10c1.104,0,2-0.896,2-2c0-0.77,0-5.31,0-8c0.553,0,1-0.448,1-1S15.554,4,15.001,4z
						  M13.001,14H3V6h10V14z"></path>
											<path fill="#1e1e1e"
												d="M11.001,13c0.553,0,1-0.447,1-1V8c0-0.553-0.447-1-1-1s-1,0.447-1,1v4C10.001,12.553,10.448,13,11.001,13z"></path>
											<path fill="#1e1e1e"
												d="M8,13c0.553,0,1-0.447,1-1V8c0-0.553-0.448-1-1-1S7,7.447,7,8v4C7,12.553,7.448,13,8,13z"></path>
											<path fill="#1e1e1e"
												d="M5,13c0.553,0,1-0.447,1-1V8c0-0.553-0.447-1-1-1S4,7.447,4,8v4C4,12.553,4.448,13,5,13z"></path>
											</g> </svg>
										</a> <a href="#" class="add-wishlist"> <svg
												xmlns="http://www.w3.org/2000/svg"
												xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
												width="16px" height="16px" viewBox="0 0 16 16"
												enable-background="new 0 0 16 16" xml:space="preserve">
											<path fill="#1e1e1e"
												d="M11.335,0C10.026,0,8.848,0.541,8,1.407C7.153,0.541,5.975,0,4.667,0C2.088,0,0,2.09,0,4.667C0,12,8,16,8,16
					  s8-4,8-11.333C16.001,2.09,13.913,0,11.335,0z M8,13.684C6.134,12.49,2,9.321,2,4.667C2,3.196,3.197,2,4.667,2C6,2,8,4,8,4
					  s2-2,3.334-2c1.47,0,2.666,1.196,2.666,2.667C14.001,9.321,9.867,12.49,8,13.684z"></path>
											</svg>
										</a> <a href="#" class="add-compare"> <svg
												xmlns="http://www.w3.org/2000/svg"
												xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
												width="16px" height="16px" viewBox="0 0 16 16"
												enable-background="new 0 0 16 16" xml:space="preserve">
											<path fill="#1e1e1e"
												d="M16,3.063L13,0v2H1C0.447,2,0,2.447,0,3s0.447,1,1,1h12v2L16,3.063z"></path>
											<path fill="#1e1e1e"
												d="M16,13.063L13,10v2H1c-0.553,0-1,0.447-1,1s0.447,1,1,1h12v2L16,13.063z"></path>
											<path fill="#1e1e1e"
												d="M15,7H3V5L0,7.938L3,11V9h12c0.553,0,1-0.447,1-1S15.553,7,15,7z"></path>
											</svg>
										</a>
									</div>
									<!-- .actions -->
								</div>
								<!-- .product-hover -->
							</div>
							<!-- .product -->
							<div class="col-sm-3 col-md-3 product rotation">
								<div class="default">
									<a href="shop-product-view.html" class="product-image"> <img
										src="/img/content/product-5.png" alt="" title="" width="270"
										height="270">
									</a>
									<div class="product-description">
										<div class="vertical">
											<h3 class="product-name">
												<a href="shop-product-view.html"> 800 Series Diamond</a>
											</h3>
											<div class="price">$1, 449.00</div>
										</div>
									</div>
								</div>
								<div class="product-hover">
									<h3 class="product-name">
										<a href="shop-product-view.html"> 800 Series Diamond</a>
									</h3>
									<div class="price">$1, 449.00</div>
									<a href="shop-product-view.html" class="product-image"> <img
										src="/img/content/product-5.png" alt="" title="" width="70"
										height="70">
									</a>
									<ul>
										<li>117 cm / 46"LCD TV</li>
										<li>Full HD 3D &amp; 2D</li>
										<li>Sony Internet TV</li>
										<li>Dynamic Edge LED</li>
										<li>1X-Reality PRO</li>
									</ul>
									<div class="actions">
										<a href="shop-product-view.html" class="add-cart"> <svg
												xmlns="http://www.w3.org/2000/svg"
												xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
												width="16px" height="16px" viewBox="0 0 16 16"
												enable-background="new 0 0 16 16" xml:space="preserve">
											<g> <path fill="#1e1e1e"
												d="M15.001,4h-0.57l-3.707-3.707c-0.391-0.391-1.023-0.391-1.414,0c-0.391,0.391-0.391,1.023,0,1.414L11.603,4
						  H4.43l2.293-2.293c0.391-0.391,0.391-1.023,0-1.414s-1.023-0.391-1.414,0L1.602,4H1C0.448,4,0,4.448,0,5s0.448,1,1,1
						  c0,2.69,0,7.23,0,8c0,1.104,0.896,2,2,2h10c1.104,0,2-0.896,2-2c0-0.77,0-5.31,0-8c0.553,0,1-0.448,1-1S15.554,4,15.001,4z
						  M13.001,14H3V6h10V14z"></path>
											<path fill="#1e1e1e"
												d="M11.001,13c0.553,0,1-0.447,1-1V8c0-0.553-0.447-1-1-1s-1,0.447-1,1v4C10.001,12.553,10.448,13,11.001,13z"></path>
											<path fill="#1e1e1e"
												d="M8,13c0.553,0,1-0.447,1-1V8c0-0.553-0.448-1-1-1S7,7.447,7,8v4C7,12.553,7.448,13,8,13z"></path>
											<path fill="#1e1e1e"
												d="M5,13c0.553,0,1-0.447,1-1V8c0-0.553-0.447-1-1-1S4,7.447,4,8v4C4,12.553,4.448,13,5,13z"></path>
											</g> </svg>
										</a> <a href="#" class="add-wishlist"> <svg
												xmlns="http://www.w3.org/2000/svg"
												xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
												width="16px" height="16px" viewBox="0 0 16 16"
												enable-background="new 0 0 16 16" xml:space="preserve">
											<path fill="#1e1e1e"
												d="M11.335,0C10.026,0,8.848,0.541,8,1.407C7.153,0.541,5.975,0,4.667,0C2.088,0,0,2.09,0,4.667C0,12,8,16,8,16
					  s8-4,8-11.333C16.001,2.09,13.913,0,11.335,0z M8,13.684C6.134,12.49,2,9.321,2,4.667C2,3.196,3.197,2,4.667,2C6,2,8,4,8,4
					  s2-2,3.334-2c1.47,0,2.666,1.196,2.666,2.667C14.001,9.321,9.867,12.49,8,13.684z"></path>
											</svg>
										</a> <a href="#" class="add-compare"> <svg
												xmlns="http://www.w3.org/2000/svg"
												xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
												width="16px" height="16px" viewBox="0 0 16 16"
												enable-background="new 0 0 16 16" xml:space="preserve">
											<path fill="#1e1e1e"
												d="M16,3.063L13,0v2H1C0.447,2,0,2.447,0,3s0.447,1,1,1h12v2L16,3.063z"></path>
											<path fill="#1e1e1e"
												d="M16,13.063L13,10v2H1c-0.553,0-1,0.447-1,1s0.447,1,1,1h12v2L16,13.063z"></path>
											<path fill="#1e1e1e"
												d="M15,7H3V5L0,7.938L3,11V9h12c0.553,0,1-0.447,1-1S15.553,7,15,7z"></path>
											</svg>
										</a>
									</div>
									<!-- .actions -->
								</div>
								<!-- .product-hover -->
							</div>
							<!-- .product -->
							<div class="col-sm-3 col-md-3 product rotation">
								<div class="default">
									<a href="shop-product-view.html" class="product-image"> <img
										src="/img/content/product-6.png" alt="" title="" width="270"
										height="270">
									</a>
									<div class="product-description">
										<div class="vertical">
											<h3 class="product-name">
												<a href="shop-product-view.html">AirPlay Hi-Fi system</a>
											</h3>
											<div class="price">$1, 449.00</div>
										</div>
									</div>
								</div>
								<div class="product-hover">
									<h3 class="product-name">
										<a href="shop-product-view.html">AirPlay Hi-Fi system</a>
									</h3>
									<div class="price">$1, 449.00</div>
									<a href="shop-product-view.html" class="product-image"> <img
										src="/img/content/product-6.png" alt="" title="" width="70"
										height="70">
									</a>
									<ul>
										<li>117 cm / 46"LCD TV</li>
										<li>Full HD 3D &amp; 2D</li>
										<li>Sony Internet TV</li>
										<li>Dynamic Edge LED</li>
										<li>1X-Reality PRO</li>
									</ul>
									<div class="actions">
										<a href="shop-product-view.html" class="add-cart"> <svg
												xmlns="http://www.w3.org/2000/svg"
												xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
												width="16px" height="16px" viewBox="0 0 16 16"
												enable-background="new 0 0 16 16" xml:space="preserve">
											<g> <path fill="#1e1e1e"
												d="M15.001,4h-0.57l-3.707-3.707c-0.391-0.391-1.023-0.391-1.414,0c-0.391,0.391-0.391,1.023,0,1.414L11.603,4
						  H4.43l2.293-2.293c0.391-0.391,0.391-1.023,0-1.414s-1.023-0.391-1.414,0L1.602,4H1C0.448,4,0,4.448,0,5s0.448,1,1,1
						  c0,2.69,0,7.23,0,8c0,1.104,0.896,2,2,2h10c1.104,0,2-0.896,2-2c0-0.77,0-5.31,0-8c0.553,0,1-0.448,1-1S15.554,4,15.001,4z
						  M13.001,14H3V6h10V14z"></path>
											<path fill="#1e1e1e"
												d="M11.001,13c0.553,0,1-0.447,1-1V8c0-0.553-0.447-1-1-1s-1,0.447-1,1v4C10.001,12.553,10.448,13,11.001,13z"></path>
											<path fill="#1e1e1e"
												d="M8,13c0.553,0,1-0.447,1-1V8c0-0.553-0.448-1-1-1S7,7.447,7,8v4C7,12.553,7.448,13,8,13z"></path>
											<path fill="#1e1e1e"
												d="M5,13c0.553,0,1-0.447,1-1V8c0-0.553-0.447-1-1-1S4,7.447,4,8v4C4,12.553,4.448,13,5,13z"></path>
											</g> </svg>
										</a> <a href="#" class="add-wishlist"> <svg
												xmlns="http://www.w3.org/2000/svg"
												xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
												width="16px" height="16px" viewBox="0 0 16 16"
												enable-background="new 0 0 16 16" xml:space="preserve">
											<path fill="#1e1e1e"
												d="M11.335,0C10.026,0,8.848,0.541,8,1.407C7.153,0.541,5.975,0,4.667,0C2.088,0,0,2.09,0,4.667C0,12,8,16,8,16
					  s8-4,8-11.333C16.001,2.09,13.913,0,11.335,0z M8,13.684C6.134,12.49,2,9.321,2,4.667C2,3.196,3.197,2,4.667,2C6,2,8,4,8,4
					  s2-2,3.334-2c1.47,0,2.666,1.196,2.666,2.667C14.001,9.321,9.867,12.49,8,13.684z"></path>
											</svg>
										</a> <a href="#" class="add-compare"> <svg
												xmlns="http://www.w3.org/2000/svg"
												xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
												width="16px" height="16px" viewBox="0 0 16 16"
												enable-background="new 0 0 16 16" xml:space="preserve">
											<path fill="#1e1e1e"
												d="M16,3.063L13,0v2H1C0.447,2,0,2.447,0,3s0.447,1,1,1h12v2L16,3.063z"></path>
											<path fill="#1e1e1e"
												d="M16,13.063L13,10v2H1c-0.553,0-1,0.447-1,1s0.447,1,1,1h12v2L16,13.063z"></path>
											<path fill="#1e1e1e"
												d="M15,7H3V5L0,7.938L3,11V9h12c0.553,0,1-0.447,1-1S15.553,7,15,7z"></path>
											</svg>
										</a>
									</div>
									<!-- .actions -->
								</div>
								<!-- .product-hover -->
							</div>
							<!-- .product -->
							<div class="col-sm-3 col-md-3 product rotation">
								<div class="default">
									<a href="shop-product-view.html" class="product-image"> <img
										src="/img/content/product-7.png" alt="" title="" width="270"
										height="270">
									</a>
									<div class="product-description">
										<div class="vertical">
											<h3 class="product-name">
												<a href="shop-product-view.html">Sony Xperia Z</a>
											</h3>
											<div class="price">$1, 449.00</div>
										</div>
									</div>
								</div>
								<div class="product-hover">
									<h3 class="product-name">
										<a href="shop-product-view.html">Sony Xperia Z</a>
									</h3>
									<div class="price">$1, 449.00</div>
									<a href="shop-product-view.html" class="product-image"> <img
										src="/img/content/product-7.png" alt="" title="" width="70"
										height="70">
									</a>
									<ul>
										<li>117 cm / 46"LCD TV</li>
										<li>Full HD 3D &amp; 2D</li>
										<li>Sony Internet TV</li>
										<li>Dynamic Edge LED</li>
										<li>1X-Reality PRO</li>
									</ul>
									<div class="actions">
										<a href="shop-product-view.html" class="add-cart"> <svg
												xmlns="http://www.w3.org/2000/svg"
												xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
												width="16px" height="16px" viewBox="0 0 16 16"
												enable-background="new 0 0 16 16" xml:space="preserve">
											<g> <path fill="#1e1e1e"
												d="M15.001,4h-0.57l-3.707-3.707c-0.391-0.391-1.023-0.391-1.414,0c-0.391,0.391-0.391,1.023,0,1.414L11.603,4
						  H4.43l2.293-2.293c0.391-0.391,0.391-1.023,0-1.414s-1.023-0.391-1.414,0L1.602,4H1C0.448,4,0,4.448,0,5s0.448,1,1,1
						  c0,2.69,0,7.23,0,8c0,1.104,0.896,2,2,2h10c1.104,0,2-0.896,2-2c0-0.77,0-5.31,0-8c0.553,0,1-0.448,1-1S15.554,4,15.001,4z
						  M13.001,14H3V6h10V14z"></path>
											<path fill="#1e1e1e"
												d="M11.001,13c0.553,0,1-0.447,1-1V8c0-0.553-0.447-1-1-1s-1,0.447-1,1v4C10.001,12.553,10.448,13,11.001,13z"></path>
											<path fill="#1e1e1e"
												d="M8,13c0.553,0,1-0.447,1-1V8c0-0.553-0.448-1-1-1S7,7.447,7,8v4C7,12.553,7.448,13,8,13z"></path>
											<path fill="#1e1e1e"
												d="M5,13c0.553,0,1-0.447,1-1V8c0-0.553-0.447-1-1-1S4,7.447,4,8v4C4,12.553,4.448,13,5,13z"></path>
											</g> </svg>
										</a> <a href="#" class="add-wishlist"> <svg
												xmlns="http://www.w3.org/2000/svg"
												xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
												width="16px" height="16px" viewBox="0 0 16 16"
												enable-background="new 0 0 16 16" xml:space="preserve">
											<path fill="#1e1e1e"
												d="M11.335,0C10.026,0,8.848,0.541,8,1.407C7.153,0.541,5.975,0,4.667,0C2.088,0,0,2.09,0,4.667C0,12,8,16,8,16
					  s8-4,8-11.333C16.001,2.09,13.913,0,11.335,0z M8,13.684C6.134,12.49,2,9.321,2,4.667C2,3.196,3.197,2,4.667,2C6,2,8,4,8,4
					  s2-2,3.334-2c1.47,0,2.666,1.196,2.666,2.667C14.001,9.321,9.867,12.49,8,13.684z"></path>
											</svg>
										</a> <a href="#" class="add-compare"> <svg
												xmlns="http://www.w3.org/2000/svg"
												xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
												width="16px" height="16px" viewBox="0 0 16 16"
												enable-background="new 0 0 16 16" xml:space="preserve">
											<path fill="#1e1e1e"
												d="M16,3.063L13,0v2H1C0.447,2,0,2.447,0,3s0.447,1,1,1h12v2L16,3.063z"></path>
											<path fill="#1e1e1e"
												d="M16,13.063L13,10v2H1c-0.553,0-1,0.447-1,1s0.447,1,1,1h12v2L16,13.063z"></path>
											<path fill="#1e1e1e"
												d="M15,7H3V5L0,7.938L3,11V9h12c0.553,0,1-0.447,1-1S15.553,7,15,7z"></path>
											</svg>
										</a>
									</div>
									<!-- .actions -->
								</div>
								<!-- .product-hover -->
							</div>
							<!-- .product -->
							<div class="col-sm-3 col-md-3 product rotation">
								<div class="default">
									<a href="shop-product-view.html" class="product-image"> <img
										src="/img/content/product-8.png" alt="" title="" width="270"
										height="270">
									</a>
									<div class="product-description">
										<div class="vertical">
											<h3 class="product-name">
												<a href="shop-product-view.html">Xperia miro</a>
											</h3>
											<div class="price">$1, 449.00</div>
										</div>
									</div>
								</div>
								<div class="product-hover">
									<h3 class="product-name">
										<a href="shop-product-view.html">Xperia miro</a>
									</h3>
									<div class="price">$1, 449.00</div>
									<a href="shop-product-view.html" class="product-image"> <img
										src="/img/content/product-8.png" alt="" title="" width="70"
										height="70">
									</a>
									<ul>
										<li>117 cm / 46"LCD TV</li>
										<li>Full HD 3D &amp; 2D</li>
										<li>Sony Internet TV</li>
										<li>Dynamic Edge LED</li>
										<li>1X-Reality PRO</li>
									</ul>
									<div class="actions">
										<a href="shop-product-view.html" class="add-cart"> <svg
												xmlns="http://www.w3.org/2000/svg"
												xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
												width="16px" height="16px" viewBox="0 0 16 16"
												enable-background="new 0 0 16 16" xml:space="preserve">
											<g> <path fill="#1e1e1e"
												d="M15.001,4h-0.57l-3.707-3.707c-0.391-0.391-1.023-0.391-1.414,0c-0.391,0.391-0.391,1.023,0,1.414L11.603,4
						  H4.43l2.293-2.293c0.391-0.391,0.391-1.023,0-1.414s-1.023-0.391-1.414,0L1.602,4H1C0.448,4,0,4.448,0,5s0.448,1,1,1
						  c0,2.69,0,7.23,0,8c0,1.104,0.896,2,2,2h10c1.104,0,2-0.896,2-2c0-0.77,0-5.31,0-8c0.553,0,1-0.448,1-1S15.554,4,15.001,4z
						  M13.001,14H3V6h10V14z"></path>
											<path fill="#1e1e1e"
												d="M11.001,13c0.553,0,1-0.447,1-1V8c0-0.553-0.447-1-1-1s-1,0.447-1,1v4C10.001,12.553,10.448,13,11.001,13z"></path>
											<path fill="#1e1e1e"
												d="M8,13c0.553,0,1-0.447,1-1V8c0-0.553-0.448-1-1-1S7,7.447,7,8v4C7,12.553,7.448,13,8,13z"></path>
											<path fill="#1e1e1e"
												d="M5,13c0.553,0,1-0.447,1-1V8c0-0.553-0.447-1-1-1S4,7.447,4,8v4C4,12.553,4.448,13,5,13z"></path>
											</g> </svg>
										</a> <a href="#" class="add-wishlist"> <svg
												xmlns="http://www.w3.org/2000/svg"
												xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
												width="16px" height="16px" viewBox="0 0 16 16"
												enable-background="new 0 0 16 16" xml:space="preserve">
											<path fill="#1e1e1e"
												d="M11.335,0C10.026,0,8.848,0.541,8,1.407C7.153,0.541,5.975,0,4.667,0C2.088,0,0,2.09,0,4.667C0,12,8,16,8,16
					  s8-4,8-11.333C16.001,2.09,13.913,0,11.335,0z M8,13.684C6.134,12.49,2,9.321,2,4.667C2,3.196,3.197,2,4.667,2C6,2,8,4,8,4
					  s2-2,3.334-2c1.47,0,2.666,1.196,2.666,2.667C14.001,9.321,9.867,12.49,8,13.684z"></path>
											</svg>
										</a> <a href="#" class="add-compare"> <svg
												xmlns="http://www.w3.org/2000/svg"
												xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
												width="16px" height="16px" viewBox="0 0 16 16"
												enable-background="new 0 0 16 16" xml:space="preserve">
											<path fill="#1e1e1e"
												d="M16,3.063L13,0v2H1C0.447,2,0,2.447,0,3s0.447,1,1,1h12v2L16,3.063z"></path>
											<path fill="#1e1e1e"
												d="M16,13.063L13,10v2H1c-0.553,0-1,0.447-1,1s0.447,1,1,1h12v2L16,13.063z"></path>
											<path fill="#1e1e1e"
												d="M15,7H3V5L0,7.938L3,11V9h12c0.553,0,1-0.447,1-1S15.553,7,15,7z"></path>
											</svg>
										</a>
									</div>
									<!-- .actions -->
								</div>
								<!-- .product-hover -->
							</div>
							<!-- .product -->
						</div>
					</div>
				</div>
				<!-- .carousel-box -->

				<div class="content-block frame text-center bottom-padding">
					<p class="lead">Welcome to our site. There are many variations
						alteration in some form, by injected humour, or randomised words
						which don't look even slightly believable. Donec pharetra, lectus
						nec dignissim pharetra quis libero.</p>
					<button class="btn btn-default" data-appear-animation="bounceIn">Read
						More</button>
					<button class="btn btn-default" data-appear-animation="bounceIn">Join
						Now</button>
				</div>
				<!-- .content-block -->
			</div>

			<div class="full-width-box bottom-padding cm-padding-bottom-36">
				<div class="fwb-bg fwb-fixed band-5">
					<div class="overlay"></div>
				</div>

				<div class="container">
					<div class="title-box title-white">
						<h1 class="title no-top-padding">Meet the Team</h1>
					</div>

					<div class="row text-center">
						<div class="col-sm-3 col-md-3 rotation employee">
							<div class="default">
								<div class="image">
									<img src="/img/content/team-1.jpg" alt="" title="" width="270"
										height="270">
								</div>
								<div class="description">
									<div class="vertical">
										<h3 class="name">Mett Rayan</h3>
										<div class="role">Manager</div>
									</div>
								</div>
							</div>
							<div class="employee-hover">
								<h3 class="name">Mett Rayan</h3>
								<div class="role">Manager</div>
								<div class="image">
									<img src="/img/content/team-1.jpg" alt="" title="" width="270"
										height="270">
								</div>
								<div>
									<p>Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem
										at nibh elementum imperdiet.</p>
									<div class="contact">
										<b>Email: </b>mett@itembridge.com
									</div>
									<div class="contact">
										<b>Phone: </b>11 555 333 77
									</div>
								</div>
								<div class="social">
									<div class="item">
										<a class="sbtnf sbtnf-rounded color color-hover icon-facebook"
											href="#"></a>
									</div>
									<div class="item">
										<a class="sbtnf sbtnf-rounded color color-hover icon-twitter"
											href="#"></a>
									</div>
									<div class="item">
										<a class="sbtnf sbtnf-rounded color color-hover icon-gplus"
											href="#"></a>
									</div>
									<div class="item">
										<a class="sbtnf sbtnf-rounded color color-hover icon-linkedin"
											href="#"></a>
									</div>
								</div>
							</div>
							<!-- .employee-hover -->
						</div>
						<!-- .employee 
		  
		  -->
						<div class="col-sm-3 col-md-3 rotation employee">
							<div class="default">
								<div class="image">
									<img src="/img/content/team-2.jpg" alt="" title="" width="270"
										height="270">
								</div>
								<div class="description">
									<div class="vertical">
										<h3 class="name">Jon O. Example</h3>
										<div class="role">Web designer</div>
									</div>
								</div>
							</div>
							<div class="employee-hover">
								<h3 class="name">Jon O. Example</h3>
								<div class="role">Web designer</div>
								<div class="image">
									<img src="/img/content/team-2.jpg" alt="" title="" width="270"
										height="270">
								</div>
								<div>
									<p>Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem
										at nibh elementum imperdiet.</p>
									<div class="contact">
										<b>Email: </b>mett@itembridge.com
									</div>
									<div class="contact">
										<b>Phone: </b>11 555 333 77
									</div>
								</div>
								<div class="social">
									<div class="item">
										<a class="sbtnf sbtnf-rounded color color-hover icon-facebook"
											href="#"></a>
									</div>
									<div class="item">
										<a class="sbtnf sbtnf-rounded color color-hover icon-twitter"
											href="#"></a>
									</div>
									<div class="item">
										<a class="sbtnf sbtnf-rounded color color-hover icon-gplus"
											href="#"></a>
									</div>
									<div class="item">
										<a class="sbtnf sbtnf-rounded color color-hover icon-linkedin"
											href="#"></a>
									</div>
								</div>
							</div>
							<!-- .employee-hover -->
						</div>
						<!-- .employee
		  
		  -->
						<div class="col-sm-3 col-md-3 rotation employee">
							<div class="default">
								<div class="image">
									<img src="/img/content/team-3.jpg" alt="" title="" width="270"
										height="270">
								</div>
								<div class="description">
									<div class="vertical">
										<h3 class="name">Turanga Leela</h3>
										<div class="role">Graphic designer</div>
									</div>
								</div>
							</div>
							<div class="employee-hover">
								<h3 class="name">Turanga Leela</h3>
								<div class="role">Graphic designer</div>
								<div class="image">
									<img src="/img/content/team-3.jpg" alt="" title="" width="270"
										height="270">
								</div>
								<div>
									<p>Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem
										at nibh elementum imperdiet.</p>
									<div class="contact">
										<b>Email: </b>mett@itembridge.com
									</div>
									<div class="contact">
										<b>Phone: </b>11 555 333 77
									</div>
								</div>
								<div class="social">
									<div class="item">
										<a class="sbtnf sbtnf-rounded color color-hover icon-facebook"
											href="#"></a>
									</div>
									<div class="item">
										<a class="sbtnf sbtnf-rounded color color-hover icon-twitter"
											href="#"></a>
									</div>
									<div class="item">
										<a class="sbtnf sbtnf-rounded color color-hover icon-gplus"
											href="#"></a>
									</div>
									<div class="item">
										<a class="sbtnf sbtnf-rounded color color-hover icon-linkedin"
											href="#"></a>
									</div>
								</div>
							</div>
							<!-- .employee-hover -->
						</div>
						<!-- .employee
		  
		  -->
						<div class="col-sm-3 col-md-3 rotation employee">
							<div class="default">
								<div class="image">
									<img src="/img/content/team-4.jpg" alt="" title="" width="270"
										height="270">
								</div>
								<div class="description">
									<div class="vertical">
										<h3 class="name">David X. Cohen</h3>
										<div class="role">Developer</div>
									</div>
								</div>
							</div>
							<div class="employee-hover">
								<h3 class="name">David X. Cohen</h3>
								<div class="role">Developer</div>
								<div class="image">
									<img src="/img/content/team-4.jpg" alt="" title="" width="270"
										height="270">
								</div>
								<div>
									<p>Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem
										at nibh elementum imperdiet.</p>
									<div class="contact">
										<b>Email: </b>mett@itembridge.com
									</div>
									<div class="contact">
										<b>Phone: </b>11 555 333 77
									</div>
								</div>
								<div class="social">
									<div class="item">
										<a class="sbtnf sbtnf-rounded color color-hover icon-facebook"
											href="#"></a>
									</div>
									<div class="item">
										<a class="sbtnf sbtnf-rounded color color-hover icon-twitter"
											href="#"></a>
									</div>
									<div class="item">
										<a class="sbtnf sbtnf-rounded color color-hover icon-gplus"
											href="#"></a>
									</div>
									<div class="item">
										<a class="sbtnf sbtnf-rounded color color-hover icon-linkedin"
											href="#"></a>
									</div>
								</div>
							</div>
							<!-- .employee-hover -->
						</div>
						<!-- .employee -->
					</div>
				</div>
			</div>
			<!-- .full-width-box -->

			<div class="container">
				<div class="row">
					<div class="col-sm-12 col-md-6 promo-partners bottom-padding">
						<div class="title-box">
							<h2 class="title">Our partners</h2>
						</div>
						<div class="row manufactures manufactures-list">
							<div class="make-wrapper">
								<a href="#" class="make"> <img src="/img/content/make-2.png"
									width="128" height="128" alt="">
								</a>
							</div>
							<!--
				
			-->
							<div class="make-wrapper">
								<a href="#" class="make"> <img src="/img/content/make-3.png"
									width="128" height="128" alt="">
								</a>
							</div>
							<!--
				
			-->
							<div class="make-wrapper">
								<a href="#" class="make"> <img src="/img/content/make-4.png"
									width="128" height="128" alt="">
								</a>
							</div>
						</div>
						<p>Duis bibendum pulvinar laoreet. Ut eu arcu sit amet elit
							placerat pharetra sit amet a tortor. Fusce vestibulum auctor
							rhoncus. Nullam rhoncus, tellus a congue elementum, leo ipsum
							tincidunt justo, ut condimentum velit eros et lectus. Phasellus
							ultrices rhoncus vehicula.</p>
						<p>Integer ultricies semper massa non condimentum. Phasellus
							eu ipsum justo. Nullam non pulvinar purus. Ut ante ipsum,
							venenatis at tristique quis, congue vitae felis. Aliquam cursus
							diam in massa dapibus auctor. In volutpat, risus non egestas
							luctus, justo tellus laoreet justo.</p>
					</div>
					<!-- .promo-partners -->

					<div class="col-sm-12 col-md-6">
						<div class="title-box">
							<a href="#" class="btn btn-default">All posts <span
								class="glyphicon glyphicon-arrow-right"></span></a>
							<h2 class="title">Latest Posts</h2>
						</div>
						<ul class="latest-posts">
							<li><img class="image img-circle"
								src="/img/content/product-1-84.png" alt="" title="" width="84"
								height="84" data-appear-animation="rotateIn">
								<div class="meta">
									<span>Mike Example</span>, <span class="time">03.11.2013,
										10:45:</span>
								</div>
								<div class="description">
									<a href="#"> Suspendisse at placerat turpis. Duis luctus
										erat vel magna pharetra aliquet. Maecenas tincidunt feugiat
										ultricies. Phasellus et dui risus. </a>
								</div></li>
							<li><img class="image img-circle"
								src="/img/content/product-2-84.png" alt="" title="" width="84"
								height="84" data-appear-animation="rotateIn">
								<div class="meta">
									<span>Mike Example</span>, <span class="time">03.11.2013,
										10:45:</span>
								</div>
								<div class="description">
									<a href="#"> Maecenas porttitor orci vitae turpis interdum
										sit amet dignissim dolor consequat. Aenean id erat lorem. </a>
								</div></li>
							<li><img class="image img-circle"
								src="/img/content/product-3-84.png" alt="" title="" width="84"
								height="84" data-appear-animation="rotateIn">
								<div class="meta">
									<span>Mike Example</span>, <span class="time">03.11.2013,
										10:45:</span>
								</div>
								<div class="description">
									<a href="#"> Mauris vehicula fringilla nisl porttitor
										sollicitudin. Suspendisse facilisis metus id neque fermentum
										eget rutrum orci pulvinar. </a>
								</div></li>
						</ul>
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