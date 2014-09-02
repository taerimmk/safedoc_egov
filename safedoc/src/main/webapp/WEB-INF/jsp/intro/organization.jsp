
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
<style type="text/css">
.tree {
	min-height: 20px;
	padding: 19px;
	margin-bottom: 20px;
	background-color: #fbfbfb;
	border: 1px solid #999;
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
	-moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05)
}

.tree li {
	list-style-type: none;
	margin: 0;
	padding: 10px 5px 0 5px;
	position: relative
}

.tree li::before, .tree li::after {
	content: '';
	left: -20px;
	position: absolute;
	right: auto
}

.tree li::before {
	border-left: 1px solid #999;
	bottom: 50px;
	height: 100%;
	top: 0;
	width: 1px
}

.tree li::after {
	border-top: 1px solid #999;
	height: 20px;
	top: 25px;
	width: 25px
}

.tree li span {
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	border: 1px solid #999;
	border-radius: 5px;
	display: inline-block;
	padding: 3px 8px;
	text-decoration: none
}

.tree li.parent_li>span {
	cursor: pointer
}

.tree>ul>li::before, .tree>ul>li::after {
	border: 0
}

.tree li:last-child::before {
	height: 30px
}

.tree li.parent_li>span:hover, .tree li.parent_li>span:hover+ul li span
	{
	background: #eee;
	border: 1px solid #94a0b4;
	color: #000
}
</style>
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
						<li class="active">조직도</li>
					</ul>
				</div>
			</div>
			<!-- .breadcrumb-box -->

			<section id="main"> <header class="page-header">
			<div class="container">
				<h1 class="title">조직도</h1>
			</div>
			</header>
			<div class="container">
				<div class="row">
					<div class="tree well">
						<ul>
							<li><span class="badge-success"><i class="fa fa-user"></i> 대표이사</span> <!-- <a
								href="#">Goes somewhere</a> -->
								<ul>
									<li><span class="badge-warning"><i class="fa fa-users"></i> 과학기술부인정
											한국구조물연구소</span>
										<ul>
											<li><span><i class="fa fa-pencil-square-o"></i>
													조사, 기술, 학술, 연구용역</span></li>
										</ul></li>
									<li><span class="badge-warning"><i class="fa fa-user"></i> 기술이사</span>
										<ul>
											<li><span class="badge badge-important"><i class="fa fa-users"></i> 기획관리실</span>
												<ul>
													<li><span><i class="fa fa-bars"></i> 총무과</span></li>
													<li><span><i class="fa fa-database"></i> 회계과</span></li>
													<li><span><i class="fa fa-building"></i> 관리과</span></li>
												</ul></li>
											<li><span class="badge badge-important"><i class="fa fa-user"></i> 부장</span>
												<ul>
													<li><span><i class="fa fa-search"></i> 진단부</span>
														<ul>
															<li><span><i class="fa fa-users"></i>
																	조사팀(상태측정/계측)</span></li>
															<li><span><i class="fa fa-users"></i> 건축팀</span></li>
															<li><span><i class="fa fa-users"></i>
																	토목1팀(일반토목)</span></li>
															<li><span><i class="fa fa-users"></i>
																	토목2팀(보강토/개비온옹벽등)</span></li>
															<li><span><i class="fa fa-users"></i>
																	특수구조팀(진동/침하/누수현상등)</span></li>
														</ul></li>
												</ul></li>
											<li><span class="badge badge-important"><i class="fa fa-users"></i> 토질/기초실</span>
												<ul>
													<li><span><i class="fa fa-bars"></i> 토질/지반조사</span></li>
													<li><span><i class="fa fa-database"></i> 계측관리</span></li>
													<li><span><i class="fa fa-building"></i> 보수/보강</span></li>
												</ul></li>
											<li><span class="badge badge-important"><i class="fa fa-users"></i> 견적/적산실</span>
												<ul>
													<li><span><i class="fa fa-bars"></i> 보수,보강설계</span></li>
													<li><span><i class="fa fa-database"></i>
															보수,보강재료</span></li>
													<li><span><i class="fa fa-building"></i>
															보수,보강시공</span></li>
												</ul></li>
											<li><span class="badge badge-important"><i class="fa fa-users"></i> 갈등관리팀</span>
												<ul> 
													<li><span><i class="fa fa-bars"></i>
															토목,건축,설비(행정민원/하자/소송진단 등)</span></li>
												</ul></li>
											<li><span class="badge badge-important"><i class="fa fa-users"></i> 구조부(건축,토목)</span>
												<ul>
													<li><span><i class="fa fa-bars"></i>
															구조설계(건축,토목) 및 검토</span></li>
												</ul></li>
										</ul></li>
									<li><span class="badge-warning"><i class="fa fa-user"></i> 공사/관리부</span>
										<ul>
											<li><span><i class="fa fa-bars"></i> 보수,보강공사 및 시공감리</span></li>
										</ul></li>
								</ul></li>
						</ul>
					</div>

					<!-- <div class="tree">
						<ul>
							<li><span><i class="icon-calendar"></i> 2013, Week 2</span>
								<ul>
									<li><span class="badge badge-success"><i
											class="icon-minus-sign"></i> Monday, January 7: 8.00 hours</span>
										<ul>
											<li><a href=""><span><i class="icon-time"></i>
														8.00</span> &ndash; Changed CSS to accomodate...</a></li>
										</ul></li>
									<li><span class="badge badge-success"><i
											class="icon-minus-sign"></i> Tuesday, January 8: 8.00 hours</span>
										<ul>
											<li><span><i class="icon-time"></i> 6.00</span> &ndash;
												<a href="">Altered code...</a></li>
											<li><span><i class="icon-time"></i> 2.00</span> &ndash;
												<a href="">Simplified our approach to...</a></li>
										</ul></li>
									<li><span class="badge badge-warning"><i
											class="icon-minus-sign"></i> Wednesday, January 9: 6.00 hours</span>
										<ul>
											<li><a href=""><span><i class="icon-time"></i>
														3.00</span> &ndash; Fixed bug caused by...</a></li>
											<li><a href=""><span><i class="icon-time"></i>
														3.00</span> &ndash; Comitting latest code to Git...</a></li>
										</ul></li>
									<li><span class="badge badge-important"><i
											class="icon-minus-sign"></i> Wednesday, January 9: 4.00 hours</span>
										<ul>
											<li><a href=""><span><i class="icon-time"></i>
														2.00</span> &ndash; Create component that...</a></li>
										</ul></li>
								</ul></li>
							<li><span><i class="icon-calendar"></i> 2013, Week 3</span>
								<ul>
									<li><span class="badge badge-success"><i
											class="icon-minus-sign"></i> Monday, January 14: 8.00 hours</span>
										<ul>
											<li><span><i class="icon-time"></i> 7.75</span> &ndash;
												<a href="">Writing documentation...</a></li>
											<li><span><i class="icon-time"></i> 0.25</span> &ndash;
												<a href="">Reverting code back to...</a></li>
										</ul></li>
								</ul></li>
						</ul>
					</div> -->

				</div>


				<!-- .content -->
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
	<script type="text/javascript">
		$(function() {
			$('.tree li:has(ul)').addClass('parent_li').find(' > span').attr(
					'title', 'Collapse this branch');
			$('.tree li.parent_li > span').on(
					'click',
					function(e) {
						var children = $(this).parent('li.parent_li').find(
								' > ul > li');
						if (children.is(":visible")) {
							children.hide('fast');
							/* $(this).attr('title', 'Expand this branch').find(
									' > i').addClass('fa fa-users')
									.removeClass('fa fa-users'); */
						} else {
							children.show('fast');
							/* $(this).attr('title', 'Collapse this branch').find(
									' > i').addClass('fa-users')
									.removeClass('fa-users'); */
						}
						e.stopPropagation();
					});
		});
	</script>
</body>
</html>