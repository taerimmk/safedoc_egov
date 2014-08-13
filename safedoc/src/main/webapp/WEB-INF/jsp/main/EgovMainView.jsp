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
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import ="egovframework.com.cmm.LoginVO" %>

<!doctype html>
<html>
<head>
  <meta charset="utf-8">
  <title>Creative Home \ Progressive — Responsive Multipurpose HTML Template</title>
  <meta name="keywords" content="HTML5 Template">
  <meta name="description" content="Progressive — Responsive Multipurpose HTML Template">
  <meta name="author" content="itembridge.com">
  <meta class="viewport" name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <!-- Favicon -->
  <link rel="shortcut icon" href="img/favicon.ico">
  
  <!-- Font -->
  <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Arimo:400,700,400italic,700italic'>

  <!-- Plagins CSS -->
  <link rel="stylesheet" href="<c:url value="/"/>css/buttons/buttons.css">
  <link rel="stylesheet" href="<c:url value="/"/>css/buttons/social-icons.css">
  <link rel="stylesheet" href="<c:url value="/"/>css/font-awesome.min.css">
  <link rel="stylesheet" href="<c:url value="/"/>css/bootstrap.min.css">
  <link rel="stylesheet" href="<c:url value="/"/>css/jslider.css">
  <link rel="stylesheet" href="<c:url value="/"/>css/settings.css">
  <link rel="stylesheet" href="<c:url value="/"/>css/jquery.fancybox.css">
  <link rel="stylesheet" href="<c:url value="/"/>css/animate.css">
  <link rel="stylesheet" href="<c:url value="/"/>css/video-js.min.css">
  <link rel="stylesheet" href="<c:url value="/"/>css/morris.css">
  <link rel="stylesheet" href="<c:url value="/"/>css/royalslider/royalslider.css">
  <link rel="stylesheet" href="<c:url value="/"/>css/royalslider/skins/minimal-white/rs-minimal-white.css">
  <link rel="stylesheet" href="<c:url value="/"/>css/layerslider/layerslider.css">
  <link rel="stylesheet" href="<c:url value="/"/>css/ladda.min.css">
  <link rel="stylesheet" href="<c:url value="/"/>css/datepicker.css">
  
  <!-- Theme CSS -->
  <link rel="stylesheet" href="<c:url value="/"/>css/style.css">

  <!-- Responsive CSS -->
  <link rel="stylesheet" href="<c:url value="/"/>css/responsive.css">
  
  <!-- Custom CSS -->
  <link rel="stylesheet" href="<c:url value="/"/>css/customizer/pages.css">
  <link rel="stylesheet" href="<c:url value="/"/>css/customizer/home-pages-customizer.css">

  <!-- IE Styles-->
  <link rel='stylesheet' href="<c:url value="/"/>css/ie/ie.css">
  
  <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	<link rel='stylesheet' href="css/ie/ie8.css">
  <![endif]-->
</head>
<body class="fixed-header">
<div class="page-box">
<div class="page-box-content">

<header class="header header-two">
  <div class="header-wrapper">
	<div class="container">
	  <div class="row">
		<div class="col-xs-6 col-md-2 col-lg-3 logo-box">
		  <div class="logo">
			<a href="index.html">
			  <img src="/img/logo.svg" class="logo-img" alt="">
			</a>
		  </div>
		</div><!-- .logo-box -->
		
		<div class="col-xs-6 col-md-10 col-lg-9 right-box">
		  <div class="right-box-wrapper">
			<div class="header-icons">
			  <div class="search-header hidden-600">
				<a href="#">
				  <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
					<path d="M12.001,10l-0.5,0.5l-0.79-0.79c0.806-1.021,1.29-2.308,1.29-3.71c0-3.313-2.687-6-6-6C2.687,0,0,2.687,0,6
					s2.687,6,6,6c1.402,0,2.688-0.484,3.71-1.29l0.79,0.79l-0.5,0.5l4,4l2-2L12.001,10z M6,10c-2.206,0-4-1.794-4-4s1.794-4,4-4
					s4,1.794,4,4S8.206,10,6,10z"></path>
					<image src="/img/png-icons/search-icon.png" alt="" width="16" height="16" style="vertical-align: top;">
				  </svg>
				</a>
			  </div><!-- .search-header
			  
			  --><div class="phone-header hidden-600">
				<a href="#">
				  <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
					<path d="M11.001,0H5C3.896,0,3,0.896,3,2c0,0.273,0,11.727,0,12c0,1.104,0.896,2,2,2h6c1.104,0,2-0.896,2-2
					c0-0.273,0-11.727,0-12C13.001,0.896,12.105,0,11.001,0z M8,15c-0.552,0-1-0.447-1-1s0.448-1,1-1s1,0.447,1,1S8.553,15,8,15z
					M11.001,12H5V2h6V12z"></path>
					<image src="/img/png-icons/phone-icon.png" alt="" width="16" height="16" style="vertical-align: top;">
				  </svg>
				</a>
			  </div><!-- .phone-header -->
			</div><!-- .header-icons -->
			
			<div class="primary">
			  <div class="navbar navbar-default" role="navigation">
				<button type="button" class="navbar-toggle btn-navbar collapsed" data-toggle="collapse" data-target=".primary .navbar-collapse">
				  <span class="text">Menu</span>
				  <span class="icon-bar"></span>
				  <span class="icon-bar"></span>
				  <span class="icon-bar"></span>
				</button>
	  
				<nav class="collapse collapsing navbar-collapse">
				  <ul class="nav navbar-nav navbar-center">
					<li class="parent">
					  <a href="index.html">Home<span class="item-new">New</span></a>
					  <ul class="sub">
						<li><a href="index.html">Creative</a></li>
						<li><a href="home-2.html">Paralax</a></li>
						<li><a href="home-3.html">Simple (Boxed)</a></li>
						<li><a href="home-4.html">Business</a></li>
						<li><a href="home-5.html">Animation</a></li>
						<li class="parent">
						  <a href="shop.html">Shop<span class="item-new">New</span></a>
						  <ul class="sub">
							<li><a href="shop.html">Shop 1</a></li>
							<li><a href="shop-2.html">Shop 2</a></li>
							<li><a href="shop-3.html">Shop 3</a></li>
							<li><a href="shop-4.html">Shop 4</a></li>
							<li><a href="shop-5.html">Shop 5</a></li>
							<li><a href="shop-6.html">Shop 6</a></li>
							<li><a href="shop-7.html">Shop 7</a></li>
							<li><a href="shop-8.html">Shop 8</a></li>
						  </ul>
						</li>
						<li><a href="index-one-page.html">One Page Site<span class="item-new">New</span></a></li>
					  </ul>
					</li>
					<li class="parent">
					  <a href="#">Pages<span class="item-new">New</span></a>
					  <ul class="sub">
						<li><a href="sidebar-blocks.html">All sidebar blocks<span class="item-new">New</span></a></li>
						<li><a href="full-width.html">Full Width</a></li>
						<li><a href="left-sidebar.html">Left Sidebar</a></li>
						<li><a href="right-sidebar.html">Right Sidebar</a></li>
						<li class="parent">
						  <a href="about-us.html">About Us<span class="item-new">New</span></a>
						  <ul class="sub">
							<li><a href="about-us.html">About Us (1)</a></li>
							<li><a href="about-us-2.html">About Us (2)<span class="item-new">New</span></a></li>
							<li><a href="about-us-3.html">About Us (3)<span class="item-new">New</span></a></li>
						  </ul>
						</li>
						<li><a href="clients.html">Clients<span class="item-new">New</span></a></li>
						<li><a href="contact.html">Contact Us</a></li>
						<li><a href="blog-list.html">Blog List</a></li>
						<li><a href="blog-view.html">Blog Post View</a></li>
						<li><a href="search-results.html">Search Results</a></li>
						<li class="parent">
						  <a href="404.html">Page 404</a>
						  <ul class="sub">
							<li><a href="404.html">Page 404 (1)</a></li>
							<li><a href="404-2.html">Page 404 (2)</a></li>
							<li><a href="404-3.html">Page 404 (3)</a></li>
						  </ul>
						</li>
						<li class="parent">
						  <a href="#">Portfolio</a>
						  <ul class="sub">
							<li><a href="portfolio-1.html">Portfolio (1 column)</a></li>
							<li><a href="portfolio-2.html">Portfolio (2 column)</a></li>
							<li><a href="portfolio-3.html">Portfolio (3 column)</a></li>
							<li><a href="portfolio-4.html">Portfolio (4 column)</a></li>
							<li><a href="portfolio-slider.html">Portfolio (Slider)</a></li>
							<li><a href="portfolio-single.html">Single Project</a></li>
						  </ul>
						</li>
						<li><a href="gallery-modern.html">Modern Gallery</a></li>
						<li class="parent">
						  <a href="#">Gallery</a>
						  <ul class="sub">
							<li><a href="gallery-1.html">Gallery (1 column)</a></li>
							<li><a href="gallery-2.html">Gallery (2 column)</a></li>
							<li><a href="gallery-3.html">Gallery (3 column)</a></li>
							<li><a href="gallery-4.html">Gallery (4 column)</a></li>
						  </ul>
						</li>
						<li><a href="pricing.html">Pricing</a></li>
						<li><a href="team.html">Team</a></li>
						<li><a href="faq.html">FAQ</a></li>
						<li><a href="services.html">Services<span class="item-new">New</span></a></li>
						<li><a href="careers.html">Careers</a></li>
						<li><a href="coming-soon.html">Coming Soon</a></li>
						<li><a href="under-construction.html">Under Construction</a></li>
						<li><a href="sitemap.html">Sitemap</a></li>
						<li><a href="login-2.html">Login / Register<span class="item-new">New</span></a></li>
						<li class="parent">
						  <a href="#">Newsletter</a>
						  <ul class="sub">
							<li><a href="newsletter-big-intro.html">Newsletter Big Intro</a></li>
							<li><a href="newsletter-big-portfolio.html">Newsletter Big Portfolio</a></li>
							<li><a href="newsletter-columns.html">Newsletter Columns</a></li>
							<li><a href="newsletter-info.html">Newsletter Info</a></li>
							<li><a href="newsletter-plan.html">Newsletter Plan</a></li>
							<li><a href="newsletter-portfolio.html">Newsletter Portfolio</a></li>
							<li><a href="newsletter-product-list.html">Newsletter Product List</a></li>
							<li><a href="newsletter-story.html">Newsletter Story</a></li>
						  </ul>
						</li>
					  </ul>
					</li>
					<li class="parent">
					  <a href="shop.html">Shop<span class="item-new">New</span></a>
					  <ul class="sub">
						<li class="parent">
						  <a href="shop-catalog-grid.html">Catalog (Grid)<span class="item-new">New</span></a>
						  <ul class="sub">
							<li><a href="shop-catalog-grid-left.html">Catalog (Left Sidebar)</a></li>
							<li><a href="shop-catalog-grid-right.html">Catalog (Right Sidebar)</a></li>
							<li><a href="shop-catalog-grid-3.html">Catalog (3 columns)</a></li>
							<li><a href="shop-catalog-grid.html">Catalog (4 columns)</a></li>
							<li><a href="shop-catalog-grid-5.html">Catalog (5 columns)</a></li>
						  </ul>
						</li>
						<li><a href="shop-catalog-list.html">Catalog (List)</a></li>
						<li class="parent">
						  <a href="shop-product-view.html">Product View <span class="item-new">New</span></a>
						  <ul class="sub">
							<li><a href="shop-product-view.html">Product View</a></li>
							<li><a href="shop-product-view-variants.html">Product View (Variants)</a></li>
							<li><a href="shop-product-view-sidebar-left.html">Product View (Left Sidebar)</a></li>
							<li><a href="shop-product-view-sidebar.html">Product View (Right Sidebar)</a></li>
						  </ul>
						</li>
						<li><a href="shop-cart.html">Shopping Cart</a></li>
						<li><a href="shop-checkout.html">Proceed to Checkout</a></li>
						<li><a href="shop-confirmation.html">Confirmation Page</a></li>
						<li><a href="shop-compare.html">Compare Products</a></li>
						<li class="parent">
						  <a href="shop-account.html">My Account</a>
						  <ul class="sub">
							<li><a href="shop-account.html">My Dashboard</a></li>
							<li><a href="shop-account-information.html">Account Information</a></li>
							<li><a href="shop-account-address.html">Address Book</a></li>
							<li><a href="shop-account-orders.html">My Orders</a></li>
						  </ul>
						</li>
						<li><a href="shop-login.html">Login / Register</a></li>
						<li><a href="shop-forgot.html">Password Recovery</a></li>
					  </ul>
					</li>
					<li class="parent megamenu promo">
					  <a href="#">Mega Menu<span class="item-new">New</span></a>
					  <ul class="sub">
						<li class="sub-wrapper">
						  <div class="sub-list">
							<div class="box closed">
							  <h6 class="title">Savant Apple Integration</h6>
							  <ul>
								<li><a href="#">iPad, iPod touch, iPhone &amp; Mac Control</a></li>
								<li><a href="#">iPod touch Remote Control</a></li>
								<li><a href="#">Savant Host (Mac Mini)<span class="item-new bg-warning">Wow</span></a></li>
							  </ul>
							</div><!-- .box -->
							
							<div class="box closed">
							  <h6 class="title">Savant Audio/Video Control</h6>
							  <ul>
								<li><a href="#">Distributed Audio &amp; Video</a></li>
								<li><a href="#">Matrix Switchers</a></li>
								<li><a href="#">Audio/Video Processing</a></li>
							  </ul>
							</div><!-- .box -->
							
							<div class="box closed">
							  <h6 class="title">Savant Display Solutions</h6>
							  <ul>
								<li><a href="#">Video Tiling<span class="item-new">New</span></a></li>
								<li><a href="#">On-Screen Display</a></li>
								<li><a href="#">Digital Messaging</a></li>
							  </ul>
							</div><!-- .box -->
							
							<div class="box closed">
							  <h6 class="title">Savant Sound</h6>
							  <ul>
								<li><a href="#">Distributed Audio Controller</a></li>
								<li><a href="#">Multi-channel Amplifiers<span class="item-new">New</span></a></li>
								<li><a href="#">Architectural Speakers</a></li>
							  </ul>
							</div><!-- .box -->
							
							<div class="box closed">
							  <h6 class="title">Savant Display Solutions</h6>
							  <ul>
								<li><a href="#">Video Tiling<span class="item-new bg-success">Coming Soon</span></a></li>
								<li><a href="#">On-Screen Display</a></li>
								<li><a href="#">Digital Messaging</a></li>
							  </ul>
							</div><!-- .box -->
							
							<div class="box closed">
							  <h6 class="title">Savant Sound</h6>
							  <ul>
								<li><a href="#">Distributed Audio Controller</a></li>
								<li><a href="#">Multi-channel Amplifiers</a></li>
								<li><a href="#">Architectural Speakers<span class="item-new">New</span></a></li>
							  </ul>
							</div><!-- .box -->
						  </div><!-- .sub-list -->
						  
						  <div class="promo-block">
							<a href="#">
							  <img src="/img/content/megamenu-big.png" width="253" height="457" alt="">
							</a>
						  </div><!-- .promo-block -->
						</li>
					  </ul><!-- .sub -->
					</li>
					<li class="parent megamenu promo">
					  <a href="#">Elements<span class="item-new">New</span></a>
					  <ul class="sub">
						<li class="sub-wrapper">
						  <div class="sub-list">
							<div class="box">
							  <ul>
								<li><a href="elements-accordions.html"><i class="fa fa-plus-square"></i> Accordions &amp; Toggles</a></li>
								<li><a href="elements-animations.html"><i class="fa fa-money"></i> Animations</a></li>
								<li><a href="elements-buttons.html"><i class="fa fa-twitter"></i> Buttons &amp; Social Icons</a></li>
								<li><a href="elements-carousel.html"><i class="fa fa-arrows-h"></i> Carousels &amp; Sliders</a></li>
								<li><a href="elements-charts.html"><i class="fa fa-bar-chart-o"></i> Charts</a></li>
								<li><a href="elements-container.html"><i class="fa fa-archive"></i> Container</a></li>
								<li><a href="elements-content-band.html"><i class="fa fa-road"></i> Content Band</a></li>
								<li><a href="elements-dividers.html"><i class="fa fa-ellipsis-h"></i> Dividers &amp; Gaps</a></li>
								<li><a href="elements-featured-box.html"><i class="fa fa-star"></i> Featured Box</a></li>
								<li><a href="elements-icons.html"><i class="fa fa-rocket"></i> Font Awesome Icons</a></li>
								<li><a href="elements-frames.html"><i class="fa fa-square-o"></i> Frames</a></li>
								<li><a href="elements-maps.html"><i class="fa fa-map-marker"></i> Google Maps</a></li>
								<li><a href="elements-livicons.html"><i class="livicon block" data-n="rocket" data-s="16" data-c="#1e1e1e" data-hc="0"></i> LivIcons</a></li>
								<li><a href="elements-media.html"><i class="fa fa-video-camera"></i> Media<span class="item-new">New</span></a></li>
								<li><a href="elements-notification.html"><i class="fa fa-info-circle"></i> Notification</a></li>
							  </ul>
							</div><!-- .box -->
							<div class="box">
							  <ul>
								<li><a href="elements-person.html"><i class="fa fa-user"></i> Person</a></li>
								<li><a href="elements-post-sliders.html"><i class="fa fa-th-list"></i> Posts Sliders</a></li>
								<li><a href="elements-pricing.html"><i class="fa fa-list-alt"></i> Pricing and Data Tables</a></li>
								<li><a href="elements-progress-bar.html"><i class="fa fa-tasks"></i> Progress Bars</a></li>
								<li><a href="elements-promo-panel.html"><i class="fa fa-tasks"></i> Promo Panel<span class="item-new">New</span></a></li>
								<li><a href="elements-recent-posts.html"><i class="fa fa-flash"></i> Recent Posts</a></li>
								<li><a href="elements-shop.html"><i class="fa fa-shopping-cart"></i> Shop Elements</a></li>
								<li><a href="elements-sequence.html"><i class="fa fa-sort-numeric-asc"></i> Sequence</a></li>
								<li><a href="elements-social-feed.html"><i class="fa fa-users"></i> Social Feed<span class="item-new">New</span></a></li>
								<li><a href="elements-tabs.html"><i class="fa fa-folder-open"></i> Tabs</a></li>
								<li><a href="elements-testimonials.html"><i class="fa fa-comment"></i> Testimonials<span class="item-new">New</span></a></li>
								<li><a href="elements-text-rotation.html"><i class="fa fa-rotate-right"></i> Text Rotation<span class="item-new">New</span></a></li>
								<li><a href="elements-time-line.html"><i class="fa fa-clock-o"></i> Timeline<span class="item-new">New</span></a></li>
								<li><a href="elements-works.html"><i class="fa fa-picture-o"></i> Works</a></li>
							  </ul>
							</div><!-- .box -->
						  </div><!-- .sub-list -->
						  
						  <div class="promo-block bg">
							<img src="/img/content/menu-elements.png" width="240" height="434" alt="">
						  </div><!-- .promo-block -->
						</li>
					  </ul>
					</li>
					<li class="parent item-primary item-bg">
					  <a href="#">Bootstrap</a>
					  <ul class="sub">
						<li><a href="bootstrap-accordions.html">Accordions</a></li>
						<li><a href="bootstrap-alerts.html">Alerts</a></li>
						<li><a href="bootstrap-buttons.html">Buttons</a></li>
						<li><a href="bootstrap-forms.html">Forms</a></li>
						<li><a href="bootstrap-list-group.html">List Group</a></li>
						<li><a href="bootstrap-panels.html">Panels</a></li>
						<li><a href="bootstrap-tables.html">Tables</a></li>
						<li><a href="bootstrap-tabs.html">Tabs</a></li>
						<li><a href="bootstrap-tooltips.html">Tooltip</a></li>
						<li><a href="bootstrap-typography.html">Typography</a></li>
					  </ul>
					</li>
					<li class="item-danger item-bg text-danger">
					  <a href="http://themeforest.net/item/progressive-multipurpose-responsive-template/7197521" target="_blank">Buy Now!</a>
					</li>
				  </ul>
				</nav>
			  </div>
			</div><!-- .primary -->
		  </div>
		</div>
		
		<div class="phone-active col-sm-9 col-md-9">
		  <a href="#" class="close"><span>close</span>×</a>
		  <span class="title">Call Us</span> <strong>+1 (777) 123 45 67</strong>
		</div>
		<div class="search-active col-sm-9 col-md-9">
		  <a href="#" class="close"><span>close</span>×</a>
		  <form name="search-form">
			<input class="search-string form-control" type="search" placeholder="Search here" name="search-string">
			<button class="search-submit">
			  <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
				<path fill="#231F20" d="M12.001,10l-0.5,0.5l-0.79-0.79c0.806-1.021,1.29-2.308,1.29-3.71c0-3.313-2.687-6-6-6C2.687,0,0,2.687,0,6
				s2.687,6,6,6c1.402,0,2.688-0.484,3.71-1.29l0.79,0.79l-0.5,0.5l4,4l2-2L12.001,10z M6,10c-2.206,0-4-1.794-4-4s1.794-4,4-4
				s4,1.794,4,4S8.206,10,6,10z"></path>
				<image src="/img/png-icons/search-icon.png" alt="" width="16" height="16" style="vertical-align: top;">
			  </svg>
			</button>
		  </form>
		</div>
	  </div><!--.row -->
	</div>
  </div><!-- .header-wrapper -->
</header><!-- .header -->

<div class="slider rs-slider load">
  <div class="tp-banner-container">
	<div class="tp-banner">
	  <ul>
		<li data-delay="7000" data-transition="fade" data-slotamount="7" data-masterspeed="2000">
		  <div class="elements">
			<div class="tp-caption lfl"
			  data-x="211"
			  data-y="203"
			  data-speed="1000"
			  data-start="1500"
			  data-easing="Power4.easeOut"
			  data-endspeed="500"
			  data-endeasing="Power1.easeIn"
			  style="z-index: 2">
			  <img src="/img/content/slider/rs-slider4-img1.png" width="217" height="172" alt="">
			</div>
			
			<div class="tp-caption lft"
			  data-x="97"
			  data-y="271"
			  data-speed="1000"
			  data-start="1000"
			  data-easing="Power4.easeOut"
			  data-endspeed="500"
			  data-endeasing="Power1.easeIn">
			  <img src="/img/content/slider/rs-slider4-img2.png" width="71" height="104" alt="">
			</div>
			
			<div class="tp-caption lft"
			  data-x="479"
			  data-y="271"
			  data-speed="1000"
			  data-start="1200"
			  data-easing="Power4.easeOut"
			  data-endspeed="500"
			  data-endeasing="Power1.easeIn">
			  <img src="/img/content/slider/rs-slider4-img2.png" width="71" height="104" alt="">
			</div>
			
			<div class="tp-caption lfb"
			  data-x="-32"
			  data-y="372"
			  data-speed="1000"
			  data-start="1000"
			  data-easing="Power4.easeOut"
			  data-endspeed="500"
			  data-endeasing="Power1.easeIn">
			  <img src="/img/content/slider/rs-slider4-img3.png" width="764" height="76" alt="">
			</div>
			
			<div class="tp-caption lft"
			  data-x="166"
			  data-y="167"
			  data-speed="1000"
			  data-start="1000"
			  data-easing="Power4.easeOut"
			  data-endspeed="500"
			  data-endeasing="Power1.easeIn">
			  <img src="/img/content/slider/rs-slider4-img4.png" width="247" height="71" alt="">
			</div>
			
			<div class="tp-caption customin"
			  data-x="177"
			  data-y="62"
			  data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 100%;"
			  data-speed="700"
			  data-start="1400"
			  data-easing="Power4.easeOut"
			  data-endspeed="500"
			  data-endeasing="Power1.easeIn"
			  style="z-index: 3">
			  <img src="/img/content/slider/rs-slider4-img5.png" width="166" height="107" alt="">
			</div>
			
			<div class="tp-caption lft"
			  data-x="487"
			  data-y="69"
			  data-speed="1000"
			  data-start="1500"
			  data-easing="Power4.easeOut"
			  data-endspeed="500"
			  data-endeasing="Power1.easeIn"
			  style="z-index: 1">
			  <img src="/img/content/slider/rs-slider4-img6.png" width="104" height="157" alt="">
			</div>
			
			<div class="tp-caption lfl"
			  data-x="539"
			  data-y="177"
			  data-speed="1000"
			  data-start="1000"
			  data-easing="Power4.easeOut"
			  data-endspeed="500"
			  data-endeasing="Power1.easeIn"
			  style="z-index: 3">
			  <img src="/img/content/slider/rs-slider4-img7.png" width="95" height="197" alt="">
			</div>
			
			<div class="tp-caption lfl lft"
			  data-x="7"
			  data-y="134"
			  data-speed="1000"
			  data-start="1700"
			  data-easing="Power4.easeOut"
			  data-endspeed="500"
			  data-endeasing="Power1.easeIn"
			  style="z-index: 3">
			  <img src="/img/content/slider/rs-slider4-img8.png" width="275" height="240" alt="">
			</div>
			
			<div class="tp-caption customin"
			  data-x="375"
			  data-y="78"
			  data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
			  data-speed="1000"
			  data-start="1500"
			  data-easing="Power4.easeOut"
			  data-endspeed="500"
			  data-endeasing="Power1.easeIn">
			  <img src="/img/content/slider/rs-slider4-img9.png" width="101" height="101" alt="">
			</div>
			
			<div class="tp-caption lfb"
			  data-x="141"
			  data-y="297"
			  data-speed="1000"
			  data-start="1800"
			  data-easing="Power4.easeOut"
			  data-endspeed="500"
			  data-endeasing="Power1.easeIn"
			  style="z-index: 4">
			  <img src="/img/content/slider/rs-slider4-img10.png" width="64" height="77" alt="">
			</div>
			
			<div class="tp-caption lfl"
			  data-x="428"
			  data-y="356"
			  data-speed="500"
			  data-start="2000"
			  data-easing="Power4.easeOut"
			  data-endspeed="500"
			  data-endeasing="Power1.easeIn"
			  style="z-index: 3">
			  <img src="/img/content/slider/rs-slider4-img11.png" width="35" height="14" alt="">
			</div>
			
			<div class="tp-caption lfb"
			  data-x="225"
			  data-y="335"
			  data-speed="1000"
			  data-start="1880"
			  data-easing="Power4.easeOut"
			  data-endspeed="500"
			  data-endeasing="Power1.easeIn"
			  style="z-index: 4">
			  <img src="/img/content/slider/rs-slider4-img12.png" width="33" height="25" alt="">
			</div>
			
			<div class="tp-caption lfb"
			  data-x="258"
			  data-y="341"
			  data-speed="1000"
			  data-start="1960"
			  data-easing="Power4.easeOut"
			  data-endspeed="500"
			  data-endeasing="Power1.easeIn"
			  style="z-index: 4">
			  <img src="/img/content/slider/rs-slider4-img13.png" width="33" height="25" alt="">
			</div>
			
			<div class="tp-caption lfb"
			  data-x="395"
			  data-y="335"
			  data-speed="1000"
			  data-start="2040"
			  data-easing="Power4.easeOut"
			  data-endspeed="500"
			  data-endeasing="Power1.easeIn"
			  style="z-index: 4">
			  <img src="/img/content/slider/rs-slider4-img14.png" width="33" height="25" alt="">
			</div>
			
			<h2 class="tp-caption lft skewtotop title"
			  data-x="722"
			  data-y="101"
			  data-speed="1000"
			  data-start="1700"
			  data-easing="Power4.easeOut"
			  data-endspeed="500"
			  data-endeasing="Power1.easeIn">
			  <strong>DIY</strong>
			</h2>
			
			<div class="tp-caption lfr skewtoright description"
			  data-x="707"
			  data-y="189"
			  data-speed="1000"
			  data-start="1500"
			  data-easing="Power4.easeOut"
			  data-endspeed="500"
			  data-endeasing="Power1.easeIn"
			  style="max-width: 480px">
			  <p>We added <strong>more than 80 items</strong> to the standard page design.
			  You can form the page yourself by placing any information
			  you want – graphs, tables, buttons, slides, animated
			  content, maps and so on.</p>
			</div>

			<a href="http://themeforest.net/item/progressive-multipurpose-responsive-template/7197521"
			  class="btn cherry tp-caption lfb btn-default"
			  data-x="722"
			  data-y="342"
			  data-speed="1000"
			  data-start="1700"
			  data-easing="Power4.easeOut"
			  data-endspeed="500"
			  data-endeasing="Power1.easeIn">
			  Read more
			</a>
		  </div>
		  
		  <img src="/img/content/slider/rs-slider4-bg.jpg" alt="" data-bgfit="cover" data-bgposition="center top" data-bgrepeat="no-repeat">
		</li>
		
		<li data-delay="7000" data-transition="fade" data-slotamount="7" data-masterspeed="2000">
		  <div class="elements">
			<div class="tp-caption lfb skewtobottom"
			  data-x="145"
			  data-y="66"
			  data-speed="1000"
			  data-start="500"
			  data-easing="Power4.easeOut"
			  data-endspeed="500"
			  data-endeasing="Power1.easeIn"
			  style="z-index: 3">
			  <img src="/img/content/slider/rs-slider1-phone.png" width="375" height="434" alt="">
			</div>
			
			<div class="tp-caption lfb skewtobottom"
			  data-x="307"
			  data-y="105"
			  data-speed="1000"
			  data-start="500"
			  data-easing="Power4.easeOut"
			  data-endspeed="400"
			  data-endeasing="Power1.easeIn"
			  style="z-index: 1">
			  <img src="/img/content/slider/rs-slider1-phone-bg.png" width="160" height="296" alt="">
			</div>
			
			<h2 class="tp-caption sft skewtotop title"
			  data-x="590"
			  data-y="101"
			  data-speed="1000"
			  data-start="500"
			  data-easing="Power4.easeOut"
			  data-endspeed="400"
			  data-endeasing="Power1.easeIn">
			  Clean &amp; Valid code
			</h2>
			
			<div class="tp-caption lfr skewtoright description cm-description-2"
			  data-x="575"
			  data-y="189"
			  data-speed="1000"
			  data-start="1000"
			  data-easing="Power4.easeOut"
			  data-endspeed="400"
			  data-endeasing="Power1.easeIn"
			  style="max-width: 600px;">
			  <p>Perfect HTML5 &amp; CSS3. Valid code, latest technologies, always
			  up-to-date. Compatible with the latest desktop and mobile
			  browsers down to IE8. Works perfectly wherever you need
			  and wherever you want.</p>
			</div>

			<a href="http://themeforest.net/item/progressive-multipurpose-responsive-template/7197521"
			  class="btn tp-caption customin cherry btn-default"
			  data-x="590"
			  data-y="332"
			  data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
			  data-speed="1200"
			  data-start="1400"
			  data-easing="Power3.easeInOut"
			  data-endspeed="300"
			  style="z-index: 5">
			  Read more
			</a>

			<div class="tp-caption customin customout"
			  data-x="337"
			  data-y="148"
			  data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
			  data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
			  data-speed="1200"
			  data-start="800"
			  data-easing="Power3.easeInOut"
			  data-endspeed="300"
			  style="z-index: 5">
			  <img src="/img/content/slider/rs-slider1-html5-1.png" width="99" height="111" alt="">
			</div>
			
			<div class="tp-caption customin"
			  data-x="355"
			  data-y="158"
			  data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
			  data-speed="1200"
			  data-start="1200"
			  data-easing="Power3.easeInOut"
			  data-end="3300"
			  data-endspeed="400"
			  style="z-index: 5">
			  <img src="/img/content/slider/rs-slider1-html5-2.png" width="72" height="91" alt="">
			</div>
			
			<div class="tp-caption customin"
			  data-x="355"
			  data-y="158"
			  data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
			  data-speed="1200"
			  data-start="3700"
			  data-easing="Power3.easeInOut"
			  data-endspeed="100"
			  style="z-index: 5">
			  <img src="/img/content/slider/rs-slider1-css3.png" width="72" height="91" alt="">
			</div>
			
			<div class="tp-caption lfb skewtobottom customin customout phone-text"
			  data-x="359"
			  data-y="325"
			  data-customin="x:0;y:55;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
			  data-customout="x:0;y:55;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
			  data-speed="1000"
			  data-start="1000"
			  data-easing="Power0.easeOut"
			  data-end="3500"
			  data-endspeed="400"
			  data-endeasing="Power0.easeIn"
			  data-captionhidden="on"
			  style="z-index: 2">
			  HTML5
			</div>
			
			<div class="tp-caption lfb skewtobottom customin customout phone-text"
			  data-x="365"
			  data-y="325"
			  data-customin="x:0;y:55;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
			  data-customout="x:0;y:55;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
			  data-speed="1000"
			  data-start="3600"
			  data-easing="Power0.easeOut"
			  data-endspeed="400"
			  data-endeasing="Power0.easeIn"
			  data-captionhidden="on"
			  style="z-index: 2">
			  CSS3
			</div>
		  </div>
		  
		  <img src="/img/content/slider/rs-slider1-bg.jpg" alt="" data-bgfit="cover" data-bgposition="center top" data-bgrepeat="no-repeat">
		</li>
		
		<li data-delay="10300" data-transition="fade" data-slotamount="7" data-masterspeed="2000" class="slid2">
		  <div class="elements">
			<h2 class="tp-caption sft skewtotop title"
			  data-x="15"
			  data-y="101"
			  data-speed="1000"
			  data-start="1100"
			  data-easing="Power4.easeOut"
			  data-endspeed="400"
			  data-endeasing="Power1.easeIn">
			  Four homepages
			</h2>
			
			<div class="tp-caption lfl skewtoleft description col-xs-5"
			  data-x="0"
			  data-y="189"
			  data-speed="1000"
			  data-start="1000"
			  data-easing="Power4.easeOut"
			  data-endspeed="400"
			  data-endeasing="Power1.easeIn"
			  style="max-width: 520px;">
			  <p>We have developed four different homepages for you to choose
			  the most convenient one. Make your choice based on your own
			  taste and sense of style, use extra elements and Twitter
			  Bootstrap to build any page you want.</p>
			</div>

			<a href="http://themeforest.net/item/progressive-multipurpose-responsive-template/7197521"
			  class="btn btn-primary tp-caption customin"
			  data-x="15"
			  data-y="332"
			  data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
			  data-speed="1200"
			  data-start="1000"
			  data-easing="Power3.easeInOut"
			  data-endspeed="300"
			  style="z-index: 5">
			  Read more
			</a>
			
			<div class="tp-caption lfb skewtobottom customin"
			  data-x="right"
			  data-hoffset="100"
			  data-y="70"
			  data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:-360;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
			  data-speed="1000"
			  data-start="1000"
			  data-easing="Power4.easeOut"
			  data-end="14000"
			  data-endspeed="500"
			  data-endeasing="Power1.easeIn"
			  style="z-index: 3">
			  <img src="/img/content/slider/rs-slider2-img.png" width="731" height="284" alt="">
			</div>
			
			<div class="tp-caption lfb customout"
			  data-x="right"
			  data-hoffset="-126"
			  data-y="70"
			  data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
			  data-speed="400"
			  data-start="2000"
			  data-easing="Power0.easeOut"
			  data-end="3000"
			  data-endspeed="400"
			  data-endeasing="Power0.easeIn"
			  data-captionhidden="on"
			  style="z-index: 2">
			  <img src="/img/content/slider/rs-slider2-homepage1.png" width="277" height="280" alt="">
			</div>
			
			<div class="tp-caption lfb customout"
			  data-x="right"
			  data-hoffset="-126"
			  data-y="70"
			  data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
			  data-speed="400"
			  data-start="3500"
			  data-easing="Power0.easeOut"
			  data-end="4500"
			  data-endspeed="400"
			  data-endeasing="Power0.easeIn"
			  data-captionhidden="on"
			  style="z-index: 2">
			  <img src="/img/content/slider/rs-slider2-homepage2.png" width="277" height="280" alt="">
			</div>
			
			<div class="tp-caption lfb customout"
			  data-x="right"
			  data-hoffset="-126"
			  data-y="70"
			  data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
			  data-speed="400"
			  data-start="5000"
			  data-easing="Power0.easeOut"
			  data-end="6000"
			  data-endspeed="400"
			  data-endeasing="Power0.easeIn"
			  data-captionhidden="on"
			  style="z-index: 2">
			  <img src="/img/content/slider/rs-slider2-homepage3.png" width="277" height="280" alt="">
			</div>
			
			<div class="tp-caption lfb customout"
			  data-x="right"
			  data-hoffset="-126"
			  data-y="70"
			  data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
			  data-speed="400"
			  data-start="6500"
			  data-easing="Power0.easeOut"
			  data-end="7500"
			  data-endspeed="400"
			  data-endeasing="Power0.easeIn"
			  data-captionhidden="on"
			  style="z-index: 2">
			  <img src="/img/content/slider/rs-slider2-homepage4.png" width="277" height="280" alt="">
			</div>
			
			<div class="tp-caption  customout"
			  data-x="right"
			  data-hoffset="-208"
			  data-y="130"
			  data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:1;transformPerspective:600;transformOrigin:50% 50%;"
			  data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
			  data-speed="1"
			  data-start="2300"
			  data-easing="Power0.easeOut"
			  data-end="3800"
			  data-endspeed="1"
			  data-endeasing="Power0.easeIn"
			  data-captionhidden="on"
			  style="z-index: 4">
			  <img src="/img/content/slider/rs-slider2-one.png" width="110" height="168" alt="">
			</div>
			
			<div class="tp-caption customin customout"
			  data-x="right"
			  data-hoffset="-208"
			  data-y="130"
			  data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:1;transformPerspective:600;transformOrigin:50% 50%;"
			  data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
			  data-speed="1"
			  data-start="3800"
			  data-easing="Power0.easeOut"
			  data-end="5300"
			  data-endspeed="1"
			  data-endeasing="Power0.easeIn"
			  data-captionhidden="on"
			  style="z-index: 4">
			  <img src="/img/content/slider/rs-slider2-two.png" width="110" height="168" alt="">
			</div>
			
			<div class="tp-caption customin customout"
			  data-x="right"
			  data-hoffset="-208"
			  data-y="130"
			  data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:1;transformPerspective:600;transformOrigin:50% 50%;"
			  data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
			  data-speed="1"
			  data-start="5300"
			  data-easing="Power0.easeOut"
			  data-end="6800"
			  data-endspeed="1"
			  data-endeasing="Power0.easeIn"
			  data-captionhidden="on"
			  style="z-index: 4">
			  <img src="/img/content/slider/rs-slider2-three.png" width="110" height="168" alt="">
			</div>
			
			<div class="tp-caption customin customout"
			  data-x="right"
			  data-hoffset="-208"
			  data-y="130"
			  data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:1;transformPerspective:600;transformOrigin:50% 50%;"
			  data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
			  data-speed="1"
			  data-start="6800"
			  data-easing="Power0.easeOut"
			  data-end="8000"
			  data-endspeed="1"
			  data-endeasing="Power0.easeIn"
			  data-captionhidden="on"
			  style="z-index: 4">
			  <img src="/img/content/slider/rs-slider2-four.png" width="110" height="168" alt="">
			</div>
			
			<div class="tp-caption customin customout"
			  data-x="right"
			  data-hoffset="-208"
			  data-y="130"
			  data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:1;transformPerspective:600;transformOrigin:50% 50%;"
			  data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
			  data-speed="1"
			  data-start="8200"
			  data-easing="Power0.easeOut"
			  data-end="8300"
			  data-endspeed="1"
			  data-endeasing="Power0.easeIn"
			  data-captionhidden="on"
			  style="z-index: 4">
			  <img src="/img/content/slider/rs-slider2-four.png" width="110" height="168" alt="">
			</div>
			
			<div class="tp-caption customin customout"
			  data-x="right"
			  data-hoffset="-208"
			  data-y="130"
			  data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:1;transformPerspective:600;transformOrigin:50% 50%;"
			  data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
			  data-speed="1"
			  data-start="8400"
			  data-easing="Power0.easeOut"
			  data-end="8500"
			  data-endspeed="1"
			  data-endeasing="Power0.easeIn"
			  data-captionhidden="on"
			  style="z-index: 4">
			  <img src="/img/content/slider/rs-slider2-four.png" width="110" height="168" alt="">
			</div>
			
			<div class="tp-caption customin customout"
			  data-x="right"
			  data-hoffset="-208"
			  data-y="130"
			  data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:1;transformPerspective:600;transformOrigin:50% 50%;"
			  data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
			  data-speed="1"
			  data-start="8600"
			  data-easing="Power0.easeOut"
			  data-end="8700"
			  data-endspeed="1"
			  data-endeasing="Power0.easeIn"
			  data-captionhidden="on"
			  style="z-index: 4">
			  <img src="/img/content/slider/rs-slider2-four.png" width="110" height="168" alt="">
			</div>
			
			<div class="tp-caption customin customout"
			  data-x="right"
			  data-hoffset="-208"
			  data-y="130"
			  data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:1;transformPerspective:600;transformOrigin:50% 50%;"
			  data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
			  data-speed="1"
			  data-start="8800"
			  data-easing="Power0.easeOut"
			  data-end="8900"
			  data-endspeed="1"
			  data-endeasing="Power0.easeIn"
			  data-captionhidden="on"
			  style="z-index: 4">
			  <img src="/img/content/slider/rs-slider2-four.png" width="110" height="168" alt="">
			</div>
			
			<div class="tp-caption customin customout"
			  data-x="right"
			  data-hoffset="-239"
			  data-y="187"
			  data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:1;transformPerspective:600;transformOrigin:50% 50%;"
			  data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
			  data-speed="1"
			  data-start="9000"
			  data-easing="Power0.easeOut"
			  data-end="10300"
			  data-endspeed="1"
			  data-endeasing="Power0.easeIn"
			  data-captionhidden="on"
			  style="z-index: 4">
			  <img src="/img/content/slider/rs-slider2-quadrate1.png" width="48" height="48" alt="">
			</div>
			
			<div class="tp-caption customin customout"
			  data-x="right"
			  data-hoffset="-224"
			  data-y="172"
			  data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:1;transformPerspective:600;transformOrigin:50% 50%;"
			  data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
			  data-speed="1"
			  data-start="9100"
			  data-easing="Power0.easeOut"
			  data-end="10200"
			  data-endspeed="1"
			  data-endeasing="Power0.easeIn"
			  data-captionhidden="on"
			  style="z-index: 4">
			  <img src="/img/content/slider/rs-slider2-quadrate2.png" width="79" height="79" alt="">
			</div>
			
			<div class="tp-caption customin customout"
			  data-x="right"
			  data-hoffset="-209"
			  data-y="157"
			  data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:1;transformPerspective:600;transformOrigin:50% 50%;"
			  data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
			  data-speed="1"
			  data-start="9200"
			  data-easing="Power0.easeOut"
			  data-end="10100"
			  data-endspeed="1"
			  data-endeasing="Power0.easeIn"
			  data-captionhidden="on"
			  style="z-index: 4">
			  <img src="/img/content/slider/rs-slider2-quadrate3.png" width="110" height="107" alt="">
			</div>
			
			<div class="tp-caption customin customout"
			  data-x="right"
			  data-hoffset="-194"
			  data-y="142"
			  data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:1;transformPerspective:600;transformOrigin:50% 50%;"
			  data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
			  data-speed="1"
			  data-start="9300"
			  data-easing="Power0.easeOut"
			  data-end="10000"
			  data-endspeed="1"
			  data-endeasing="Power0.easeIn"
			  data-captionhidden="on"
			  style="z-index: 4">
			  <img src="/img/content/slider/rs-slider2-quadrate4.png" width="140" height="138" alt="">
			</div>
			
			<div class="tp-caption customin customout"
			  data-x="right"
			  data-hoffset="-179"
			  data-y="127"
			  data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:1;transformPerspective:600;transformOrigin:50% 50%;"
			  data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
			  data-speed="1"
			  data-start="9400"
			  data-easing="Power0.easeOut"
			  data-end="9900"
			  data-endspeed="1"
			  data-endeasing="Power0.easeIn"
			  data-captionhidden="on"
			  style="z-index: 4">
			  <img src="/img/content/slider/rs-slider2-quadrate5.png" width="170" height="168" alt="">
			</div>
			
			<div class="tp-caption customin customout"
			  data-x="right"
			  data-hoffset="-164"
			  data-y="112"
			  data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:1;transformPerspective:600;transformOrigin:50% 50%;"
			  data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
			  data-speed="1"
			  data-start="9500"
			  data-easing="Power0.easeOut"
			  data-end="9800"
			  data-endspeed="1"
			  data-endeasing="Power0.easeIn"
			  data-captionhidden="on"
			  style="z-index: 4">
			  <img src="/img/content/slider/rs-slider2-quadrate6.png" width="200" height="200" alt="">
			</div>
			
			<div class="tp-caption customin customout"
			  data-x="right"
			  data-hoffset="-149"
			  data-y="97"
			  data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:1;transformPerspective:600;transformOrigin:50% 50%;"
			  data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
			  data-speed="1"
			  data-start="9600"
			  data-easing="Power0.easeOut"
			  data-end="9700"
			  data-endspeed="1"
			  data-endeasing="Power0.easeIn"
			  data-captionhidden="on"
			  style="z-index: 4">
			  <img src="/img/content/slider/rs-slider2-quadrate7.png" width="231" height="231" alt="">
			</div>
		  </div>
		  
		  <img src="/img/content/slider/rs-slider2-bg.jpg" alt="" data-bgfit="cover" data-bgposition="center top" data-bgrepeat="no-repeat">
		</li>
		
		<li data-delay="8000" data-transition="fade" data-slotamount="7" data-masterspeed="2000">
		  <div class="elements">
			<div class="tp-caption lfl skewtoleft"
			  data-x="-121"
			  data-y="bottom"
			  data-speed="1500"
			  data-start="1000"
			  data-easing="Power4.easeOut"
			  data-endspeed="1000"
			  data-endeasing="Power1.easeIn"
			  style="z-index: 1">
			  <img src="/img/content/slider/rs-slider3-pig.png" width="576" height="393" alt="">
			</div>
			
			<div class="tp-caption lfl skewtoleft"
			  data-x="-121"
			  data-y="bottom"
			  data-speed="1500"
			  data-start="1000"
			  data-easing="Power4.easeOut"
			  data-endspeed="1000"
			  data-endeasing="Power1.easeIn"
			  style="z-index: 3">
			  <img src="/img/content/slider/rs-slider3-pig2.png" width="576" height="393" alt="">
			</div>

			<h2 class="tp-caption lft skewtotop title"
			  data-x="509"
			  data-y="122"
			  data-speed="1500"
			  data-start="1000"
			  data-easing="Power0.easeOut"
			  data-endspeed="1000"
			  data-endeasing="Power1.easeIn">
			  <strong>Save money</strong>
			</h2>
			
			<h2 class="tp-caption lfr skewtoright title"
			  data-x="755"
			  data-y="122"
			  data-speed="1500"
			  data-start="1000"
			  data-easing="Power4.easeOut"
			  data-endspeed="1000"
			  data-endeasing="Power1.easeIn">
			  on additional plugin!
			</h2>
			
			<div class="tp-caption customin customout description col-xs-5"
			  data-x="526"
			  data-y="196"
			  data-customin="x:0;y:0;z:50;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0;"
			  data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
			  data-speed="1000"
			  data-start="1500"
			  data-easing="Back.easeInOut"
			  data-endspeed="400"
			  data-endeasing="Power1.easeIn"
			  style="max-width: 500px;">
			  <p>Create a responsive or fullwidth slider with must-see-effects.
			  Plugin features tons of unique transition effects, an image
			  preloader, video embedding, autoplay and lots of easy to
			  set options to create your own effects.</p>
			</div>

			<a href="http://themeforest.net/item/progressive-multipurpose-responsive-template/7197521"
			  class="tp-caption btn orang lfb skewtobottom btn-default"
			  data-x="509"
			  data-y="338"
			  data-speed="1000"
			  data-start="1500"
			  data-easing="Power3.easeInOut"
			  data-endspeed="300">
			  Read more
			</a>

			<div class="tp-caption lft customout"
			  data-x="136"
			  data-y="140"
			  data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
			  data-speed="500"
			  data-start="2200"
			  data-easing="Power4.easeOut"
			  data-end="2400"
			  data-endspeed="100"
			  data-endeasing="Power1.easeIn"
			  style="z-index: 2">
			  <img src="/img/content/slider/rs-slider3-coin.png" width="64" height="68" alt="">
			</div>
			
			<div class="tp-caption lft customout"
			  data-x="136"
			  data-y="30"
			  data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
			  data-speed="500"
			  data-start="2700"
			  data-easing="Power4.easeOut"
			  data-endeasing="Power1.easeIn"
			  style="z-index: 2">
			  <img src="/img/content/slider/rs-slider3-coin.png" width="64" height="68" alt="">
			</div>
		  </div>
		  
		  <img src="/img/content/slider/rs-slider3-bg.jpg" alt="" data-bgfit="cover" data-bgposition="center top" data-bgrepeat="no-repeat">
		</li>
	  </ul>
	  <div class="tp-bannertimer"></div>
	</div>
  </div>
</div><!-- .rs-slider -->

<div class="banner-set load">
  <div class="container">
	<div class="banners">
	  <a href="#" class="banner">
		<img src="/img/content/banner1.jpg" width="253" height="158" alt="">
		<h2 class="title">Home Theater</h2>
		<div class="description">Nunc condimentum eros vel nibh consectetur dignissim. Ut ante neque, ullamcorper ac feugiat at, ullamcorper sagittis magna.</div>
	  </a>
	  <a href="#" class="banner">
		<img src="/img/content/banner2.jpg" width="253" height="158" alt="">
		<h2 class="title">Multiroom</h2>
		<div class="description">Maecenas ac leo velit. Aliquam venenatis tellus in erat pellentesque ut dignissim turpis consequat. Fusce sit amet sagittis urna.</div>
	  </a>
	  <a href="#" class="banner">
		<img src="/img/content/banner3.jpg" width="253" height="158" alt="">
		<h2 class="title">Lighting Control</h2>
		<div class="description">Phasellus quis mauris non mauris sceleris vehicula. Vestibulum ipsum odio, placerat sed consequat in, congue non nibh.</div>
	  </a>
	  <a href="#" class="banner">
		<img src="/img/content/banner4.jpg" width="253" height="158" alt="">
		<h2 class="title">Amazing Sound</h2>
		<div class="description">Maecenas et massa odio, tincidunt ultrices sapien. Praesent non tortor quis metus posuere gravida at quis nulla.</div>
	  </a>
	  <a href="#" class="banner">
		<img src="/img/content/banner5.jpg" width="253" height="158" alt="">
		<h2 class="title">Home Theater</h2>
		<div class="description">Nunc condimentum eros vel nibh consectetur dignissim. Ut ante neque, ullamcorper ac feugiat at, ullamcorper sagittis magna.</div>
	  </a>
	  <a href="#" class="banner">
		<img src="/img/content/banner6.jpg" width="253" height="158" alt="">
		<h2 class="title">Multiroom</h2>
		<div class="description">Maecenas ac leo velit. Aliquam venenatis tellus in erat pellentesque ut dignissim turpis consequat. Fusce sit amet sagittis urna.</div>
	  </a>
	</div><!-- .banners -->
	<div class="clearfix"></div>
  </div>
  <div class="nav-box">
	<div class="container">
	  <a class="prev" href="#"><span class="glyphicon glyphicon-arrow-left"></span></a>
	  <div class="pagination switches"></div>
	  <a class="next" href="#"><span class="glyphicon glyphicon-arrow-right"></span></a>	
	</div>
  </div>
</div><!-- .banner-set -->

<div class="clearfix"></div>

<section id="main">
  <article class="content">
	<div class="container">
	  <div class="title-box">
		<h1 class="title">Who we are</h1>
	  </div>

	  <div class="row">
		<div class="col-sm-6 col-md-6 bottom-padding">
		  <p class="lead"><strong>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis minus pariatur eligendi sunt doloremque vitae reiciendis tempore voluptatibus quis architecto suscipit magnam.</strong></p>
		  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae odit iste exercitationem praesentium deleniti nostrum laborum rem id nihil tempora. Adipisci ea commodi unde nam placeat cupiditate quasi a ducimus rem consequuntur ex eligendi minima voluptatem assumenda voluptas quidem sit maiores odio velit voluptate.</p>
		  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis dolorum mollitia debitis numquam itaque facere culpa harum natus amet alias dolor repudiandae repellendus distinctio aliquid placeat perspiciatis quaerat beatae vero?</p>
		  <a href="#" class="btn btn-default">Read more</a>
		</div>
		
		<div class="col-sm-6 col-md-6 bottom-padding">
		  <div class="progress border-radius hover" data-appear-progress-animation="80%">
			<div class="progress-bar progress-bar-info">Web Design 80%</div>
		  </div>
		  
		  <div class="progress border-radius" data-appear-progress-animation="70%">
			<div class="progress-bar progress-bar-success">HTML/CSS 70%</div>
		  </div>
		  
		  <div class="progress border-radius" data-appear-progress-animation="40%">
			<div class="progress-bar progress-bar-info">Opencart 40%</div>
		  </div>
		  
		  <div class="progress border-radius" data-appear-progress-animation="90%">
			<div class="progress-bar progress-bar-warning">Graphic Design 90%</div>
		  </div>
		  
		  <div class="progress border-radius" data-appear-progress-animation="58%">
			<div class="progress-bar progress-bar-danger">WordPress 58%</div>
		  </div>
		</div><!-- .employee -->
	  </div>
	  
	  <div class="carousel-box bottom-padding load">
		<div class="clearfix"></div>
		
		<div class="row">
		  <div class="carousel no-responsive gallery">
			<div class="col-sm-4 col-md-3">
			  <a class="gallery-images" rel="fancybox" href="img/content/office-1.jpg">
				<img src="/img/content/office-1-270.jpg" width="270" height="135" alt="">
				<span class="bg-images"><i class="fa fa-search"></i></span>
			  </a>
			</div>
			<div class="col-sm-4 col-md-3">
			  <a class="gallery-images" rel="fancybox" href="img/content/office-2.jpg">
				<img src="/img/content/office-2-270.jpg" width="270" height="135" alt="">
				<span class="bg-images"><i class="fa fa-search"></i></span>
			  </a>
			</div>
			<div class="col-sm-4 col-md-3">
			  <a class="gallery-images" rel="fancybox" href="img/content/office-3.jpg">
				<img src="/img/content/office-3-270.jpg" width="270" height="135" alt="">
				<span class="bg-images"><i class="fa fa-search"></i></span>
			  </a>
			</div>
			<div class="col-sm-4 col-md-3">
			  <a class="gallery-images" rel="fancybox" href="img/content/office-4.jpg">
				<img src="/img/content/office-4-270.jpg" width="270" height="135" alt="">
				<span class="bg-images"><i class="fa fa-search"></i></span>
			  </a>
			</div>
		  </div>
		</div>
	  </div>

	  <div class="clearfix"></div>
	</div>
	  
	<div class="full-width-box bottom-padding cm-padding-bottom-36">
	  <div class="fwb-bg fwb-paralax band-6" data-stellar-background-ratio="0.5"><div class="overlay"></div></div>
	  
	  <div class="container">
		<div class="portfolio">
		  <div class="btn-group filter-buttons filter-list white">
			<button type="button" class="dropdown-toggle" data-toggle="dropdown">
			  All works <span class="caret"></span>
			</button>
			<ul class="dropdown-menu" role="menu">
			  <li><a href="#" data-filter="*" class="active">All works</a></li>
			  <li><a href="#" data-filter=".web-design">Web Design</a></li>
			  <li><a href="#" data-filter=".graphic-design">Graphic Design</a></li>
			  <li><a href="#" data-filter=".ecommerce">eCommerce</a></li>
			</ul>
			<div class="clearfix"></div>
		  </div><!-- .filter-buttons -->
		  
		  <div class="clearfix"></div>
		  
		  <div class="row filter-elements">
			<div class="work-element web-design col-xs-12 col-sm-3 col-md-3">
			  <a href="portfolio-single.html" class="work">
				<img src="/img/content/portfolio-1-270.jpg" width="270" height="197" alt="">
				<span class="shadow"></span>
				<div class="bg-hover"></div>
				<div class="work-title">
				  <h3 class="title">Morbi non lacus ac sapien molestie</h3>
				  <div class="description">Web design</div>
				</div>
			  </a>
			</div><!-- .work-element -->
			
			<div class="work-element graphic-design col-xs-12 col-sm-3 col-md-3">
			  <a href="portfolio-single.html" class="work">
				<img src="/img/content/portfolio-2-270.jpg" width="270" height="197" alt="">
				<span class="shadow"></span>
				<div class="bg-hover"></div>
				<div class="work-title">
				  <h3 class="title">Sed at turpis tortor bibendum </h3>
				  <div class="description">Web design</div>
				</div>
			  </a>
			</div><!-- .work-element -->
			
			<div class="work-element ecommerce col-xs-12 col-sm-3 col-md-3">
			  <a href="portfolio-single.html" class="work">
				<img src="/img/content/portfolio-3-270.jpg" width="270" height="197" alt="">
				<span class="shadow"></span>
				<div class="bg-hover"></div>
				<div class="work-title">
				  <h3 class="title">Mauris quis sapien mass</h3>
				  <div class="description">Web design</div>
				</div>
			  </a>
			</div><!-- .work-element -->
			
			<div class="work-element graphic-design col-xs-12 col-sm-3 col-md-3">
			  <a href="portfolio-single.html" class="work">
				<img src="/img/content/portfolio-4-270.jpg" width="270" height="197" alt="">
				<span class="shadow"></span>
				<div class="bg-hover"></div>
				<div class="work-title">
				  <h3 class="title">Donec pulvinar pulvinar arcu</h3>
				  <div class="description">Other</div>
				</div>
			  </a>
			</div><!-- .work-element -->
			
			<div class="work-element graphic-design col-xs-12 col-sm-3 col-md-3">
			  <a href="portfolio-single.html" class="work">
				<img src="/img/content/portfolio-5-270.jpg" width="270" height="197" alt="">
				<span class="shadow"></span>
				<div class="bg-hover"></div>
				<div class="work-title">
				  <h3 class="title">Proin faucibus pretium</h3>
				  <div class="description">Web design</div>
				</div>
			  </a>
			</div><!-- .work-element -->
			
			<div class="work-element ecommerce col-xs-12 col-sm-3 col-md-3">
			  <a href="portfolio-single.html" class="work">
				<img src="/img/content/portfolio-6-270.jpg" width="270" height="197" alt="">
				<span class="shadow"></span>
				<div class="bg-hover"></div>
				<div class="work-title">
				  <h3 class="title">Pellentesque in dui mauris</h3>
				  <div class="description">Other</div>
				</div>
			  </a>
			</div><!-- .work-element -->
			
			<div class="work-element ecommerce col-xs-12 col-sm-3 col-md-3">
			  <a href="portfolio-single.html" class="work">
				<img src="/img/content/portfolio-7-270.jpg" width="270" height="197" alt="">
				<span class="shadow"></span>
				<div class="bg-hover"></div>
				<div class="work-title">
				<h3 class="title">Vivamus auctor metus porta</h3>
				<div class="description">Web design</div>
				</div>
			  </a>
			</div><!-- .work-element -->
			
			<div class="work-element web-design col-xs-12 col-sm-3 col-md-3">
			  <a href="portfolio-single.html" class="work">
				<img src="/img/content/portfolio-8-270.jpg" width="270" height="197" alt="">
				<span class="shadow"></span>
				<div class="bg-hover"></div>
				<div class="work-title">
				  <h3 class="title">Quisque nec lorem vel metus ultrices</h3>
				  <div class="description">Web design</div>
				</div>
			  </a>
			</div><!-- .work-element -->
		  </div>
		</div>
	  </div>
	</div><!-- .full-width-box -->
	
	<div class="container">
	  <div class="row services">
		<div class="col-sm-12 col-md-12">
		  <div class="title-box">
			<h1 class="title">Services</h1>
		  </div>
		</div>
		
		<div class="big-services-box col-sm-4 col-md-4">
		  <div>
			<div class="big-icon bg" data-appear-animation="wobble"><i class="fa fa-picture-o"></i></div>
			<h4 class="title" data-appear-animation="bounceInLeft">Web Design</h4>
			<div class="text-small" data-appear-animation="bounceInLeft">
			  Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat.
			  <div class="clearfix"></div><br>
			  <button class="btn btn-default">Read more</button>
			</div>
		  </div>
		</div><!-- .services-box-two -->
		
		<div class="big-services-box col-sm-4 col-md-4">
		  <div>
			<div class="big-icon bg" data-appear-animation="wobble"><i class="fa fa-wrench"></i></div>
			<h4 class="title" data-appear-animation="bounceInUp">Graphic Design</h4>
			<div class="text-small" data-appear-animation="bounceInUp">
			  The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those intereste. It is a long established fact that a reader.
			  <div class="clearfix"></div><br>
			  <button class="btn btn-default">Read more</button>
			</div>
		  </div>
		</div><!-- .services-box-two -->
		
		<div class="big-services-box col-sm-4 col-md-4">
		  <div>
			<div class="big-icon bg" data-appear-animation="wobble"><i class="fa fa-bug"></i></div>
			<h4 class="title" data-appear-animation="bounceInRight">Internet Marketing</h4>
			<div class="text-small" data-appear-animation="bounceInRight">
			  The readable content of a page when looking at its layout. The point of using. Duis aute irure dolor reprehenderit in voluptate velit esse cillum.
			  <div class="clearfix"></div><br>
			  <button class="btn btn-default">Read more</button>
			</div>
		  </div>
		</div><!-- .services-box-two -->
	  </div>
	  <br><br>
	</div>
	  
	<div class="full-width-box bottom-padding cm-padding-bottom-36">
	  <div class="fwb-bg fwb-fixed band-1"><div class="overlay"></div></div>
	  
	  <div class="container">
		<div class="row text-center">
		  <div class="col-sm-6 col-md-4 col-lg-3">
			<div class="pricing">
			  <div class="title"><a href="#">First Package</a></div>
			  <div class="price-box">
				<div class="icon pull-right circle">
				  <span class="livicon" data-n="shopping-cart" data-s="32" data-c="#1e1e1e" data-hc="0"></span>
				</div>
				<div class="starting">Starting at</div>
				<div class="price">$199<span>/month</span></div>
			  </div>
			  <ul class="options">
				<li><span><i class="fa fa-check"></i></span>Responsive Design</li>
				<li class="active"><span><i class="fa fa-check"></i></span>Styled elements</li>
				<li><span><i class="fa fa-check"></i></span>Easy Setup</li>
			  </ul>
			  <div class="bottom-box">
				<a href="#" class="more">Read more <span class="fa fa-angle-right"></span></a>
				<div class="rating-box">
				  <div style="width: 60%" class="rating">
					<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="73px" height="12px" viewBox="0 0 73 12" enable-fwb-bg="new 0 0 73 12" xml:space="preserve">
					  <polygon fill-rule="evenodd" clip-rule="evenodd" fill="#1e1e1e" points="6.5,0 8,5 13,5 9,7.7 10,12 6.5,9.2 3,12 4,7.7 0,5 5,5"></polygon>
					  <polygon fill-rule="evenodd" clip-rule="evenodd" fill="#1e1e1e" points="66.5,0 68,5 73,5 69,7.7 70,12 66.5,9.2 63,12 64,7.7 60,5 65,5 "></polygon>
					  <polygon fill-rule="evenodd" clip-rule="evenodd" fill="#1e1e1e" points="21.5,0 23,5 28,5 24,7.7 25,12 21.5,9.2 18,12 19,7.7 15,5 20,5 "></polygon>
					  <polygon fill-rule="evenodd" clip-rule="evenodd" fill="#1e1e1e" points="51.5,0 53,5 58,5 54,7.7 55,12 51.5,9.2 48,12 49,7.7 45,5 50,5 "></polygon>
					  <polygon fill-rule="evenodd" clip-rule="evenodd" fill="#1e1e1e" points="36.5,0 38,5 43,5 39,7.7 40,12 36.5,9.2 33,12 34,7.7 30,5 35,5 "></polygon>
					</svg>
				  </div>
				</div>	
				<div class="clearfix"></div>
				<button class="btn btn-default btn-lg">Buy Now</button>
			  </div>
			</div><!-- .pricing -->
		  </div>
		  
		  <div class="col-sm-6 col-md-4 col-lg-3">
			<div class="pricing prising-info">
			  <div class="title"><a href="#">Second Package</a></div>
			  <div class="price-box">
				<div class="icon pull-right circle">
				  <span class="livicon" data-n="wrench" data-s="32" data-c="#35beeb" data-hc="0"></span>
				</div>
				<div class="starting">Starting at</div>
				<div class="price">$299<span>/month</span></div>
			  </div>
			  <ul class="options">
				<li><span><i class="fa fa-check"></i></span>Responsive Design</li>
				<li class="active"><span><i class="fa fa-check"></i></span>Styled elements</li>
				<li><span><i class="fa fa-check"></i></span>Easy Setup</li>
			  </ul>
			  <div class="bottom-box">
				<a href="#" class="more">Read more <span class="fa fa-angle-right"></span></a>
				<div class="rating-box">
				  <div style="width: 80%" class="rating">
					<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="73px" height="12px" viewBox="0 0 73 12" enable-fwb-bg="new 0 0 73 12" xml:space="preserve">
					  <polygon fill-rule="evenodd" clip-rule="evenodd" fill="#1e1e1e" points="6.5,0 8,5 13,5 9,7.7 10,12 6.5,9.2 3,12 4,7.7 0,5 5,5"></polygon>
					  <polygon fill-rule="evenodd" clip-rule="evenodd" fill="#1e1e1e" points="66.5,0 68,5 73,5 69,7.7 70,12 66.5,9.2 63,12 64,7.7 60,5 65,5 "></polygon>
					  <polygon fill-rule="evenodd" clip-rule="evenodd" fill="#1e1e1e" points="21.5,0 23,5 28,5 24,7.7 25,12 21.5,9.2 18,12 19,7.7 15,5 20,5 "></polygon>
					  <polygon fill-rule="evenodd" clip-rule="evenodd" fill="#1e1e1e" points="51.5,0 53,5 58,5 54,7.7 55,12 51.5,9.2 48,12 49,7.7 45,5 50,5 "></polygon>
					  <polygon fill-rule="evenodd" clip-rule="evenodd" fill="#1e1e1e" points="36.5,0 38,5 43,5 39,7.7 40,12 36.5,9.2 33,12 34,7.7 30,5 35,5 "></polygon>
					</svg>
				  </div>
				</div>
				<div class="clearfix"></div>
				<button class="btn btn-info btn-lg">Buy Now</button>
			  </div>
			</div><!-- .pricing -->
		  </div>
		  
		  <div class="col-sm-6 col-md-4 col-lg-3">
			<div class="pricing pricing-success">
			  <div class="title"><a href="#">Third Package</a></div>
			  <div class="price-box">
				<div class="icon pull-right circle">
				  <span class="livicon" data-n="piggybank" data-s="32" data-c="#9ab71a" data-hc="0"></span>
				</div>
				<div class="starting">Starting at</div>
				<div class="price">$399<span>/month</span></div>
			  </div>
			  <ul class="options">
				<li class="active"><span><i class="fa fa-check"></i></span>Responsive Design</li>
				<li class="active"><span><i class="fa fa-check"></i></span>Styled elements</li>
				<li><span><i class="fa fa-check"></i></span>Easy Setup</li>
			  </ul>
			  <div class="bottom-box">
				<a href="#" class="more">Read more <span class="fa fa-angle-right"></span></a>
				<div class="rating-box">
				  <div style="width: 80%" class="rating">
					<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="73px" height="12px" viewBox="0 0 73 12" enable-fwb-bg="new 0 0 73 12" xml:space="preserve">
					  <polygon fill-rule="evenodd" clip-rule="evenodd" fill="#1e1e1e" points="6.5,0 8,5 13,5 9,7.7 10,12 6.5,9.2 3,12 4,7.7 0,5 5,5"></polygon>
					  <polygon fill-rule="evenodd" clip-rule="evenodd" fill="#1e1e1e" points="66.5,0 68,5 73,5 69,7.7 70,12 66.5,9.2 63,12 64,7.7 60,5 65,5 "></polygon>
					  <polygon fill-rule="evenodd" clip-rule="evenodd" fill="#1e1e1e" points="21.5,0 23,5 28,5 24,7.7 25,12 21.5,9.2 18,12 19,7.7 15,5 20,5 "></polygon>
					  <polygon fill-rule="evenodd" clip-rule="evenodd" fill="#1e1e1e" points="51.5,0 53,5 58,5 54,7.7 55,12 51.5,9.2 48,12 49,7.7 45,5 50,5 "></polygon>
					  <polygon fill-rule="evenodd" clip-rule="evenodd" fill="#1e1e1e" points="36.5,0 38,5 43,5 39,7.7 40,12 36.5,9.2 33,12 34,7.7 30,5 35,5 "></polygon>
					</svg>
				  </div>
				</div>
				<div class="clearfix"></div>
				<button class="btn btn-success btn-lg">Buy Now</button>
			  </div>
			</div><!-- .pricing -->
		  </div>
		  
		  <div class="col-sm-6 col-md-4 col-md-offset-4 col-lg-3 col-lg-offset-0">
			<div class="pricing pricing-error">
			  <div class="title"><a href="#">Fourth Package</a></div>
			  <div class="price-box">
				<div class="icon pull-right circle">
				  <span class="livicon" data-n="key" data-s="32" data-c="#de2a61" data-hc="0"></span>
				</div>
				<div class="starting">Starting at</div>
				<div class="price">$499<span>/month</span></div>
			  </div>
			  <ul class="options">
				<li class="active"><span><i class="fa fa-check"></i></span>Responsive Design</li>
				<li class="active"><span><i class="fa fa-check"></i></span>Styled elements</li>
				<li class="active"><span><i class="fa fa-check"></i></span>Easy Setup</li>
			  </ul>
			  <div class="bottom-box">
				<a href="#" class="more">Read more <span class="fa fa-angle-right"></span></a>
				<div class="rating-box">
				  <div style="width: 100%" class="rating">
					<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="73px" height="12px" viewBox="0 0 73 12" enable-fwb-bg="new 0 0 73 12" xml:space="preserve">
					  <polygon fill-rule="evenodd" clip-rule="evenodd" fill="#1e1e1e" points="6.5,0 8,5 13,5 9,7.7 10,12 6.5,9.2 3,12 4,7.7 0,5 5,5"></polygon>
					  <polygon fill-rule="evenodd" clip-rule="evenodd" fill="#1e1e1e" points="66.5,0 68,5 73,5 69,7.7 70,12 66.5,9.2 63,12 64,7.7 60,5 65,5 "></polygon>
					  <polygon fill-rule="evenodd" clip-rule="evenodd" fill="#1e1e1e" points="21.5,0 23,5 28,5 24,7.7 25,12 21.5,9.2 18,12 19,7.7 15,5 20,5 "></polygon>
					  <polygon fill-rule="evenodd" clip-rule="evenodd" fill="#1e1e1e" points="51.5,0 53,5 58,5 54,7.7 55,12 51.5,9.2 48,12 49,7.7 45,5 50,5 "></polygon>
					  <polygon fill-rule="evenodd" clip-rule="evenodd" fill="#1e1e1e" points="36.5,0 38,5 43,5 39,7.7 40,12 36.5,9.2 33,12 34,7.7 30,5 35,5 "></polygon>
					</svg>
				  </div>
				</div>
				<div class="clearfix"></div>
				<button class="btn btn-danger btn-lg">Buy Now</button>
			  </div>
			</div><!-- .pricing -->
		  </div>
		</div>
	  </div>
	</div><!-- .full-width-box -->
	
	<div class="container">
	  <div class="row">
		<div class="bottom-padding col-sm-6 col-md-6">
		  <div class="carousel-box load overflow" data-carousel-pagination="true" data-carousel-nav="false" data-carousel-one="true">
			<div class="title-box">
			  <a class="next" href="#">
				<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="9px" height="16px" viewBox="0 0 9 16" enable-background="new 0 0 9 16" xml:space="preserve">
				  <polygon fill-rule="evenodd" clip-rule="evenodd" fill="#fcfcfc" points="1,0.001 0,1.001 7,8 0,14.999 1,15.999 9,8 "></polygon>
				</svg>
			  </a>
			  <a class="prev" href="#">
				<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="9px" height="16px" viewBox="0 0 9 16" enable-background="new 0 0 9 16" xml:space="preserve">
				  <polygon fill-rule="evenodd" clip-rule="evenodd" fill="#fcfcfc" points="8,15.999 9,14.999 2,8 9,1.001 8,0.001 0,8 "></polygon>
				</svg>
			  </a>
			  <h2 class="title">Posts</h2>
			</div>
			
			<div class="clearfix"></div>
			
			<div class="row">
			  <div class="carousel no-responsive">
				<div class="post">
				  <h2 class="entry-title"><a href="/blog-view.html">Lorem ipsum dolor sit.</a></h2>
				  <div class="entry-content">
					Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi facere earum quis ipsa vitae qui minima esse ducimus dolorum iste nisi laborum repellat dolores dolore debitis adipisci nemo quia autem pariatur a voluptatem dignissimos maiores accusantium nobis tempora consequatur cumque quas ea doloribus deleniti. Quibusdam commodi laboriosam error temporibus iste ipsa soluta distinctio maiores ad totam beatae incidunt veritatis enim? Reiciendis voluptate cupiditate asperiores ratione laboriosam alias mollitia eaque labore aperiam similique reprehenderit assumenda quidem eos explicabo rerum. Porro at ex magni aliquam laborum delectus voluptate officia modi nam et cupiditate culpa asperiores eaque fuga quae. Dolorum commodi labore neque fuga totam voluptate vitae ea laudantium iure quos placeat accusamus.
				  </div>
				  
				  <div class="entry-meta">
					<span class="autor-name">Mike Example</span>,
					<span class="time">03.11.2012</span>
					<span class="separator">|</span>
					<span class="meta">Posted in <a href="#">Sports</a>, <a href="#">Movies</a></span>
					<span class="comments-link pull-right">
					  <a href="#">3 comment(s)</a>
					</span>
				  </div>
				</div>
				
				<div class="post">
				  <h2 class="entry-title"><a href="/blog-view.html">Lorem ipsum dolor sit.</a></h2>
				  <div class="entry-content">
					Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi facere earum quis ipsa vitae qui minima esse ducimus dolorum iste nisi laborum repellat dolores dolore debitis adipisci nemo quia autem pariatur a voluptatem dignissimos maiores accusantium nobis tempora consequatur cumque quas ea doloribus deleniti. Quibusdam commodi laboriosam error temporibus iste ipsa soluta distinctio maiores ad totam beatae incidunt veritatis enim? Reiciendis voluptate cupiditate asperiores ratione laboriosam alias mollitia eaque labore aperiam similique reprehenderit assumenda quidem eos explicabo rerum. Porro at ex magni aliquam laborum delectus voluptate officia modi nam et cupiditate culpa asperiores eaque fuga quae. Dolorum commodi labore neque fuga totam voluptate vitae ea laudantium iure quos placeat accusamus.
				  </div>
				  
				  <div class="entry-meta">
					<span class="autor-name">Mike Example</span>,
					<span class="time">03.11.2012</span>
					<span class="separator">|</span>
					<span class="meta">Posted in <a href="#">Sports</a>, <a href="#">Movies</a></span>
					<span class="comments-link pull-right">
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
				  <a data-toggle="collapse" data-parent="#accordion2" href="#collapse21">
					Portfolio Pages
				  </a>
				</div>
			  </div>
			  <div id="collapse21" class="panel-collapse collapse in">
				<div class="panel-body">
				  <img src="/img/content/animations-100.png" class="alignright" width="100" height="62" alt="">
				  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores ipsa esse obcaecati repudiandae veniam amet modi recusandae optio earum sequi accusantium culpa vitae iste sit commodi eaque voluptatem officia quam.
				</div>
			  </div>
			</div>
			
			<div class="panel panel-default active">
			  <div class="panel-heading">
				<div class="panel-title">
				  <a data-toggle="collapse" data-parent="#accordion2" href="#collapse22">
					Gallery Pages
				  </a>
				</div>
			  </div>
			  <div id="collapse22" class="panel-collapse collapse in">
				<div class="panel-body">
				  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque natus quaerat voluptate? Asperiores hic dolore voluptate corporis obcaecati reiciendis sunt ipsam iste. Eligendi inventore voluptatibus quia saepe odit deserunt nam?
				</div>
			  </div>
			</div>
			
			<div class="panel panel-default">
			  <div class="panel-heading">
				<div class="panel-title">
				  <a data-toggle="collapse" data-parent="#accordion2" href="#collapse23">
					Styles Pages
				  </a>
				</div>
			  </div>
			  <div id="collapse23" class="panel-collapse collapse">
				<div class="panel-body">
				  <img src="/img/content/animations.png" class="alignleft" width="100" height="62" alt="">
				  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores ipsa esse obcaecati repudiandae veniam amet modi recusandae optio earum sequi accusantium culpa vitae iste sit commodi eaque voluptatem officia quam. Molestiae nobis quidem atque explicabo eum facilis libero porro in fugiat pariatur molestias maiores voluptates rerum ipsa architecto quae assumenda harum fuga modi accusantium nihil dolor consequatur totam commodi quam quas neque dolorem veritatis unde adipisci ad illo excepturi quia facere reprehenderit non alias cum minima labore quo repudiandae perferendis?
				</div>
			  </div>
			</div>
			
			<div class="panel panel-default">
			  <div class="panel-heading">
				<div class="panel-title">
				  <a data-toggle="collapse" data-parent="#accordion2" href="#collapse24">
					Shop Pages
				  </a>
				</div>
			  </div>
			  <div id="collapse24" class="panel-collapse collapse">
				<div class="panel-body">
				  <img src="/img/content/animations.png" class="alignleft" width="100" height="62" alt="">
				  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores ipsa esse obcaecati repudiandae veniam amet modi recusandae optio earum sequi accusantium culpa vitae iste sit commodi eaque voluptatem officia quam. Molestiae nobis quidem atque explicabo eum facilis libero porro in fugiat pariatur molestias maiores voluptates rerum ipsa architecto quae assumenda harum fuga modi accusantium nihil dolor consequatur totam commodi quam quas neque dolorem veritatis unde adipisci ad illo excepturi quia facere reprehenderit non alias cum minima labore quo repudiandae perferendis?
				</div>
			  </div>
			</div>
		  </div>
		</div>
	  </div>
	</div>
	  
	<div id="cm-video-bg" class="full-width-box bottom-padding">
	  <div class="fwb-bg fwb-video band-16">
		<video autoplay="" muted="" loop="">
		  <source src="video/video.mp4" type="video/mp4">
		  <source src="video/video.webm" type="video/webm">
		</video>
		<div class="overlay"></div>
	  </div>
	  
	  <div class="container">
		<div class="row">
		  <div class="white text-center col-sm-12 col-md-12">
			<div class="title-box text-center title-white">
			  <h1 class="title">Video Background</h1>
			</div>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque quisquam aperiam necessitatibus id consequuntur quidem praesentium laboriosam repellendus modi fugiat aliquam quam minus mollitia eveniet sapiente perferendis voluptatibus ad rem? Id nesciunt alias neque non illum facilis nobis cupiditate ullam corrupti nisi esse cum tempore tempora praesentium soluta autem vitae!</p>
			<a href="#" class="btn btn-default">Read more</a>
		  </div>
		</div>
	  </div>
	</div><!-- .full-width-box -->

	<div class="container">
	  <div class="carousel-box bottom-padding bottom-padding-mini load overflow">
		<div class="title-box no-margin">
		  <a class="next" href="#">
			<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="9px" height="16px" viewBox="0 0 9 16" enable-background="new 0 0 9 16" xml:space="preserve">
			  <polygon fill-rule="evenodd" clip-rule="evenodd" fill="#fcfcfc" points="1,0.001 0,1.001 7,8 0,14.999 1,15.999 9,8 "></polygon>
			</svg>
		  </a>
		  <a class="prev" href="#">
			<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="9px" height="16px" viewBox="0 0 9 16" enable-background="new 0 0 9 16" xml:space="preserve">
			  <polygon fill-rule="evenodd" clip-rule="evenodd" fill="#fcfcfc" points="8,15.999 9,14.999 2,8 9,1.001 8,0.001 0,8 "></polygon>
			</svg>
		  </a>
		  <h2 class="title">Best Sellers</h2>
		</div>
		
		<div class="clearfix"></div>
		
		<div class="row">
		  <div class="carousel products">
			<div class="col-sm-3 col-md-3 product rotation">
			  <div class="default">
				<a href="shop-product-view.html" class="product-image">
				  <img src="/img/content/product-11.png" alt="" title="" width="270" height="270">
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
				<a href="shop-product-view.html" class="product-image">
				  <img src="/img/content/product-11.png" alt="" title="" width="70" height="70">
				</a>
				<ul>
				  <li>117 cm / 46"LCD TV</li>
				  <li>Full HD 3D &amp; 2D</li>
				  <li>Sony Internet TV</li>
				  <li>Dynamic Edge LED</li>
				  <li>1X-Reality PRO</li>
				</ul>
				<div class="actions">
				  <a href="shop-product-view.html" class="add-cart">
					<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
					  <g>
						<path fill="#1e1e1e" d="M15.001,4h-0.57l-3.707-3.707c-0.391-0.391-1.023-0.391-1.414,0c-0.391,0.391-0.391,1.023,0,1.414L11.603,4
						  H4.43l2.293-2.293c0.391-0.391,0.391-1.023,0-1.414s-1.023-0.391-1.414,0L1.602,4H1C0.448,4,0,4.448,0,5s0.448,1,1,1
						  c0,2.69,0,7.23,0,8c0,1.104,0.896,2,2,2h10c1.104,0,2-0.896,2-2c0-0.77,0-5.31,0-8c0.553,0,1-0.448,1-1S15.554,4,15.001,4z
						  M13.001,14H3V6h10V14z"></path>
						<path fill="#1e1e1e" d="M11.001,13c0.553,0,1-0.447,1-1V8c0-0.553-0.447-1-1-1s-1,0.447-1,1v4C10.001,12.553,10.448,13,11.001,13z"></path>
						<path fill="#1e1e1e" d="M8,13c0.553,0,1-0.447,1-1V8c0-0.553-0.448-1-1-1S7,7.447,7,8v4C7,12.553,7.448,13,8,13z"></path>
						<path fill="#1e1e1e" d="M5,13c0.553,0,1-0.447,1-1V8c0-0.553-0.447-1-1-1S4,7.447,4,8v4C4,12.553,4.448,13,5,13z"></path>
					  </g>
					</svg>
				  </a>
				  <a href="#" class="add-wishlist">
					<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
					<path fill="#1e1e1e" d="M11.335,0C10.026,0,8.848,0.541,8,1.407C7.153,0.541,5.975,0,4.667,0C2.088,0,0,2.09,0,4.667C0,12,8,16,8,16
					  s8-4,8-11.333C16.001,2.09,13.913,0,11.335,0z M8,13.684C6.134,12.49,2,9.321,2,4.667C2,3.196,3.197,2,4.667,2C6,2,8,4,8,4
					  s2-2,3.334-2c1.47,0,2.666,1.196,2.666,2.667C14.001,9.321,9.867,12.49,8,13.684z"></path>
					</svg>
				  </a>
				  <a href="#" class="add-compare">
					<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
					  <path fill="#1e1e1e" d="M16,3.063L13,0v2H1C0.447,2,0,2.447,0,3s0.447,1,1,1h12v2L16,3.063z"></path>
					  <path fill="#1e1e1e" d="M16,13.063L13,10v2H1c-0.553,0-1,0.447-1,1s0.447,1,1,1h12v2L16,13.063z"></path>
					  <path fill="#1e1e1e" d="M15,7H3V5L0,7.938L3,11V9h12c0.553,0,1-0.447,1-1S15.553,7,15,7z"></path>
					</svg>
				  </a>
				</div><!-- .actions -->
			  </div><!-- .product-hover -->
			</div><!-- .product -->
			<div class="col-sm-3 col-md-3 product rotation">
			  <div class="default">
				<a href="shop-product-view.html" class="product-image">
				  <img src="/img/content/product-12.png" alt="" title="" width="270" height="270">
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
				<a href="shop-product-view.html" class="product-image">
				  <img src="/img/content/product-12.png" alt="" title="" width="70" height="70">
				</a>
				<ul>
				  <li>117 cm / 46"LCD TV</li>
				  <li>Full HD 3D &amp; 2D</li>
				  <li>Sony Internet TV</li>
				  <li>Dynamic Edge LED</li>
				  <li>1X-Reality PRO</li>
				</ul>
				<div class="actions">
				  <a href="shop-product-view.html" class="add-cart">
					<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
					  <g>
						<path fill="#1e1e1e" d="M15.001,4h-0.57l-3.707-3.707c-0.391-0.391-1.023-0.391-1.414,0c-0.391,0.391-0.391,1.023,0,1.414L11.603,4
						  H4.43l2.293-2.293c0.391-0.391,0.391-1.023,0-1.414s-1.023-0.391-1.414,0L1.602,4H1C0.448,4,0,4.448,0,5s0.448,1,1,1
						  c0,2.69,0,7.23,0,8c0,1.104,0.896,2,2,2h10c1.104,0,2-0.896,2-2c0-0.77,0-5.31,0-8c0.553,0,1-0.448,1-1S15.554,4,15.001,4z
						  M13.001,14H3V6h10V14z"></path>
						<path fill="#1e1e1e" d="M11.001,13c0.553,0,1-0.447,1-1V8c0-0.553-0.447-1-1-1s-1,0.447-1,1v4C10.001,12.553,10.448,13,11.001,13z"></path>
						<path fill="#1e1e1e" d="M8,13c0.553,0,1-0.447,1-1V8c0-0.553-0.448-1-1-1S7,7.447,7,8v4C7,12.553,7.448,13,8,13z"></path>
						<path fill="#1e1e1e" d="M5,13c0.553,0,1-0.447,1-1V8c0-0.553-0.447-1-1-1S4,7.447,4,8v4C4,12.553,4.448,13,5,13z"></path>
					  </g>
					</svg>
				  </a>
				  <a href="#" class="add-wishlist">
					<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
					<path fill="#1e1e1e" d="M11.335,0C10.026,0,8.848,0.541,8,1.407C7.153,0.541,5.975,0,4.667,0C2.088,0,0,2.09,0,4.667C0,12,8,16,8,16
					  s8-4,8-11.333C16.001,2.09,13.913,0,11.335,0z M8,13.684C6.134,12.49,2,9.321,2,4.667C2,3.196,3.197,2,4.667,2C6,2,8,4,8,4
					  s2-2,3.334-2c1.47,0,2.666,1.196,2.666,2.667C14.001,9.321,9.867,12.49,8,13.684z"></path>
					</svg>
				  </a>
				  <a href="#" class="add-compare">
					<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
					  <path fill="#1e1e1e" d="M16,3.063L13,0v2H1C0.447,2,0,2.447,0,3s0.447,1,1,1h12v2L16,3.063z"></path>
					  <path fill="#1e1e1e" d="M16,13.063L13,10v2H1c-0.553,0-1,0.447-1,1s0.447,1,1,1h12v2L16,13.063z"></path>
					  <path fill="#1e1e1e" d="M15,7H3V5L0,7.938L3,11V9h12c0.553,0,1-0.447,1-1S15.553,7,15,7z"></path>
					</svg>
				  </a>
				</div><!-- .actions -->
			  </div><!-- .product-hover -->
			</div><!-- .product -->
			<div class="col-sm-3 col-md-3 product rotation">
			  <div class="default">
				<a href="shop-product-view.html" class="product-image">
				  <img src="/img/content/product-13.png" alt="" title="" width="270" height="270">
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
				<a href="shop-product-view.html" class="product-image">
				  <img src="/img/content/product-13.png" alt="" title="" width="70" height="70">
				</a>
				<ul>
				  <li>117 cm / 46"LCD TV</li>
				  <li>Full HD 3D &amp; 2D</li>
				  <li>Sony Internet TV</li>
				  <li>Dynamic Edge LED</li>
				  <li>1X-Reality PRO</li>
				</ul>
				<div class="actions">
				  <a href="shop-product-view.html" class="add-cart">
					<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
					  <g>
						<path fill="#1e1e1e" d="M15.001,4h-0.57l-3.707-3.707c-0.391-0.391-1.023-0.391-1.414,0c-0.391,0.391-0.391,1.023,0,1.414L11.603,4
						  H4.43l2.293-2.293c0.391-0.391,0.391-1.023,0-1.414s-1.023-0.391-1.414,0L1.602,4H1C0.448,4,0,4.448,0,5s0.448,1,1,1
						  c0,2.69,0,7.23,0,8c0,1.104,0.896,2,2,2h10c1.104,0,2-0.896,2-2c0-0.77,0-5.31,0-8c0.553,0,1-0.448,1-1S15.554,4,15.001,4z
						  M13.001,14H3V6h10V14z"></path>
						<path fill="#1e1e1e" d="M11.001,13c0.553,0,1-0.447,1-1V8c0-0.553-0.447-1-1-1s-1,0.447-1,1v4C10.001,12.553,10.448,13,11.001,13z"></path>
						<path fill="#1e1e1e" d="M8,13c0.553,0,1-0.447,1-1V8c0-0.553-0.448-1-1-1S7,7.447,7,8v4C7,12.553,7.448,13,8,13z"></path>
						<path fill="#1e1e1e" d="M5,13c0.553,0,1-0.447,1-1V8c0-0.553-0.447-1-1-1S4,7.447,4,8v4C4,12.553,4.448,13,5,13z"></path>
					  </g>
					</svg>
				  </a>
				  <a href="#" class="add-wishlist">
					<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
					<path fill="#1e1e1e" d="M11.335,0C10.026,0,8.848,0.541,8,1.407C7.153,0.541,5.975,0,4.667,0C2.088,0,0,2.09,0,4.667C0,12,8,16,8,16
					  s8-4,8-11.333C16.001,2.09,13.913,0,11.335,0z M8,13.684C6.134,12.49,2,9.321,2,4.667C2,3.196,3.197,2,4.667,2C6,2,8,4,8,4
					  s2-2,3.334-2c1.47,0,2.666,1.196,2.666,2.667C14.001,9.321,9.867,12.49,8,13.684z"></path>
					</svg>
				  </a>
				  <a href="#" class="add-compare">
					<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
					  <path fill="#1e1e1e" d="M16,3.063L13,0v2H1C0.447,2,0,2.447,0,3s0.447,1,1,1h12v2L16,3.063z"></path>
					  <path fill="#1e1e1e" d="M16,13.063L13,10v2H1c-0.553,0-1,0.447-1,1s0.447,1,1,1h12v2L16,13.063z"></path>
					  <path fill="#1e1e1e" d="M15,7H3V5L0,7.938L3,11V9h12c0.553,0,1-0.447,1-1S15.553,7,15,7z"></path>
					</svg>
				  </a>
				</div><!-- .actions -->
			  </div><!-- .product-hover -->
			</div><!-- .product -->
			<div class="col-sm-3 col-md-3 product rotation">
			  <div class="default">
				<a href="shop-product-view.html" class="product-image">
				  <img src="/img/content/product-14.png" alt="" title="" width="270" height="270">
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
				<a href="shop-product-view.html" class="product-image">
				  <img src="/img/content/product-14.png" alt="" title="" width="70" height="70">
				</a>
				<ul>
				  <li>117 cm / 46"LCD TV</li>
				  <li>Full HD 3D &amp; 2D</li>
				  <li>Sony Internet TV</li>
				  <li>Dynamic Edge LED</li>
				  <li>1X-Reality PRO</li>
				</ul>
				<div class="actions">
				  <a href="shop-product-view.html" class="add-cart">
					<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
					  <g>
						<path fill="#1e1e1e" d="M15.001,4h-0.57l-3.707-3.707c-0.391-0.391-1.023-0.391-1.414,0c-0.391,0.391-0.391,1.023,0,1.414L11.603,4
						  H4.43l2.293-2.293c0.391-0.391,0.391-1.023,0-1.414s-1.023-0.391-1.414,0L1.602,4H1C0.448,4,0,4.448,0,5s0.448,1,1,1
						  c0,2.69,0,7.23,0,8c0,1.104,0.896,2,2,2h10c1.104,0,2-0.896,2-2c0-0.77,0-5.31,0-8c0.553,0,1-0.448,1-1S15.554,4,15.001,4z
						  M13.001,14H3V6h10V14z"></path>
						<path fill="#1e1e1e" d="M11.001,13c0.553,0,1-0.447,1-1V8c0-0.553-0.447-1-1-1s-1,0.447-1,1v4C10.001,12.553,10.448,13,11.001,13z"></path>
						<path fill="#1e1e1e" d="M8,13c0.553,0,1-0.447,1-1V8c0-0.553-0.448-1-1-1S7,7.447,7,8v4C7,12.553,7.448,13,8,13z"></path>
						<path fill="#1e1e1e" d="M5,13c0.553,0,1-0.447,1-1V8c0-0.553-0.447-1-1-1S4,7.447,4,8v4C4,12.553,4.448,13,5,13z"></path>
					  </g>
					</svg>
				  </a>
				  <a href="#" class="add-wishlist">
					<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
					<path fill="#1e1e1e" d="M11.335,0C10.026,0,8.848,0.541,8,1.407C7.153,0.541,5.975,0,4.667,0C2.088,0,0,2.09,0,4.667C0,12,8,16,8,16
					  s8-4,8-11.333C16.001,2.09,13.913,0,11.335,0z M8,13.684C6.134,12.49,2,9.321,2,4.667C2,3.196,3.197,2,4.667,2C6,2,8,4,8,4
					  s2-2,3.334-2c1.47,0,2.666,1.196,2.666,2.667C14.001,9.321,9.867,12.49,8,13.684z"></path>
					</svg>
				  </a>
				  <a href="#" class="add-compare">
					<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
					  <path fill="#1e1e1e" d="M16,3.063L13,0v2H1C0.447,2,0,2.447,0,3s0.447,1,1,1h12v2L16,3.063z"></path>
					  <path fill="#1e1e1e" d="M16,13.063L13,10v2H1c-0.553,0-1,0.447-1,1s0.447,1,1,1h12v2L16,13.063z"></path>
					  <path fill="#1e1e1e" d="M15,7H3V5L0,7.938L3,11V9h12c0.553,0,1-0.447,1-1S15.553,7,15,7z"></path>
					</svg>
				  </a>
				</div><!-- .actions -->
			  </div><!-- .product-hover -->
			</div><!-- .product -->
			<div class="col-sm-3 col-md-3 product rotation">
			  <div class="default">
				<a href="shop-product-view.html" class="product-image">
				  <img src="/img/content/product-5.png" alt="" title="" width="270" height="270">
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
				<a href="shop-product-view.html" class="product-image">
				  <img src="/img/content/product-5.png" alt="" title="" width="70" height="70">
				</a>
				<ul>
				  <li>117 cm / 46"LCD TV</li>
				  <li>Full HD 3D &amp; 2D</li>
				  <li>Sony Internet TV</li>
				  <li>Dynamic Edge LED</li>
				  <li>1X-Reality PRO</li>
				</ul>
				<div class="actions">
				  <a href="shop-product-view.html" class="add-cart">
					<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
					  <g>
						<path fill="#1e1e1e" d="M15.001,4h-0.57l-3.707-3.707c-0.391-0.391-1.023-0.391-1.414,0c-0.391,0.391-0.391,1.023,0,1.414L11.603,4
						  H4.43l2.293-2.293c0.391-0.391,0.391-1.023,0-1.414s-1.023-0.391-1.414,0L1.602,4H1C0.448,4,0,4.448,0,5s0.448,1,1,1
						  c0,2.69,0,7.23,0,8c0,1.104,0.896,2,2,2h10c1.104,0,2-0.896,2-2c0-0.77,0-5.31,0-8c0.553,0,1-0.448,1-1S15.554,4,15.001,4z
						  M13.001,14H3V6h10V14z"></path>
						<path fill="#1e1e1e" d="M11.001,13c0.553,0,1-0.447,1-1V8c0-0.553-0.447-1-1-1s-1,0.447-1,1v4C10.001,12.553,10.448,13,11.001,13z"></path>
						<path fill="#1e1e1e" d="M8,13c0.553,0,1-0.447,1-1V8c0-0.553-0.448-1-1-1S7,7.447,7,8v4C7,12.553,7.448,13,8,13z"></path>
						<path fill="#1e1e1e" d="M5,13c0.553,0,1-0.447,1-1V8c0-0.553-0.447-1-1-1S4,7.447,4,8v4C4,12.553,4.448,13,5,13z"></path>
					  </g>
					</svg>
				  </a>
				  <a href="#" class="add-wishlist">
					<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
					<path fill="#1e1e1e" d="M11.335,0C10.026,0,8.848,0.541,8,1.407C7.153,0.541,5.975,0,4.667,0C2.088,0,0,2.09,0,4.667C0,12,8,16,8,16
					  s8-4,8-11.333C16.001,2.09,13.913,0,11.335,0z M8,13.684C6.134,12.49,2,9.321,2,4.667C2,3.196,3.197,2,4.667,2C6,2,8,4,8,4
					  s2-2,3.334-2c1.47,0,2.666,1.196,2.666,2.667C14.001,9.321,9.867,12.49,8,13.684z"></path>
					</svg>
				  </a>
				  <a href="#" class="add-compare">
					<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
					  <path fill="#1e1e1e" d="M16,3.063L13,0v2H1C0.447,2,0,2.447,0,3s0.447,1,1,1h12v2L16,3.063z"></path>
					  <path fill="#1e1e1e" d="M16,13.063L13,10v2H1c-0.553,0-1,0.447-1,1s0.447,1,1,1h12v2L16,13.063z"></path>
					  <path fill="#1e1e1e" d="M15,7H3V5L0,7.938L3,11V9h12c0.553,0,1-0.447,1-1S15.553,7,15,7z"></path>
					</svg>
				  </a>
				</div><!-- .actions -->
			  </div><!-- .product-hover -->
			</div><!-- .product -->
			<div class="col-sm-3 col-md-3 product rotation">
			  <div class="default">
				<a href="shop-product-view.html" class="product-image">
				  <img src="/img/content/product-6.png" alt="" title="" width="270" height="270">
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
				<a href="shop-product-view.html" class="product-image">
				  <img src="/img/content/product-6.png" alt="" title="" width="70" height="70">
				</a>
				<ul>
				  <li>117 cm / 46"LCD TV</li>
				  <li>Full HD 3D &amp; 2D</li>
				  <li>Sony Internet TV</li>
				  <li>Dynamic Edge LED</li>
				  <li>1X-Reality PRO</li>
				</ul>
				<div class="actions">
				  <a href="shop-product-view.html" class="add-cart">
					<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
					  <g>
						<path fill="#1e1e1e" d="M15.001,4h-0.57l-3.707-3.707c-0.391-0.391-1.023-0.391-1.414,0c-0.391,0.391-0.391,1.023,0,1.414L11.603,4
						  H4.43l2.293-2.293c0.391-0.391,0.391-1.023,0-1.414s-1.023-0.391-1.414,0L1.602,4H1C0.448,4,0,4.448,0,5s0.448,1,1,1
						  c0,2.69,0,7.23,0,8c0,1.104,0.896,2,2,2h10c1.104,0,2-0.896,2-2c0-0.77,0-5.31,0-8c0.553,0,1-0.448,1-1S15.554,4,15.001,4z
						  M13.001,14H3V6h10V14z"></path>
						<path fill="#1e1e1e" d="M11.001,13c0.553,0,1-0.447,1-1V8c0-0.553-0.447-1-1-1s-1,0.447-1,1v4C10.001,12.553,10.448,13,11.001,13z"></path>
						<path fill="#1e1e1e" d="M8,13c0.553,0,1-0.447,1-1V8c0-0.553-0.448-1-1-1S7,7.447,7,8v4C7,12.553,7.448,13,8,13z"></path>
						<path fill="#1e1e1e" d="M5,13c0.553,0,1-0.447,1-1V8c0-0.553-0.447-1-1-1S4,7.447,4,8v4C4,12.553,4.448,13,5,13z"></path>
					  </g>
					</svg>
				  </a>
				  <a href="#" class="add-wishlist">
					<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
					<path fill="#1e1e1e" d="M11.335,0C10.026,0,8.848,0.541,8,1.407C7.153,0.541,5.975,0,4.667,0C2.088,0,0,2.09,0,4.667C0,12,8,16,8,16
					  s8-4,8-11.333C16.001,2.09,13.913,0,11.335,0z M8,13.684C6.134,12.49,2,9.321,2,4.667C2,3.196,3.197,2,4.667,2C6,2,8,4,8,4
					  s2-2,3.334-2c1.47,0,2.666,1.196,2.666,2.667C14.001,9.321,9.867,12.49,8,13.684z"></path>
					</svg>
				  </a>
				  <a href="#" class="add-compare">
					<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
					  <path fill="#1e1e1e" d="M16,3.063L13,0v2H1C0.447,2,0,2.447,0,3s0.447,1,1,1h12v2L16,3.063z"></path>
					  <path fill="#1e1e1e" d="M16,13.063L13,10v2H1c-0.553,0-1,0.447-1,1s0.447,1,1,1h12v2L16,13.063z"></path>
					  <path fill="#1e1e1e" d="M15,7H3V5L0,7.938L3,11V9h12c0.553,0,1-0.447,1-1S15.553,7,15,7z"></path>
					</svg>
				  </a>
				</div><!-- .actions -->
			  </div><!-- .product-hover -->
			</div><!-- .product -->
			<div class="col-sm-3 col-md-3 product rotation">
			  <div class="default">
				<a href="shop-product-view.html" class="product-image">
				  <img src="/img/content/product-7.png" alt="" title="" width="270" height="270">
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
				<a href="shop-product-view.html" class="product-image">
				  <img src="/img/content/product-7.png" alt="" title="" width="70" height="70">
				</a>
				<ul>
				  <li>117 cm / 46"LCD TV</li>
				  <li>Full HD 3D &amp; 2D</li>
				  <li>Sony Internet TV</li>
				  <li>Dynamic Edge LED</li>
				  <li>1X-Reality PRO</li>
				</ul>
				<div class="actions">
				  <a href="shop-product-view.html" class="add-cart">
					<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
					  <g>
						<path fill="#1e1e1e" d="M15.001,4h-0.57l-3.707-3.707c-0.391-0.391-1.023-0.391-1.414,0c-0.391,0.391-0.391,1.023,0,1.414L11.603,4
						  H4.43l2.293-2.293c0.391-0.391,0.391-1.023,0-1.414s-1.023-0.391-1.414,0L1.602,4H1C0.448,4,0,4.448,0,5s0.448,1,1,1
						  c0,2.69,0,7.23,0,8c0,1.104,0.896,2,2,2h10c1.104,0,2-0.896,2-2c0-0.77,0-5.31,0-8c0.553,0,1-0.448,1-1S15.554,4,15.001,4z
						  M13.001,14H3V6h10V14z"></path>
						<path fill="#1e1e1e" d="M11.001,13c0.553,0,1-0.447,1-1V8c0-0.553-0.447-1-1-1s-1,0.447-1,1v4C10.001,12.553,10.448,13,11.001,13z"></path>
						<path fill="#1e1e1e" d="M8,13c0.553,0,1-0.447,1-1V8c0-0.553-0.448-1-1-1S7,7.447,7,8v4C7,12.553,7.448,13,8,13z"></path>
						<path fill="#1e1e1e" d="M5,13c0.553,0,1-0.447,1-1V8c0-0.553-0.447-1-1-1S4,7.447,4,8v4C4,12.553,4.448,13,5,13z"></path>
					  </g>
					</svg>
				  </a>
				  <a href="#" class="add-wishlist">
					<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
					<path fill="#1e1e1e" d="M11.335,0C10.026,0,8.848,0.541,8,1.407C7.153,0.541,5.975,0,4.667,0C2.088,0,0,2.09,0,4.667C0,12,8,16,8,16
					  s8-4,8-11.333C16.001,2.09,13.913,0,11.335,0z M8,13.684C6.134,12.49,2,9.321,2,4.667C2,3.196,3.197,2,4.667,2C6,2,8,4,8,4
					  s2-2,3.334-2c1.47,0,2.666,1.196,2.666,2.667C14.001,9.321,9.867,12.49,8,13.684z"></path>
					</svg>
				  </a>
				  <a href="#" class="add-compare">
					<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
					  <path fill="#1e1e1e" d="M16,3.063L13,0v2H1C0.447,2,0,2.447,0,3s0.447,1,1,1h12v2L16,3.063z"></path>
					  <path fill="#1e1e1e" d="M16,13.063L13,10v2H1c-0.553,0-1,0.447-1,1s0.447,1,1,1h12v2L16,13.063z"></path>
					  <path fill="#1e1e1e" d="M15,7H3V5L0,7.938L3,11V9h12c0.553,0,1-0.447,1-1S15.553,7,15,7z"></path>
					</svg>
				  </a>
				</div><!-- .actions -->
			  </div><!-- .product-hover -->
			</div><!-- .product -->
			<div class="col-sm-3 col-md-3 product rotation">
			  <div class="default">
				<a href="shop-product-view.html" class="product-image">
				  <img src="/img/content/product-8.png" alt="" title="" width="270" height="270">
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
				<a href="shop-product-view.html" class="product-image">
				  <img src="/img/content/product-8.png" alt="" title="" width="70" height="70">
				</a>
				<ul>
				  <li>117 cm / 46"LCD TV</li>
				  <li>Full HD 3D &amp; 2D</li>
				  <li>Sony Internet TV</li>
				  <li>Dynamic Edge LED</li>
				  <li>1X-Reality PRO</li>
				</ul>
				<div class="actions">
				  <a href="shop-product-view.html" class="add-cart">
					<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
					  <g>
						<path fill="#1e1e1e" d="M15.001,4h-0.57l-3.707-3.707c-0.391-0.391-1.023-0.391-1.414,0c-0.391,0.391-0.391,1.023,0,1.414L11.603,4
						  H4.43l2.293-2.293c0.391-0.391,0.391-1.023,0-1.414s-1.023-0.391-1.414,0L1.602,4H1C0.448,4,0,4.448,0,5s0.448,1,1,1
						  c0,2.69,0,7.23,0,8c0,1.104,0.896,2,2,2h10c1.104,0,2-0.896,2-2c0-0.77,0-5.31,0-8c0.553,0,1-0.448,1-1S15.554,4,15.001,4z
						  M13.001,14H3V6h10V14z"></path>
						<path fill="#1e1e1e" d="M11.001,13c0.553,0,1-0.447,1-1V8c0-0.553-0.447-1-1-1s-1,0.447-1,1v4C10.001,12.553,10.448,13,11.001,13z"></path>
						<path fill="#1e1e1e" d="M8,13c0.553,0,1-0.447,1-1V8c0-0.553-0.448-1-1-1S7,7.447,7,8v4C7,12.553,7.448,13,8,13z"></path>
						<path fill="#1e1e1e" d="M5,13c0.553,0,1-0.447,1-1V8c0-0.553-0.447-1-1-1S4,7.447,4,8v4C4,12.553,4.448,13,5,13z"></path>
					  </g>
					</svg>
				  </a>
				  <a href="#" class="add-wishlist">
					<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
					<path fill="#1e1e1e" d="M11.335,0C10.026,0,8.848,0.541,8,1.407C7.153,0.541,5.975,0,4.667,0C2.088,0,0,2.09,0,4.667C0,12,8,16,8,16
					  s8-4,8-11.333C16.001,2.09,13.913,0,11.335,0z M8,13.684C6.134,12.49,2,9.321,2,4.667C2,3.196,3.197,2,4.667,2C6,2,8,4,8,4
					  s2-2,3.334-2c1.47,0,2.666,1.196,2.666,2.667C14.001,9.321,9.867,12.49,8,13.684z"></path>
					</svg>
				  </a>
				  <a href="#" class="add-compare">
					<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
					  <path fill="#1e1e1e" d="M16,3.063L13,0v2H1C0.447,2,0,2.447,0,3s0.447,1,1,1h12v2L16,3.063z"></path>
					  <path fill="#1e1e1e" d="M16,13.063L13,10v2H1c-0.553,0-1,0.447-1,1s0.447,1,1,1h12v2L16,13.063z"></path>
					  <path fill="#1e1e1e" d="M15,7H3V5L0,7.938L3,11V9h12c0.553,0,1-0.447,1-1S15.553,7,15,7z"></path>
					</svg>
				  </a>
				</div><!-- .actions -->
			  </div><!-- .product-hover -->
			</div><!-- .product -->
		  </div>
		</div>
	  </div><!-- .carousel-box -->
	  
	  <div class="content-block frame text-center bottom-padding">
		<p class="lead">Welcome to our site. There are many variations alteration in some form, by injected humour, or randomised words which don't look even slightly believable. Donec pharetra, lectus nec dignissim pharetra quis libero. </p>
		<button class="btn btn-default" data-appear-animation="bounceIn">Read More</button>
		<button class="btn btn-default" data-appear-animation="bounceIn">Join Now</button>
	  </div><!-- .content-block -->
	</div>
	  
	<div class="full-width-box bottom-padding cm-padding-bottom-36">
	  <div class="fwb-bg fwb-fixed band-5"><div class="overlay"></div></div>
	  
	  <div class="container">
		<div class="title-box title-white">
		  <h1 class="title no-top-padding">Meet the Team</h1>
		</div>
		
		<div class="row text-center">
		  <div class="col-sm-3 col-md-3 rotation employee">
			<div class="default">
			  <div class="image">
				<img src="/img/content/team-1.jpg" alt="" title="" width="270" height="270">
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
				<img src="/img/content/team-1.jpg" alt="" title="" width="270" height="270">
			  </div>
			  <div>
				<p>Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet.</p>
				<div class="contact"><b>Email: </b>mett@itembridge.com</div>
				<div class="contact"><b>Phone: </b>11 555 333 77</div>
			  </div>
			  <div class="social">
				<div class="item"><a class="sbtnf sbtnf-rounded color color-hover icon-facebook" href="#"></a></div>
				<div class="item"><a class="sbtnf sbtnf-rounded color color-hover icon-twitter" href="#"></a></div>
				<div class="item"><a class="sbtnf sbtnf-rounded color color-hover icon-gplus" href="#"></a></div>
				<div class="item"><a class="sbtnf sbtnf-rounded color color-hover icon-linkedin" href="#"></a></div>
			  </div>
			</div><!-- .employee-hover -->
		  </div><!-- .employee 
		  
		  --><div class="col-sm-3 col-md-3 rotation employee">
			<div class="default">
			  <div class="image">
				<img src="/img/content/team-2.jpg" alt="" title="" width="270" height="270">
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
				<img src="/img/content/team-2.jpg" alt="" title="" width="270" height="270">
			  </div>
			  <div>
				<p>Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet.</p>
				<div class="contact"><b>Email: </b>mett@itembridge.com</div>
				<div class="contact"><b>Phone: </b>11 555 333 77</div>
			  </div>
			  <div class="social">
				<div class="item"><a class="sbtnf sbtnf-rounded color color-hover icon-facebook" href="#"></a></div>
				<div class="item"><a class="sbtnf sbtnf-rounded color color-hover icon-twitter" href="#"></a></div>
				<div class="item"><a class="sbtnf sbtnf-rounded color color-hover icon-gplus" href="#"></a></div>
				<div class="item"><a class="sbtnf sbtnf-rounded color color-hover icon-linkedin" href="#"></a></div>
			  </div>
			</div><!-- .employee-hover -->
		  </div><!-- .employee
		  
		  --><div class="col-sm-3 col-md-3 rotation employee">
			<div class="default">
			  <div class="image">
				<img src="/img/content/team-3.jpg" alt="" title="" width="270" height="270">
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
				<img src="/img/content/team-3.jpg" alt="" title="" width="270" height="270">
			  </div>
			  <div>
				<p>Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet.</p>
				<div class="contact"><b>Email: </b>mett@itembridge.com</div>
				<div class="contact"><b>Phone: </b>11 555 333 77</div>
			  </div>
			  <div class="social">
				<div class="item"><a class="sbtnf sbtnf-rounded color color-hover icon-facebook" href="#"></a></div>
				<div class="item"><a class="sbtnf sbtnf-rounded color color-hover icon-twitter" href="#"></a></div>
				<div class="item"><a class="sbtnf sbtnf-rounded color color-hover icon-gplus" href="#"></a></div>
				<div class="item"><a class="sbtnf sbtnf-rounded color color-hover icon-linkedin" href="#"></a></div>
			  </div>
			</div><!-- .employee-hover -->
		  </div><!-- .employee
		  
		  --><div class="col-sm-3 col-md-3 rotation employee">
			<div class="default">
			  <div class="image">
				<img src="/img/content/team-4.jpg" alt="" title="" width="270" height="270">
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
				<img src="/img/content/team-4.jpg" alt="" title="" width="270" height="270">
			  </div>
			  <div>
				<p>Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet.</p>
				<div class="contact"><b>Email: </b>mett@itembridge.com</div>
				<div class="contact"><b>Phone: </b>11 555 333 77</div>
			  </div>
			  <div class="social">
				<div class="item"><a class="sbtnf sbtnf-rounded color color-hover icon-facebook" href="#"></a></div>
				<div class="item"><a class="sbtnf sbtnf-rounded color color-hover icon-twitter" href="#"></a></div>
				<div class="item"><a class="sbtnf sbtnf-rounded color color-hover icon-gplus" href="#"></a></div>
				<div class="item"><a class="sbtnf sbtnf-rounded color color-hover icon-linkedin" href="#"></a></div>
			  </div>
			</div><!-- .employee-hover -->
		  </div><!-- .employee -->
		</div>
	  </div>
	</div><!-- .full-width-box -->
	
	<div class="container">
	  <div class="row">
		<div class="col-sm-12 col-md-6 promo-partners bottom-padding">
		  <div class="title-box">
			<h2 class="title">Our partners</h2>
		  </div>
		  <div class="row manufactures manufactures-list">
			<div class="make-wrapper">
			  <a href="#" class="make">
				<img src="/img/content/make-2.png" width="128" height="128" alt="">
			  </a>
			</div><!--
				
			--><div class="make-wrapper">
			  <a href="#" class="make">
				<img src="/img/content/make-3.png" width="128" height="128" alt="">
			  </a>
			</div><!--
				
			--><div class="make-wrapper">
			  <a href="#" class="make">
				<img src="/img/content/make-4.png" width="128" height="128" alt="">
			  </a>
			</div>
		  </div>
		  <p>Duis bibendum pulvinar laoreet. Ut eu arcu sit amet elit placerat pharetra sit amet a tortor. Fusce vestibulum auctor rhoncus. Nullam rhoncus, tellus a congue elementum, leo ipsum tincidunt justo, ut condimentum velit eros et lectus. Phasellus ultrices rhoncus vehicula.</p>
		  <p>Integer ultricies semper massa non condimentum. Phasellus eu ipsum justo. Nullam non pulvinar purus. Ut ante ipsum, venenatis at tristique quis, congue vitae felis. Aliquam cursus diam in massa dapibus auctor. In volutpat, risus non egestas luctus, justo tellus laoreet justo. </p>
		</div><!-- .promo-partners -->
		
		<div class="col-sm-12 col-md-6">
		  <div class="title-box">
			<a href="#" class="btn btn-default">All posts <span class="glyphicon glyphicon-arrow-right"></span></a>
			<h2 class="title">Latest Posts</h2>
		  </div>
		  <ul class="latest-posts">
			<li>
			  <img class="image img-circle" src="/img/content/product-1-84.png" alt="" title="" width="84" height="84" data-appear-animation="rotateIn">
			  <div class="meta">
				<span>Mike Example</span>, 
				<span class="time">03.11.2013, 10:45:</span>
			  </div>
			  <div class="description">
				<a href="#">
				  Suspendisse at placerat turpis. Duis luctus erat vel magna pharetra aliquet. Maecenas tincidunt feugiat ultricies. Phasellus et dui risus. 
				</a>
			  </div>
			</li>
			<li>
			  <img class="image img-circle" src="/img/content/product-2-84.png" alt="" title="" width="84" height="84" data-appear-animation="rotateIn">
			  <div class="meta">
				<span>Mike Example</span>, 
				<span class="time">03.11.2013, 10:45:</span>
			  </div>
			  <div class="description">
				<a href="#">
				  Maecenas porttitor orci vitae turpis interdum sit amet dignissim dolor consequat. Aenean id erat lorem. 
				</a>
			  </div>
			</li>
			<li>
			  <img class="image img-circle" src="/img/content/product-3-84.png" alt="" title="" width="84" height="84" data-appear-animation="rotateIn">
			  <div class="meta">
				<span>Mike Example</span>, 
				<span class="time">03.11.2013, 10:45:</span>
			  </div>
			  <div class="description">
				<a href="#">
				  Mauris vehicula fringilla nisl porttitor sollicitudin. Suspendisse facilisis metus id neque fermentum eget rutrum orci pulvinar.
				</a>
			  </div>
			</li>
		  </ul>
		</div>
	  </div>
	</div>
  </article>
</section><!-- #main -->

</div><!-- .page-box-content -->
</div><!-- .page-box -->

<footer id="footer">
  <div class="footer-top">
    <div class="container">
      <div class="row sidebar">
		<aside class="col-xs-12 col-sm-6 col-md-3 widget social">
		  <div class="title-block">
			<h3 class="title">Follow Us</h3>
		  </div>
          <p>Follow us in social media</p>
          <a class="sbtnf sbtnf-rounded color color-hover icon-facebook" href="#"></a>
          <a class="sbtnf sbtnf-rounded color color-hover icon-twitter" href="#"></a>
          <a class="sbtnf sbtnf-rounded color color-hover icon-gplus" href="#"></a>
          <a class="sbtnf sbtnf-rounded color color-hover icon-linkedin" href="#"></a>
		  <div class="clearfix"></div>
        </aside>

		<aside class="col-xs-12 col-sm-6 col-md-3 widget newsletter">
		  <div class="title-block">
			<h3 class="title">Newsletter Signup</h3>
		  </div>
		  <div>
			<p>Sign up for newsletter</p>
			<div class="clearfix"></div>
			<form>
			  <input class="form-control" type="email">
			  <button class="submit"><span class="glyphicon glyphicon-arrow-right"></span></button>
			</form>
		  </div>
		</aside><!-- .newsletter -->
		
		<aside class="col-xs-12 col-sm-6 col-md-3 widget links">
		  <div class="title-block">
			<h3 class="title">Information</h3>
		  </div>
		  <nav>
			<ul>
			  <li><a href="#">About us</a></li>
			  <li><a href="#">Privacy Policy</a></li>
			  <li><a href="#">Terms &amp; Condotions</a></li>
			  <li><a href="#">Secure payment</a></li>
			</ul>
		  </nav>
        </aside>
		
		<aside class="col-xs-12 col-sm-6 col-md-3 widget links">
		  <div class="title-block">
			<h3 class="title">My account</h3>
		  </div>
		  <nav>
			<ul>
			  <li><a href="#">My account</a></li>
			  <li><a href="#">Order History</a></li>
			  <li><a href="#">Wish List</a></li>
			  <li><a href="#">Newsletter</a></li>
			</ul>
		  </nav>
        </aside>
      </div>
    </div>
  </div><!-- .footer-top -->
  <div class="footer-bottom">
    <div class="container">
      <div class="row">
        <div class="copyright col-xs-12 col-sm-3 col-md-3">
		  Copyright © ItemBridge Inc., 2013
		</div>
		
        <div class="phone col-xs-6 col-sm-3 col-md-3">
          <div class="footer-icon">
			<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
			  <path fill="#c6c6c6" d="M11.001,0H5C3.896,0,3,0.896,3,2c0,0.273,0,11.727,0,12c0,1.104,0.896,2,2,2h6c1.104,0,2-0.896,2-2
			   c0-0.273,0-11.727,0-12C13.001,0.896,12.105,0,11.001,0z M8,15c-0.552,0-1-0.447-1-1s0.448-1,1-1s1,0.447,1,1S8.553,15,8,15z
				M11.001,12H5V2h6V12z"></path>
			</svg>
		  </div>
          <strong class="title">Call Us:</strong> +1 (877) 123-45-67 <br>
          <strong>or</strong> +1 (777) 123-45-67
        </div>
		
        <div class="address col-xs-6 col-sm-3 col-md-3">
          <div class="footer-icon">
			<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
			  <g>
				<g>
				  <path fill="#c6c6c6" d="M8,16c-0.256,0-0.512-0.098-0.707-0.293C7.077,15.491,2,10.364,2,6c0-3.309,2.691-6,6-6
					c3.309,0,6,2.691,6,6c0,4.364-5.077,9.491-5.293,9.707C8.512,15.902,8.256,16,8,16z M8,2C5.795,2,4,3.794,4,6
					c0,2.496,2.459,5.799,4,7.536c1.541-1.737,4-5.04,4-7.536C12.001,3.794,10.206,2,8,2z"></path>
				</g>
				<g>
				  <circle fill="#c6c6c6" cx="8.001" cy="6" r="2"></circle>
				</g>
			  </g>
			</svg>
		  </div>
          49 Archdale, 2B Charleston 5655, Excel Tower<br> OPG Rpad, 4538FH
        </div>
		
        <div class="col-xs-12 col-sm-3 col-md-3">
          <a href="#" class="up">
			<span class="glyphicon glyphicon-arrow-up"></span>
		  </a>
        </div>
      </div>
    </div>
  </div><!-- .footer-bottom -->
</footer>
<div class="clearfix"></div>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="<c:url value="/"/>js/bootstrap.min.js"></script>
<script src="<c:url value="/"/>js/price-regulator/jshashtable-2.1_src.js"></script>
<script src="<c:url value="/"/>js/price-regulator/jquery.numberformatter-1.2.3.js"></script>
<script src="<c:url value="/"/>js/price-regulator/tmpl.js"></script>
<script src="<c:url value="/"/>js/price-regulator/jquery.dependClass-0.1.js"></script>
<script src="<c:url value="/"/>js/price-regulator/draggable-0.1.js"></script>
<script src="<c:url value="/"/>js/price-regulator/jquery.slider.js"></script>
<script src="<c:url value="/"/>js/jquery.carouFredSel-6.2.1-packed.js"></script>
<script src="<c:url value="/"/>js/jquery.touchSwipe.min.js"></script>
<script src="<c:url value="/"/>js/jquery.elevateZoom-3.0.8.min.js"></script>
<script src="<c:url value="/"/>js/jquery.imagesloaded.min.js"></script>
<script src="<c:url value="/"/>js/jquery.appear.js"></script>
<script src="<c:url value="/"/>js/jquery.sparkline.min.js"></script>
<script src="<c:url value="/"/>js/jquery.easypiechart.min.js"></script>
<script src="<c:url value="/"/>js/jquery.easing.1.3.js"></script>
<script src="<c:url value="/"/>js/jquery.fancybox.pack.js"></script>
<script src="<c:url value="/"/>js/isotope.pkgd.min.js"></script>
<script src="<c:url value="/"/>js/jquery.knob.js"></script>
<script src="<c:url value="/"/>js/jquery.stellar.min.js"></script>
<script src="<c:url value="/"/>js/jquery.selectBox.min.js"></script>
<script src="<c:url value="/"/>js/jquery.royalslider.min.js"></script>
<script src="<c:url value="/"/>js/jquery.tubular.1.0.js"></script>
<script src="<c:url value="/"/>js/SmoothScroll.js"></script>
<script src="<c:url value="/"/>js/country.js"></script>
<script src="<c:url value="/"/>js/spin.min.js"></script>
<script src="<c:url value="/"/>js/ladda.min.js"></script>
<script src="<c:url value="/"/>js/masonry.pkgd.min.js"></script>
<script src="<c:url value="/"/>js/morris.min.js"></script>
<script src="<c:url value="/"/>js/raphael.min.js"></script>
<script src="<c:url value="/"/>js/video.js"></script>
<script src="<c:url value="/"/>js/pixastic.custom.js"></script>
<script src="<c:url value="/"/>js/livicons-1.3.min.js"></script>
<script src="<c:url value="/"/>js/layerslider/greensock.js"></script>
<script src="<c:url value="/"/>js/layerslider/layerslider.transitions.js"></script>
<script src="<c:url value="/"/>js/layerslider/layerslider.kreaturamedia.jquery.js"></script>
<script src="<c:url value="/"/>js/revolution/jquery.themepunch.plugins.min.js"></script>
<script src="<c:url value="/"/>js/revolution/jquery.themepunch.revolution.min.js"></script>
<script src="<c:url value="/"/>js/bootstrapValidator.min.js"></script>
<script src="<c:url value="/"/>js/bootstrap-datepicker.js"></script>
<script src="<c:url value="/"/>js/main.js"></script>

</body>
</html>