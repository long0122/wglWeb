<%@ page language="java" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
	<head>
		<title>Warren的个人主页</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		${meta_view}
		<%@ include file="./global/global.jsp"%>
	</head>
	<body data-spy="scroll" data-target=".bs-docs-sidebar">
		<%@ include file="./global/header.jsp"%>
		<div class="container">

			<!-- introduce
        ================================================== -->
			<section id="introduce">
			<div class="page-header">
				<h1>
					个人简介
				</h1>
			</div>
			<p>
				国籍：中国
			</p>
			<p>
				籍贯：山东
			</p>
			<p>
				姓名：王冠龙
			</p>
			<p>
				专业从事网站开发、软件开发。
			</p>
			</section>



			<!-- Examples
        ================================================== -->
			<section id="examples">
			<div class="page-header">
				<h1>
					项目案例
				</h1>
			</div>
			<p class="lead">
				以下是在线的几个网站，还有一些后台系统软件以及内网软件由于不能通过互联网访问就不列出来了。
			</p>
			<ul class="thumbnails bootstrap-examples">
				<li class="span3">
					<a class="thumbnail" href="http://www.laikankan.cn"> <img
							src="${basePath}index/img/examples/laikk.jpg" alt=""> </a>
					<h5>
						来看看网站
					</h5>
				</li>
				<li class="span3">
					<a class="thumbnail" href="http://www.jgee.cn/"> <img
							src="${basePath}index/img/examples/jasd.jpg" alt=""> </a>
					<h5>
						吉安井岗水电设备成套制造有限公司网站
					</h5>
				</li>
				<li class="span3">
					<a class="thumbnail" href="http://zhouhai.x10.fjjsp.net/"> <img
							src="${basePath}index/img/examples/mxkj.jpg" alt=""> </a>
					<h5>
						南昌明星科技发展有限公司网站
					</h5>
				</li>

			</ul>
			</section>




			<!-- contact
        ================================================== -->
			<section id="contact">
			<div class="page-header">
				<h1>
					联系方式
				</h1>
			</div>
			<p class="lead">
				手机：15053470557
			</p>
			<p class="lead">
				QQ：125779473
			</p>
			<div class="accordion" id="accordion2">
				<div class="accordion-group">
					<div class="accordion-heading">
						<a class="accordion-toggle" data-toggle="collapse"
							data-parent="#accordion2" href="#collapseOne"> 给我留言 </a>
					</div>
					<div id="collapseOne" class="accordion-body collapse">
						<div class="accordion-inner">
							<div class="control-group">
								<div class="controls">
									<input type="text" id="name" name="name" placeholder="姓名">
								</div>
							</div>
							<div id="contentDiv" class="control-group">
								<div class="controls">
									<textarea rows="3" id="content" name="content"
										placeholder="留言内容"></textarea>
									<span id="errMsg" class="help-inline hide">亲，忘记输入留言内容了吧？</span>
								</div>
							</div>

							<div class="control-group">
								<div class="controls">
									<button id="sendMsgButton" type="button" class="btn"
										data-loading-text="加载中..." onclick=sendMessage();>
										发送
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			</section>
		</div>
		<div id="msgModal" class="modal hide fade" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">
					×
				</button>
				<h3 id="myModalLabel">
					操作信息
				</h3>
			</div>
			<div class="modal-body">
				<p>
					发送成功！
				</p>
			</div>
			<div class="modal-footer">
				<button class="btn  btn-primary" data-dismiss="modal" aria-hidden="true">
					关闭
				</button>
			</div>
		</div>

		<input id="basePath" type="hidden" value="${basePath}" />
		<%@ include file="./global/footer.jsp"%>
		<script src="${basePath}index/js/custom/message.js"></script>
	</body>
</html>
