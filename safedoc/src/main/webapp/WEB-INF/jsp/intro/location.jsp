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
<title>오시는길</title>
<meta charset="utf-8">
<meta name="keywords" content="HTML5 Template">
<meta name="description"
	content="Progressive — Responsive Multipurpose HTML Template">
<meta name="author" content="itembridge.com">
<meta class="viewport" name="viewport"
	content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- Favicon -->
<link rel="shortcut icon" href="/img/favicon.ico">

<!-- Font -->
<!-- <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Arimo:400,700,400italic,700italic'> -->
<link rel='stylesheet' href="/css/nanumgothiccoding.css">
<!-- Plagins CSS -->
<link rel="stylesheet" href="/css/buttons/buttons.css">
<link rel="stylesheet" href="/css/buttons/social-icons.css">
<link rel="stylesheet" href="/css/font-awesome.min.css">
<link rel="stylesheet" href="/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/jslider.css">
<link rel="stylesheet" href="/css/settings.css">
<link rel="stylesheet" href="/css/jquery.fancybox.css">
<link rel="stylesheet" href="/css/animate.css">
<link rel="stylesheet" href="/css/video-js.min.css">
<link rel="stylesheet" href="/css/morris.css">
<link rel="stylesheet" href="/css/royalslider/royalslider.css">
<link rel="stylesheet"
	href="/css/royalslider/skins/minimal-white/rs-minimal-white.css">
<link rel="stylesheet" href="/css/layerslider/layerslider.css">
<link rel="stylesheet" href="/css/ladda.min.css">
<link rel="stylesheet" href="/css/datepicker.css">

<!-- Theme CSS -->
<link rel="stylesheet" href="/css/styleMap.css">

<!-- Responsive CSS -->
<link rel="stylesheet" href="/css/responsive.css">

<!-- Custom CSS -->
<link rel="stylesheet" href="/css/customizer/pages.css">
<link rel="stylesheet" href="/css/customizer/home-pages-customizer.css">

<!-- IE Styles-->
<link rel='stylesheet' href="/css/ie/ie.css">
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	<link rel='stylesheet' href="css/ie/ie8.css">
  <![endif]-->
<!-- prevent IE6 flickering -->
<script type="text/javascript">
	try {
		document.execCommand('BackgroundImageCache', false, true);
	} catch (e) {
	}
</script>

<script type="text/javascript"
	src="http://openapi.map.naver.com/openapi/naverMap.naver?ver=2.0&key=cb8c1bde41a53e90c5d12f48f5686013"></script>

</head>
<body class="fixed-header">
	<div class="page-box">
		<div class="page-box-content">

			<c:import url="/EgovPageLink.do?link=main/inc/EgovIncHeader" />
			<!-- .header -->

			<div class="breadcrumb-box">
				<div class="container">
					<ul class="breadcrumb">
						<li><a href="/">회사소개</a></li>
						<li class="active">오시는길</li>
					</ul>
				</div>
			</div>
			<!-- .breadcrumb-box -->

			<section id="main"> <header class="page-header">
			<div class="container">
				<h1 class="title">오시는 길</h1>
			</div>
			</header>
			<div class="container">
				<div class="row">
					<div class="content col-sm-12 col-md-12">
						<div class="row">
							<div class="col-sm-6 col-md-6 contact-info bottom-padding">
								<address>
									<div class="title">소재지</div>
									137-802 서울시 서초구 반포동 49-11(서초중앙로 31길 14-13) 희정빌딩
								</address>
								<div class="row">
									<address class="col-sm-6 col-md-6">
										<div class="title">Phones</div>
										<div>call : +1 (02) 595-7115</div>
										<div>fax : +1 (02) 595-1579</div>
										<!-- <div>Director: +777 (100) 1243</div> -->
									</address>
									<address class="col-sm-6 col-md-6">
										<div class="title">Email Addresses</div>
										<div>
											Support: <a href="mailto:safedoc@naver.com">safedoc@naver.com</a>
										</div>
										<!-- <div>
											Sales manager: <a href="mailto:manager@example.com">manager@example.com</a>
										</div>
										<div>
											Director: <a href="mailto:chief@example.com">chief@example.com</a>
										</div> -->
									</address>
								</div>
								<hr>

							</div>
							<div class="col-sm-6 col-md-6 bottom-padding">
								<div id="testMap"
									style="width: 500px; height: 400px; margin: 20px;"></div>
								<!-- http://map.naver.com/?dlevel=12&lat=37.5006950&lng=127.0104318&query=7ISc7Jq47Yq567OE7IucIOyEnOy0iOq1rCDshJzstIjspJHslZnroZwzMeq4uCAxNC0xMw%3D%3D&type=ADDRESS&tab=1&enc=b64 -->
								<script type="text/javascript">
									var oPoint = new nhn.api.map.LatLng(
											37.5006950, 127.0104318);
									nhn.api.map.setDefaultPoint('LatLng');
									oMap = new nhn.api.map.Map('testMap', {
										point : oPoint,
										zoom : 10,
										enableWheelZoom : true,
										enableDragPan : true,
										enableDblClickZoom : false,
										mapMode : 0,
										activateTrafficMap : false,
										activateBicycleMap : false,
										minMaxLevel : [ 1, 14 ],
										size : new nhn.api.map.Size(500, 400)
									});
									var mapZoom = new nhn.api.map.ZoomControl(); // - 줌 컨트롤 선언
									mapZoom.setPosition({
										left : 20,
										bottom : 20
									}); // - 줌 컨트롤 위치 지정
									oMap.addControl(mapZoom); // - 줌 컨트롤 추가.

									var oSize = new nhn.api.map.Size(28, 37);
									var oOffset = new nhn.api.map.Size(14, 37);
									var oIcon = new nhn.api.map.Icon(
											'http://static.naver.com/maps2/icons/pin_spot2.png',
											oSize, oOffset);

									var oMarker1 = new nhn.api.map.Marker(
											oIcon, {
												title : '한국구조물진단연구원'
											});
									oMarker1.setPoint(oPoint);
									oMap.addOverlay(oMarker1);
									var oLabel1 = new nhn.api.map.MarkerLabel();
									oMap.addOverlay(oLabel1);
									oLabel1.setVisible(true, oMarker1);
								</script>
							</div>

						</div>
					</div>
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