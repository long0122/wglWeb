<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path_ = request.getContextPath();
	String basePath_ = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path_ + "/";
%>


 <!-- Le styles -->
    <link href="<%=basePath_%>index/css/bootstrap.css" rel="stylesheet">
    <link href="<%=basePath_%>index/css/bootstrap-responsive.css" rel="stylesheet">
    <link href="<%=basePath_%>index/css/main.css" rel="stylesheet">
    <link href="<%=basePath_%>index/js/google-code-prettify/prettify.css" rel="stylesheet">
    
    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="<%=basePath_%>index/js/html5shiv.js"></script>
    <![endif]-->
    
    <!-- Le javascript
    ================================================== -->
    <script src="<%=basePath_%>index/js/jquery.js"></script>
    <script src="<%=basePath_%>index/js/bootstrap.min.js"></script>
    <script src="<%=basePath_%>index/js/holder/holder.js"></script>
    <script src="<%=basePath_%>index/js/google-code-prettify/prettify.js"></script>
    <script src="<%=basePath_%>index/js/application.js"></script>
    <script src="<%=basePath_%>index/js/global.js"></script>
    

