<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<base href="<%=basePath%>" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>广告修改</title>
		<link rel="stylesheet" type="text/css" href="admin/tab/css/tab.css" />
		<script type="text/javascript" src="js/jqm/jquery-1.7.1.min.js"></script>
		<script type="text/javascript" src="admin/js/city.js"></script>
		<script type="text/javascript" src="admin/js/ad/ad.js"></script>
		<!-- jquery validate -->
		<link rel="stylesheet" type="text/css" media="screen" href="admin/validate/css/cmxform.css" />
		<script src="admin/validate/jquery/jquery.js" type="text/javascript"></script>
		<script src="admin/validate/jquery/jquery.validate.js" type="text/javascript"></script>
		<script src="admin/validate/ad/adAdd.js" type="text/javascript" charset="GBK"></script>
		<style type=text/css>
			.STYLE1 {
				FONT-FAMILY: "宋体";
				FONT-SIZE: 12px
			}
			
			.STYLE6 {
				COLOR: #ff0000
			}
			
			TD {
				FONT-FAMILY: 宋体;
				FONT-SIZE: 12px
			}
		</style>
		<script charset="utf-8" src="${pageContext.request.contextPath}/kindeditor/kindeditor-min.js"></script>
	<script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[id="kindeditor"]', {
				cssPath : '${pageContext.request.contextPath}/kindeditor/plugins/code/prettify.css',
				uploadJson : '${pageContext.request.contextPath}/kindeditor/jsp/upload_json.jsp',
				fileManagerJson : '${pageContext.request.contextPath}/kindeditor/jsp/file_manager_json.jsp',
				allowFileManager : true
			});
			prettyPrint();
		});
	</script>
	</head>

	<body>
		<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
			<tr>
				<td height="30">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="15" height="30">
								<img src="admin/tab/images/tab_03.gif" width="15" height="30" />
							</td>
							<td background="admin/tab/images/tab_05.gif">
								<img src="admin/tab/images/311.gif" width="16" height="16" />
								<span class="STYLE4">广告修改</span>
							</td>
							<td align="right" background="admin/tab/images/tab_05.gif">
								&nbsp;
							</td>
							<td width="14">
								<img src="admin/tab/images/tab_07.gif" width="14" height="30" />
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="9" background="admin/tab/images/tab_12.gif">
								&nbsp;
							</td>
							<td bgcolor="#F3FFEE">
								<!-- content  -->
								<form id="adForm" action="system/ad!update" method="post"  enctype="multipart/form-data">
									<TABLE border=0 cellSpacing=0 cellPadding=1 width="100%">
										<TBODY>
											<TR>
												<TD height=8 colSpan=6></TD>
											</TR>
											<TR>
												<TD width=10>
													&nbsp;
												</TD>
												<TD bgColor=#009900 colSpan=4>
													<table border=0 cellspacing=1 cellpadding=0 width="100%">
														<tbody>
															<tr class=STYLE1 height=30 bgcolor=#ffffff>
																<td bgcolor=#EDFECF width="16%" align=right>
																	广告标题：&nbsp;&nbsp;
																</td>
																<td>
																	&nbsp;&nbsp;
																	<input type="text" name="title" value="${ad.title }">
																	<input type="hidden" name="id" value="${ad.id }">
																	<font color="red">*</font>
																</td>

															</tr>
															<tr class=STYLE1 height=30 bgcolor=#ffffff>
																<td bgcolor=#EDFECF width="16%" align=right>
																	所属栏目：&nbsp;&nbsp;
																</td>
																<td>
																	&nbsp;&nbsp;
																	<s:select list="categorys" name="category" listKey="id" listValue="name" headerKey="" headerValue="请选择" value="ad.category.id" />
																		<font color="red">*</font>
																</td>
															</tr>
															<tr class=STYLE1 height=30 bgcolor=#ffffff>
																<td bgcolor=#EDFECF width="16%" align=right>
																	所属企业：&nbsp;&nbsp;
																</td>
																<td>
																	&nbsp;&nbsp;
																	<s:select list="units" name="unit" listKey="id" listValue="name" headerKey="" headerValue="请选择" value="ad.unit.id" />
																		<font color="red">*</font>
																</td>
															</tr>
															<!-- 
															<tr class=STYLE1 height=30 bgcolor=#ffffff>
																<td bgcolor=#EDFECF width="16%" align=right>
																	是否推荐：&nbsp;&nbsp;
																</td>
																<td>
																	&nbsp;&nbsp;
																	<s:select name="commend" list="#{'0':'不推荐','1':'推荐'}" listKey="key" listValue="value" value="ad.commend"/>
																		<font color="red">*</font>
																</td>
															</tr>
															<tr class=STYLE1 height=30 bgcolor=#ffffff>
																<td bgcolor=#EDFECF width="16%" align=right>
																	推荐类型：&nbsp;&nbsp;
																</td>
																<td>
																	&nbsp;&nbsp;
																	<s:select name="type" list="#{'1':'文字推荐','2':'图片推荐'}" listKey="key" listValue="value" value="ad.type"/>
																		<font color="red">*</font>
																</td>
															</tr>
															<tr class=STYLE1 height=30 bgcolor=#ffffff>
																<td bgcolor=#EDFECF width="16%" align=right>
																	首页推荐：&nbsp;&nbsp;
																</td>
																<td>
																	&nbsp;&nbsp;
																	<s:select name="commendTypeIndex" list="#{'':'请选择','1':'是','0':'否'}" listKey="key" listValue="value" onchange="selectCycle(this.value)"  value="ad.commendTypeIndex"/>
																</td>
															</tr>
															<tr class=STYLE1 height=30 bgcolor=#ffffff id="cycle" style="display: none;">
																<td bgcolor=#EDFECF width="16%" align=right>
																	推荐周期：&nbsp;&nbsp;
																</td>
																<td>
																	&nbsp;&nbsp;
																	<s:select name="commendCycle" list="#{'1':'8:00-10:30','2':'10:30-13:00','3':'13:00-17:00','4':'17:00-20:00','5':'20:00-8:30'}" listKey="key" listValue="value" value="ad.commendCycle"/>
																</td>
															</tr>
															<tr class=STYLE1 height=30 bgcolor=#ffffff>
																<td bgcolor=#EDFECF width="16%" align=right>
																	栏目推荐：&nbsp;&nbsp;
																</td>
																<td>
																	&nbsp;&nbsp;
																	<s:select name="commendTypeCategory" list="#{'':'请选择','1':'是','0':'否'}" listKey="key" listValue="value" value="ad.commendTypeCategory"/>
																</td>
															</tr>
															 -->
															
															
															<tr class=STYLE1 height=30 bgcolor=#ffffff>
																<td bgcolor=#EDFECF width="16%" align=right>
																	广告简介：&nbsp;&nbsp;
																</td>
																<td>
																	&nbsp;&nbsp;
																	<textarea name="contentShort" rows="" cols="" style="width: 400px; height: 100px;">${ad.contentShort }</textarea>
																	<font color="red">*</font>
																</td>
															</tr>
															<tr class=STYLE1 height=30 bgcolor=#ffffff>
																<td bgcolor=#EDFECF width="16%" align=right>
																	广告内容：&nbsp;&nbsp;
																</td>
																<td>
																	&nbsp;&nbsp;
																	<textarea id="kindeditor" name="content" cols="100" rows="8" style="width:700px;height:200px;visibility:hidden;">${ad.content }</textarea>
																	<font color="red">*</font>
																</td>
															</tr>
															
															<tr class=STYLE1 height=30 bgcolor=#ffffff>
																<td bgcolor=#EDFECF width="16%" align=right>
																	是否促销：&nbsp;&nbsp;
																</td>
																<td>
																	&nbsp;&nbsp;
																	<s:select name="promotion" list="#{'0':'不促销','1':'促销'}" listKey="key" listValue="value" onchange="selectPro(this.value)" value="ad.promotion" />
																</td>
															</tr>
															<tr class=STYLE1 height=30 bgcolor=#ffffff id="pro" <c:if test="${ad.promotion != '1' }"> style="display: none;"</c:if>>
																<td bgcolor=#EDFECF width="16%" align=right>
																	促销价格：&nbsp;&nbsp;
																</td>
																<td>
																	&nbsp;&nbsp;
																	<input type="text" name="pricePro" value="${ad.pricePro }">
																</td>
															</tr>
															<tr class=STYLE1 height=30 bgcolor=#ffffff>
																<td bgcolor=#EDFECF width="16%" align=right>
																	原价格：&nbsp;&nbsp;
																</td>
																<td>
																	&nbsp;&nbsp;
																	<input type="text" name="price" value="${ad.price }">
																</td>
															</tr>
														
															
															<tr class=STYLE1 height=30 bgcolor=#ffffff>
																<td bgcolor=#EDFECF width="16%" align=right>
																	广告图片：&nbsp;&nbsp;
																</td>
																<td>
																	&nbsp;&nbsp;
																	<input type="file" name="file">
																	<c:if test='${ad.picture != null && ad.picture != ""}'>
													                	<a href="${ad.picture }" target="_blank">查看已上传图片</a>
													                </c:if><br/>
													                <span class="STYLE6">提示：为了前台页面显示效果,请上传宽和高比例为1:1的图片</span>
																</td>
															</tr>
															<!-- 
															<tr class=STYLE1 height=30 bgcolor=#ffffff>
																<td bgcolor=#EDFECF width="16%" align=right>
																	状态：&nbsp;&nbsp;
																</td>
																<td>
																	&nbsp;&nbsp;
																	<s:select name="state" list="#{'1':'正常','0':'不可用'}" listKey="key" listValue="value" value="ad.state" />
																</td>
															</tr>
															 -->
														</tbody>
													</table>
												</TD>
												<TD width=10>
													&nbsp;
												</TD>
											</TR>
											<TR>
												<TD height=8 colSpan=6></TD>
											</TR>

											<TR>
												<TD height=5 colSpan=6></TD>
											</TR>
											<TR>
												<TD width=10>
													&nbsp;
												</TD>
												<TD class=STYLE6 colSpan=4>
													<B>&nbsp;&nbsp;其中带*号为必填项</B>
												</TD>
												<TD width=10>
													&nbsp;
												</TD>
											</TR>
											<TR>
												<TD height=5 colSpan=6></TD>
											</TR>
											<TR>
												<TD width=10>
													&nbsp;
												</TD>
												<TD colSpan=4 align=middle>
													<INPUT value="保存 " type="submit">
														&nbsp;&nbsp;&nbsp; 
													<INPUT value="返回" type="button" onclick="javascript:window.history.back();"
>
												</TD>
												<TD width=10>
													&nbsp;
												</TD>
											</TR>
										</TBODY>
									</TABLE>
								</form>

								<!-- content  end -->
							</td>
							<td width="9" background="admin/tab/images/tab_16.gif">
								&nbsp;
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td height="29">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="15" height="29">
								<img src="admin/tab/images/tab_20.gif" width="15" height="29" />
							</td>
							<td background="admin/tab/images/tab_21.gif">
								&nbsp;
							</td>
							<td width="14">
								<img src="admin/tab/images/tab_22.gif" width="14" height="29" />
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</body>
</html>

