<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
  <head>
   <title>Warren的个人主页</title>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
   ${meta_view}
	<%@ include file="../index/global/global.jsp"%>
    <!-- Le styles -->
    <style type="text/css">
      body {
        padding-top: 40px;
        padding-bottom: 40px;
        background-color: #f5f5f5;
      }

      .form-signin {
        max-width: 300px;
        padding: 19px 29px 29px;
        margin: 0 auto 20px;
        background-color: #fff;
        border: 1px solid #e5e5e5;
        -webkit-border-radius: 5px;
           -moz-border-radius: 5px;
                border-radius: 5px;
        -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
           -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
                box-shadow: 0 1px 2px rgba(0,0,0,.05);
      }
      .form-signin .form-signin-heading,
      .form-signin .checkbox {
        margin-bottom: 10px;
      }
      .form-signin input[type="text"],
      .form-signin input[type="password"] {
        font-size: 16px;
        height: auto;
        margin-bottom: 15px;
        padding: 7px 9px;
      }

    </style>
    <script type="text/javascript">
    	$(function(){
    		$("#username").focus();
        	});
    </script>
  </head>

  <body>

    <div class="container">

      <form class="form-signin" action="${basePath}main/login!doLogin" method="post">
        <h2 class="form-signin-heading">登陆</h2>
        <input id="username" name="username"  type="text" class="input-block-level" placeholder="用户名">
        <input id="password" name="password" type="password" class="input-block-level" placeholder="密码">
        <label class="checkbox">
          <input type="checkbox" value="remember-me"> 记住我
        </label>
        <button class="btn btn-large btn-primary" type="submit">登陆</button>
         <button class="btn btn-large" type="button" onclick="javascript:window.history.back()">返回</button>
      </form>

    </div> <!-- /container -->


  </body>
</html>

