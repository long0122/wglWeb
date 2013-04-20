<%@ page language="java" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Warren的个人主页</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		${meta_view}
		<%@ include file="./global/global.jsp"%>
		<script type="text/javascript">
	$(function() {
		addNavActive("#articlePage");
		$("#menuUl li").bind("click", function() {
			addLiActiveByUl(this, "#menuUl");
		});
	});
</script>
	</head>
	<body data-spy="scroll" data-target=".bs-docs-sidebar">

		<%@ include file="./global/header.jsp"%>
		<ul class="breadcrumb">
			<li>
				<a href="${basePath}">主页</a>
				<span class="divider">/</span>
			</li>
			<li class="active">
				随记
			</li>
		</ul>
		<div class="container">
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span3 bs-docs-sidebar ">
							<ul class="nav nav-list bs-docs-sidenav" id="menuUl">
								<li>
									<a href="#jqmXswtzh"><i class="icon-chevron-right"></i>Jquery mobile 新手问题总汇</a>
								</li>
								<li>
									<a href="#helloWorld"><i class="icon-chevron-right"></i>Jquery mobile-[Hello world!]</a>
								</li> 
							</ul>
					</div>
					<div class="span9">
						<!--Body content-->
						<!-- articale
        ================================================== -->
						<section id="jqmXswtzh">
						<div class="page-header">
							<h2>
								Jquery mobile 新手问题总汇
							</h2>
						</div>
						<p class="text-info">
							此文章将会持续更新，主要收录一些新手比较常见的问题。
						</p>
						<p class="text-warning">
							欢迎
							<a href="${basePath}index/index.jsp#contact">向我推荐</a>比较典型的常见问题，我会记录并整理进文章，方便自己更方便大家。
						</p>
						<h5 class="text-error">
							<span class="badge badge-warning">1</span>页面缩放显示问题
						</h5>
						<p>
							<span class="label label-info">问题描述：</span>
						</p>
						<p>
							页面似乎被缩小了，屏幕太宽了。
						</p>
						<p>
							<span class="label label-important">解决办法：</span>
						</p>
						<p>
							在head标签内加入：
						</p>
						<p>
							<pre>&lt;meta name="viewport" content="width=device-width, initial-scale=1"&gt;</pre>
						</p>
						<h5 class="text-error">
							<span class="badge badge-warning">2</span> 页面跳转后样式丢失
						</h5>
						<p>
							<span class="label label-info">问题描述：</span>
						</p>
						<p>
							用ajax跳转的时候，从a.html跳转到b.html后，b.html的css以及js都失效了。
						</p>
						<p>
							<span class="label label-important">解决办法：</span>
						</p>
						<p>
							将所有的css以及js全部放在&lt;page&gt;div内。
						</p>
						<p>
							<span class="label label-success">原理：</span>
						</p>
						<p>
							由于jqm的ajax跳转的时候，只会把b.html中&lt;page&gt;内的内容加载进dom,而&lt;page&gt;外的代码都不会加载，所以导致在&lt;page&gt;外的js和css都失效了。
						</p>
						<h5 class="text-error">
							<span class="badge badge-warning">3</span> 跳转时重复调用pageinit方法的解决办法
						</h5>
						<p>
							<span class="label label-info">问题描述：</span>
						</p>
						<p>
							用ajax跳转的时候，从a.html跳转到b.html，用从b.html返回a.html等等这种反复跳转的时候，pageinit方法内的代码会调用多次。
						</p>
						<p>
							<span class="label label-important">解决办法：</span>
						</p>
						<p>
							在page中加入 data-dom-cache="true"属性，如：
						</p>
						<p>
							<pre>&lt;div data-role="page" id="myPage" data-dom-cache="true"&gt;</pre>
						</p>
						<p>
							然后把pageinit方法换为pageshow,如：
						</p>
						<p>
							<pre>$("#myPage").live("pageshow", function() {<br />//...do something<br />});</pre>
						</p>
						<h5 class="text-error">
							<span class="badge badge-warning">4</span> 如何调用loading效果
						</h5>
						<p>
							<span class="label label-important">js代码：</span>
						</p>
						<p>
							<pre>//显示loading<br />function showLoading(){<br />$.mobile.loadingMessageTextVisible = true;<br />$.mobile.showPageLoadingMsg("a", "加载中..." );<br />} </pre>
						</p>
						<p>
							<pre>//隐藏loading<br />function hideLoading(){<br />$.mobile.hidePageLoadingMsg();<br />} </pre>
						</p>
						<h5 class="text-error">
							<span class="badge badge-warning">5</span> 动态改变了list的内容，但是内容并没有变化
						</h5>
						<p>
							<span class="label label-important">解决办法：</span>
						</p>
						<p>
							调用组件的refresh方法，刷新list,如：
						</p>
						<p>
							<pre>$("#contentList").append(content).listview('refresh');</pre>
						</p>
						<p>
							<span class="label label-success">原理：</span>
						</p>
						<p>
							jqm组件的显示原理是把原始的web组件隐藏，而用jqm自定义的UI组件来代替原始的web组件显示。动态的改变了list的值，其实改变的是原始组件list的值，而jqm的list组件的值并没有被更新，所以需要调用list组件的refresh方法来使其更新并显示。
						</p>
						<div class="alert alert-block alert-error">
							<h5>
								注意:
							</h5>
							此问题不只局限于list组件，基本所有的jqm
							UI组件在改变值之后都需要调用组件对应的refresh方法，例如button组件等等。
						</div>
						<h5 class="text-error">
							<span class="badge badge-warning">6</span> ...还有什么需要补充问题？
							<a href="${basePath}index/index.jsp#contact">请联系我</a>
						</h5>
						</section>
						<section id="helloWorld">
						<div class="page-header">
							<h2>
								Jquery mobile - [Hello world!]
							</h2>
						</div>
						<p>
							<span class="badge badge-warning">1</span> 使用jQueryMobile的第一步，先创建一个html页面，并在head标签中加入以下内容：
						</p>
						<p>
							<pre>&lt;link rel=&quot;stylesheet&quot; href=&quot;http://code.jquery.com/mobile/1.3.1/jquery.mobile-1.3.1.min.css&quot; /&gt;
&lt;script src=&quot;http://code.jquery.com/jquery-1.9.1.min.js&quot;&gt;&lt;/script&gt;
&lt;script src=&quot;http://code.jquery.com/mobile/1.3.1/jquery.mobile-1.3.1.min.js&quot;&gt;&lt;/script&gt;</pre>
						</p>
						
						<p>
							<span class="badge badge-warning">2</span> body标签内添加：
						</p>
						<p>
							<pre>&lt;div data-role=&quot;page&quot;&gt;<br />&lt;div data-role=&quot;header&quot;&gt;<br />&lt;h1&gt;Page Title&lt;/h1&gt;&lt;/div&gt;&lt;!-- /header --&gt;<br />&lt;div data-role=&quot;content&quot;&gt;<br />&lt;p&gt;Hello world!&lt;/p&gt;&lt;/div&gt;&lt;!-- /content --&gt;<br />&lt;div data-role=&quot;footer&quot;&gt;<br />&lt;h4&gt;Page Footer&lt;/h4&gt;&lt;/div&gt;&lt;!-- /header --&gt;&lt;/div&gt;&lt;!-- /page --&gt;</pre>
						</p>
						<p>
							<a href="${basePath}index/jqmDemo.jsp" role="button" class="btn btn-primary btn-large" data-toggle="modal">查看演示案例
								&raquo;</a>
						</p>
						</section>
						
						</div>
						
					</div>
				</div>
			</div>


		</div>
		<%@ include file="./global/footer.jsp"%>
	</body>
</html>
