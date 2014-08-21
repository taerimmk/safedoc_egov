
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
						<li class="active">구조물진단유형</li>
					</ul>
				</div>
			</div>
			<!-- .breadcrumb-box -->

			<section id="main"> <header class="page-header">
			<div class="container">
				<h1 class="title">구조물진단유형</h1>
			</div>
			</header>
			<div class="container">
				<div class="row">
					<div class="bottom-padding col-sm-12 col-md-12">
						<p>구조물진단은 건축⋅토목공학의 독자적인 분야로서가 아니라, 법학, 행정학, 윤리학 등의 학제
							간(inter-discipline)의 연계와 연구가 필요하다는 점에서, 이들과의 융합된 학문으로서 정립할 필요성이
							있다. 여타의 다른 학문분야와 마찬가지로 인간사회에서 발생하는 현실 문제와 제도화된 사회시스템을 분리해서 생각할 수
							없다는 말이다. 구조물진단은 법정진단과 일반진단으로 구분을 할 때, 제도화되어 있는 법정진단이 아닌 일반진단은
							관리주체가 필요에 따라 임의로 실시하는 진단이다. 법으로 제도화되어 있는 법정진단은 진단의 실시시기와 주기, 빈도,
							진단의 내용 등을 규정으로 명시하고 있다. 즉, 구조물의 구조적 특성, 안전관리의 중요도 등에 따라 정하고 있다
							그러나 정밀진단의 내용은 법에 고정적으로 명시하여 특정할 수 있는 사항이 아니다. 왜냐하면 점검결과에 따라서는 점검
							자체로 끝날 수도 있고, 더욱 상세한 정밀진단으로 진행될 수도 있기 때문에 정밀진단의 내용을 일률적으로 정하는 것은
							불합리하기 때문이다.</p>

						<br>
						<div class="clearfix"></div>
						<!-- <div class="title-box">
							<h2 class="title">단계와 유형</h2>
						</div> -->
						<div class="bs-callout bs-callout-danger">
							<h4>초기안전점검</h4>
							<br />
							<p>신축구조물이 완성된 이후 또는 개보수, 증개축 이후에 초기관리치를 설정하여 구조물의 유지관리를 목적으로
								실시하는 점검. 신축구조물은 사용하기 전 혹은 구조물의 준공 직후, 대규모 보수⋅보강 직후에 구조물의 초기상태를
								바탕으로 하여 공용기간 동안 유지관리를 하게 된다.</p>
						</div>

						<div class="bs-callout bs-callout-warning">
							<h4>정기안전점검</h4>
							<br />
							<p>구조물의 물리적, 기능적 상태를 파악하기 위해 관찰과 계측자료 등에 기준하여 정기적으로 조사하는 계획된
								점검. 구조적인 문제점이나 정밀점검 혹은 정밀진단의 필요여부를 살펴보기 위한 중간과정의 점검이기도 하다.</p>
						</div>
						<div class="bs-callout bs-callout-info">
							<h4>정기안전점검</h4>
							<br />
							<p>구조물의 물리적, 기능적 상태를 파악하기 위해 관찰과 계측자료 등에 기준하여 정기적으로 조사하는 계획된
								점검. 구조적인 문제점이나 정밀점검 혹은 정밀진단의 필요여부를 살펴보기 위한 중간과정의 점검이기도 하다.</p>
						</div>

						<div class="bs-callout bs-callout-danger">
							<h4>정밀안전점검</h4>
							<br />
							<p>일상적인 점검, 정기점검의 결과에 따라 구조물의 성능저하, 손상결함의 발견, 위험증후, 혹은 보수⋅보강을
								위한 상세자료 등을 얻기 위해 실시하는 점검. 일상 및 정기점검의 결과에 따라 점검이 실시되기도 하기 때문에,
								정밀점검을 상세점검이라고 부르기도 한다.</p>
						</div>

						<div class="bs-callout bs-callout-warning">
							<h4>정밀안전진단</h4>
							<br />
							<p>제도적으로 의무화되어 있는 정밀안전진단을 제외하고는 일상적인 점검, 정기점검, 정밀점검, 긴급점검의
								결과에 따라 정밀진단이 필요하다고 판단되는 현상에 대해 실시하는 진단이다. 따라서 구조물에 발생한 결함 등의 현상에
								따라 진단범위와 항목이 정해지게 되므로, 이들을 일률적으로 정하지 않고, 현장답사 혹은 예비조사를 통해서 설정하게
								된다.</p>
						</div>
						<div class="bs-callout bs-callout-info">
							<h4>하자진단</h4>
							<br />
							<p>구조물의 하자처리를 위한 진단으로서, 하자에 대한 보수보강요청/하자판정/하자보증금청구/하자손해배상소송진단
								등으로 구분할 수 있다. ‘하자만료 정밀안전진단’은 구조물의 하자만료시점 이전에 실시하여 하자를 만료하기 위한
								진단이다. 즉, 하자담보 책임기간의 만료일 이전에 구조상 주요부분의 중대한 하자에 대해 정밀진단을 실시하여 보수조치
								등을 하고, 하자보증책임을 면하는 하자종료를 위한 진단이다.</p>
						</div>

						<div class="bs-callout bs-callout-danger">
							<h4>사전안전진단</h4>
							<br />
							<p>설계단계 혹은 구조물 착공에 앞서 구조 재료 및 공법선택의 적합성, 구조물의 구조계획, 구조설계,
								설계도서 등의 검토, 시공은 물론 유지관리단계에서의 구조물의 품질관리, 안전성 확보차원에 실시하는 진단이다.
								일반인들은 구조물 착공에 앞서 실시하는 진단으로만 인식하고 있다. 즉, 신축 구조물 공사 도중에 그 구조물에 대한
								유해영향성을 조사하여 사전대비하거나, 공사장 인접구조물의 민원에 대비하여 안전관리를 하는 진단 등을 말한다. 이는
								사후조치를 위해 실시하는 사후안전진단과는 대비되는 진단이다. 사후진단은 공사 착수 후 혹은 준공 후, 개축, 개수,
								보수⋅보강 공사 후에 구조물의 성능을 확인하는 차원에서 실시한다. 신축 구조물에 대한 초기점검이 사후안전점검에
								해당한다고 볼 수 있다.</p>
						</div>

						<div class="bs-callout bs-callout-warning">
							<h4>화해진단</h4>
							<br />
							<p>화재에 노출되어 화해를 입은 상태, 화재시간 및 화재온도의 추정, 부재 강도, 부재의 변형 및 손상,
								균열 및 철근의 노출, 파열, 좌굴 등을 조사하여 안전성과 사용성을 평가하는 진단이다.</p>
						</div>
						<div class="bs-callout bs-callout-info">
							<h4>누수진단</h4>
							<br />
							<p>누수현상을 조사하여 누수경로를 추적하며 누수의 원인을 규명하고 그에 따라 누수를 일으킨
								추동력(driving forces)을 통제하여 누수를 방지하기 위한 구조상세를 마련하는 진단이다.</p>
						</div>
						<div class="bs-callout bs-callout-default">
							<h4>기타 진단</h4>
							<br />
							<p>구조물과 관련하여 파생되는 구조물진단의 유형은 그 발생동기와 진단의뢰의 목적 등에 따라 무궁무진할 정도로
								다양하다. 이를 테면. 손해사정을 위한 진단, 부동산매매를 위한 진단, 해체폐기를 위한 진단(예:재건축진단),
								공사착공/공사중지 혹은 공사재개를 위한 진단, 감정평가진단, 하자판정/하자보증금청구/하자손해배상진단, 구조물과
								관련한 각종 갈등관리 민원진단 등이 그 대표적인 예이다.</p>
						</div>

						<!-- <div class="tabs tabs-left">
							<ul class="nav nav-tabs">
								<li class="active"><a href="#text01" data-toggle="tab"><i
										class="fa fa-gears"></i> 초기안전점검</a></li>
								<li><a href="#text02" data-toggle="tab"><i
										class="fa fa-share-square-o"></i> 정기안전점검</a></li>
								<li><a href="#text03" data-toggle="tab"><i
										class="fa fa-folder-open-o"></i> 정밀안전점검</a></li>

								<li><a href="#text04" data-toggle="tab"><i
										class="fa fa-gears"></i> 정밀안전진단</a></li>
								<li><a href="#text05" data-toggle="tab"><i
										class="fa fa-gears"></i> 하자진단</a></li>
								<li><a href="#text06" data-toggle="tab"><i
										class="fa fa-gears"></i> 사전안전진단</a></li>
								<li><a href="#text07" data-toggle="tab"><i
										class="fa-gears"></i> 정밀안전점검</a></li>
							</ul>
							<div class="tab-content">
								<div class="tab-pane active fade in" id="text01">
									<p>신축구조물이 완성된 이후 또는 개보수, 증개축 이후에 초기관리치를 설정하여 구조물의 유지관리를
										목적으로 실시하는 점검. 신축구조물은 사용하기 전 혹은 구조물의 준공 직후, 대규모 보수⋅보강 직후에 구조물의
										초기상태를 바탕으로 하여 공용기간 동안 유지관리를 하게 된다.</p>
								</div>

								<div class="tab-pane fade in" id="text02">
									<p>구조물의 물리적, 기능적 상태를 파악하기 위해 관찰과 계측자료 등에 기준하여 정기적으로 조사하는
										계획된 점검. 구조적인 문제점이나 정밀점검 혹은 정밀진단의 필요여부를 살펴보기 위한 중간과정의 점검이기도 하다.</p>
								</div>

								<div class="tab-pane fade in" id="text03">
									<p>일상적인 점검, 정기점검의 결과에 따라 구조물의 성능저하, 손상결함의 발견, 위험증후, 혹은
										보수⋅보강을 위한 상세자료 등을 얻기 위해 실시하는 점검. 일상 및 정기점검의 결과에 따라 점검이 실시되기도
										하기 때문에, 정밀점검을 상세점검이라고 부르기도 한다.</p>
								</div>

								<div class="tab-pane fade in" id="text04">
									<p>제도적으로 의무화되어 있는 정밀안전진단을 제외하고는 일상적인 점검, 정기점검, 정밀점검, 긴급점검의
										결과에 따라 정밀진단이 필요하다고 판단되는 현상에 대해 실시하는 진단이다. 따라서 구조물에 발생한 결함 등의
										현상에 따라 진단범위와 항목이 정해지게 되므로, 이들을 일률적으로 정하지 않고, 현장답사 혹은 예비조사를 통해서
										설정하게 된다.</p>
								</div>
								<div class="tab-pane fade in" id="text05">
									<p>구조물의 하자처리를 위한 진단으로서, 하자에 대한
										보수보강요청/하자판정/하자보증금청구/하자손해배상소송진단 등으로 구분할 수 있다. ‘하자만료 정밀안전진단’은
										구조물의 하자만료시점 이전에 실시하여 하자를 만료하기 위한 진단이다. 즉, 하자담보 책임기간의 만료일 이전에
										구조상 주요부분의 중대한 하자에 대해 정밀진단을 실시하여 보수조치 등을 하고, 하자보증책임을 면하는 하자종료를
										위한 진단이다.</p>
								</div>
								<div class="tab-pane fade in" id="text06">
									<p>설계단계 혹은 구조물 착공에 앞서 구조 재료 및 공법선택의 적합성, 구조물의 구조계획, 구조설계,
										설계도서 등의 검토, 시공은 물론 유지관리단계에서의 구조물의 품질관리, 안전성 확보차원에 실시하는 진단이다.
										일반인들은 구조물 착공에 앞서 실시하는 진단으로만 인식하고 있다. 즉, 신축 구조물 공사 도중에 그 구조물에
										대한 유해영향성을 조사하여 사전대비하거나, 공사장 인접구조물의 민원에 대비하여 안전관리를 하는 진단 등을
										말한다. 이는 사후조치를 위해 실시하는 사후안전진단과는 대비되는 진단이다. 사후진단은 공사 착수 후 혹은 준공
										후, 개축, 개수, 보수⋅보강 공사 후에 구조물의 성능을 확인하는 차원에서 실시한다. 신축 구조물에 대한
										초기점검이 사후안전점검에 해당한다고 볼 수 있다</p>
								</div>
								<div class="tab-pane fade in" id="text07">
									<p>일상적인 점검, 정기점검의 결과에 따라 구조물의 성능저하, 손상결함의 발견, 위험증후, 혹은
										보수⋅보강을 위한 상세자료 등을 얻기 위해 실시하는 점검. 일상 및 정기점검의 결과에 따라 점검이 실시되기도
										하기 때문에, 정밀점검을 상세점검이라고 부르기도 한다.</p>
								</div>
								<div class="tab-pane fade in" id="text03">
									<p>일상적인 점검, 정기점검의 결과에 따라 구조물의 성능저하, 손상결함의 발견, 위험증후, 혹은
										보수⋅보강을 위한 상세자료 등을 얻기 위해 실시하는 점검. 일상 및 정기점검의 결과에 따라 점검이 실시되기도
										하기 때문에, 정밀점검을 상세점검이라고 부르기도 한다.</p>
								</div>
								<div class="tab-pane fade in" id="text03">
									<p>일상적인 점검, 정기점검의 결과에 따라 구조물의 성능저하, 손상결함의 발견, 위험증후, 혹은
										보수⋅보강을 위한 상세자료 등을 얻기 위해 실시하는 점검. 일상 및 정기점검의 결과에 따라 점검이 실시되기도
										하기 때문에, 정밀점검을 상세점검이라고 부르기도 한다.</p>
								</div>
							</div>
							<div class="clearfix"></div>
						</div> -->
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