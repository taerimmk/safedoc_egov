
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
						<li><a href="index.html">구조물진단이란?</a></li>
						<li class="active">구조물진단범위</li>
					</ul>
				</div>
			</div>
			<!-- .breadcrumb-box -->

			<section id="main"> <header class="page-header">
			<div class="container">
				<h1 class="title">구조물진단범위</h1>
			</div>
			</header>
			<div class="container">
				<div class="row">
					<div class="bottom-padding col-sm-12 col-md-6">
						<div class="title-box">
							<h2 class="title">Left Side Tabs</h2>
						</div>

						<div class="tabs tabs-left">
							<ul class="nav nav-tabs">
								<li class="active"><a href="#services2" data-toggle="tab"><i
										class="fa fa-gears"></i> Services</a></li>
								<li><a href="#features2" data-toggle="tab"><i
										class="fa fa-share-square-o"></i> Features</a></li>
								<li><a href="#text2" data-toggle="tab"><i
										class="fa fa-folder-open-o"></i> Text</a></li>
							</ul>
							<div class="tab-content">
								<div class="tab-pane active fade in" id="services2">
									<div class="service">
										<a href="#" class="icon bg"><i class="fa fa-picture-o"></i></a>
										<h6 class="title">
											<a href="#">Web Design</a>
										</h6>
										<div class="text-small">Lorem ipsum dolor sit amet,
											consectetur adipisicing elit. Ipsam quidem voluptatem
											accusantium praesentium inventore quae illum aliquid dolores
											totam perspiciatis. Officia illum eos quos voluptate omnis
											deleniti molestiae numquam fugiat delectus aliquam ab
											cupiditate dicta commodi in dolore assumenda ipsum culpa a
											magnam qui alias facere consectetur eveniet beatae mollitia.</div>
									</div>
								</div>

								<div class="tab-pane fade in" id="features2">
									<div class="text-small features-block">
										<div class="header-box">
											<a href="#" class="icon-box"> <i class="fa fa-desktop"></i>
											</a>
											<h6>
												<a href="#">Responsive Design</a>
											</h6>
										</div>
										<div>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit. Delectus quo esse fugit quasi doloremque sequi impedit.
											Doloremque esse rem saepe sit libero facere exercitationem
											reprehenderit mollitia incidunt quas culpa at illo veniam
											error odit expedita dignissimos quia nostrum perferendis
											officia molestias totam distinctio nesciunt eum accusamus quo
											animi assumenda eveniet aperiam fugiat accusantium harum
											ullam.</div>
									</div>
								</div>

								<div class="tab-pane fade in" id="text2">
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit. Nemo quaerat praesentium odio vero necessitatibus vel
										fuga minima cum provident veniam ducimus perferendis non
										voluptates qui aperiam quisquam magni minus eligendi eos rerum
										doloremque mollitia ex at molestias eius veritatis placeat
										eaque totam culpa. Atque reprehenderit voluptatum tenetur
										maiores vel blanditiis?</p>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit. Eligendi neque odio repudiandae voluptatibus voluptates
										voluptatem adipisci quaerat dolor necessitatibus cum!</p>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
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