<!DOCTYPE html>
<html lang="en" ng-app="hoqii-site">
	<head>
		<meta charset="utf-8">
		<title>${(site.description!(site.name!""))}</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author" content="">
		<!-- styles -->
		<link rel="stylesheet/less" type="text/css" href="<@s.url value="${templatePath}" />/themes/less/bootstrap.less">
		<script src="<@s.url value="${templatePath}" />/themes/js/less/less.js" type="text/javascript"></script>

		<link rel="stylesheet" type="text/css" href="<@s.url value="${templatePath}" />/themes/font-awesome/css/font-awesome.min.css">

		<!-- favicon-icons -->
		<link rel="shortcut icon" href="<@s.url value="${templatePath}" />/themes/images/favicon.ico">
	</head>
	<body>
		<header class="header" ng-controller="hoqii-category">
			<div class="container">
				<div class="row">
					<div class="offset6 span6 right-align loginArea">
						<a href="<@s.url value="/site/${site.name!''}" />" role="button" data-toggle="modal"><span class="btn btn-mini">Beranda</span></a> 
						<a href="<@s.url value="/site/${site.name!''}" />/news"><span class="btn btn-mini btn-success">Berita</span></a> 
					</div>
				</div>
				<div class="navbar">
					<div class="navbar-inner">
						<a class="brand" href="<@s.url value="/site/${site.name!''}" />">
							<h2>${site.name} <small>${site.description!}</small></h2>
						</a>
						<div class="nav-collapse">
							<ul id="topMenu" class="nav pull-right">
								 <li class="">
									 <form class="form-inline navbar-search" method="GET" action="<@s.url value="${request.servletPath}" />" style="padding-top:5px;">
										<select name="c" class="span3" style="padding:11px 4px; height:auto">
											<option value="">All</option>
											<option value="{{c.name}}" ng-repeat="c in categories">{{c.name}}</option>
										</select> 
										<input name="q" value="${q!}" class="span4" type="text" placeholder="Cari ..." style="padding:11px 4px;">
										<button type="submit" class="btn btn-warning btn-large" style="margin-top:0"> GO </button>
									</form>
								</li>
							</ul>
						</div>
						<button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
					</div>
				</div>
			</div>
		</header>
		<div class="container">
			<h3 class="title"><span><a href="<@s.url value="/site/${site.name}/news" />">Berita</a></span></h3>
			<section id="featuredProduct" ng-controller="hoqii-news-detail">
				<div class="row">
					<div class="span10 offset1">
						<h3>
							<a href="<@s.url value="/site/${site.name}/news/" />{{news.id}}">{{news.title}}</a>
							<br>
							<small>
								<i class="icon-pencil"></i> {{news.user.username}} &nbsp;&nbsp;&nbsp;
								<i class="icon-calendar"></i> {{news.logInformation.createDate | date: short}}
							</small>
						</h3>
						 
						<p ng-bind-html="toTrusted(news.content)"></p>
						<hr>
					</div>
				</div>
			</section>
			<hr class="soften"/>
		</div>
		
		<!-- Footer ================================================== -->
		<footer class="footer">
			<div class="container">
				<div class="footerMenu">
					<a href=""> Tentang kami</a>
					<p class="pull-right">&copy; Copyright - Hoqii. </p>
				</div>
			</div>
		</footer>
		<span id="toTop" style="display: none;"><span><i class="icon-angle-up"></i></span></span>

		<!--	javascript
		================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="<@s.url value="${templatePath}" />/themes/js/jquery-1.8.3.min.js"></script>
		<script src="<@s.url value="${templatePath}" />/bootstrap/js/bootstrap.min.js"></script>
		<script src="<@s.url value="${templatePath}" />/themes/js/smart.js"></script>
		<#include "/themes/application.ftl" />
	</body>
</html>