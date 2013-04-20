<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript">
		$(function(){
			$("#navUl li").bind("click",function(){
					addNavActive(this);
				});
		});
	</script>
<!-- Navbar
    ================================================== -->
		<div class="navbar navbar-inverse navbar-fixed-top">
			<div class="navbar-inner">
				<div class="container">
					<button type="button" class="btn btn-navbar" data-toggle="collapse"
						data-target=".nav-collapse">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="brand" href="${basePath}login">Warren</a>
					<div class="nav-collapse collapse">
						<ul class="nav" id="navUl">
							<li class="active" id="indexPage">
								<a href="${basePath}index/index.jsp">主页</a>
							</li>
							<li>
								<a href="${basePath}index/index.jsp#introduce">个人简介</a>
							</li>
							<li class="">
								<a href="${basePath}index/index.jsp#examples">项目案例</a>
							</li>
							<li class="">
								<a href="${basePath}index/index.jsp#contact">联系方式</a>
							</li>
							<li class=""  id="articlePage">
								<a href="${basePath}main/article">随记</a>
							</li>
							<c:if test="${session_user!=null}">
								<li class=""  id="messagePage">
									<a href="${basePath}main/message">留言</a>
								</li>
								<li class="">
									<a href="${basePath}main/login!logout" onclick="return confirm('确定要注销吗?')">注销</a>
								</li>
							</c:if>
						</ul>
					</div>
				</div>
			</div>
		</div>

		<!-- Subhead
================================================== -->
		<header class="jumbotron subhead" id="overview">
		<div class="container">
			<h1>
				Warren
			</h1>
			<p class="lead">
				高级软件工程师/ J2EE
			</p>
		</div>
		</header>

