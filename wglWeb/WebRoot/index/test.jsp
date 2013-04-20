<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>test</title>
    ${meta_view}
	<%@ include file="./global/global.jsp"%>
  </head>
  
  <body>
   <p>
		<a href="#myModal" role="button" class="btn btn-primary btn-large" data-toggle="modal">查看对话框演示案例
			&raquo;</a>
	</p>
<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						  <div class="modal-header">
						    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
						    <h3 id="myModalLabel">Modal header</h3>
						  </div>
						  <div class="modal-body">
						    <p>One fine body…</p>
						  </div>
						  <div class="modal-footer">
						    <button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
						    <button class="btn btn-primary">Save changes</button>
						  </div>
						</div>

  </body>
</html>
