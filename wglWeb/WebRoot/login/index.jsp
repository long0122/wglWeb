<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path_ = request.getContextPath();
	String basePath_ = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path_ + "/";
%>
<%

response.sendRedirect(basePath_+"main/login");
%>

