
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>에러페이지</title>
<c:import url="/EgovPageLink.do?link=main/inc/headerResource" />
</head>
<body class="fixed-header">
	<div class="page-box">
		<div class="page-box-content">

			<c:import url="/EgovPageLink.do?link=main/inc/EgovIncHeader" />
			<!-- .header -->

			<div class="breadcrumb-box breadcrumb-none"></div>

			<section id="main">
			<div class="container">
				<div class="row">
					<div class="content col-sm-12 col-md-12">
						<div class="row">
							<div class="col-sm-12 col-md-12">
								<div class="box-404 bg">
									<h1>500</h1>
									<h2>수행중 오류가 발생하였습니다.</h2>
									<br/>
									<a href="javascript:fncGoAfterErrorPage();">돌아가기</a>
								</div>
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
	<script type="text/javascript">
		function fncGoAfterErrorPage() {
			history.back(-2);
		}
	</script>
</body>
</html>