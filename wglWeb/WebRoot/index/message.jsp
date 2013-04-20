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
		addNavActive("#messagePage");
		$("#menuUl li").bind("click", function() {
			addLiActiveByUl(this, "#menuUl");
		});
	});
</script>
	</head>
	<body>

		<%@ include file="./global/header.jsp"%>
		<div class="container">
		<div class="page-header">
				<h2>
					留言列表
				</h2>
			</div>
			<c:forEach items="${msgList}" var="msg">
			<div class="alert alert-block alert-info">
				<p><span class="text-info"><strong>${msg.author}</strong></span> 
				<span class="muted pull-right"><fmt:formatDate value="${msg.createTime}" pattern="yyyy-MM-dd HH:mm:ss" />
					<button class="btn btn-small" type="button"  onclick="delMessage(${msg.id})">删除</button>
				</span></p>
				<p>${msg.content}</p>
			</div>
			</c:forEach>
		</div>
		<input id="basePath" type="hidden" value="${basePath}" />
		<%@ include file="./global/footer.jsp"%>
		<script src="${basePath}index/js/custom/message.js"></script>
	</body>
</html>
