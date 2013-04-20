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
		<title>企业查看</title>
		<link rel="stylesheet" type="text/css" href="<%=basePath%>admin/tab/css/tab.css" />
		<script type="text/javascript" src="js/jqm/jquery-1.7.1.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>js/My97DatePicker/WdatePicker.js"></script>
		<script type="text/javascript">
			/*function validate(){
				var state = $("#state").val();
				var validity = $("#validity").val();
				
				if(state==1){
					if(validity==''){
						alert('<有效日期>不能为空');
					}else{
						var date = new Date(); //日期对象
						var now = "";
						now = date.getFullYear()+"-"; //读英文就行了
						now = now + (date.getMonth()+1)+"-";//取月的时候取的是当前月-1如果想取当前月+1就可以了
						now = now + date.getDate()+" ";
						if (Date.parse(now.replace("-", "/")) >= Date.parse(validity.replace("-", "/"))) {
							alert("<有效期>需在今天之后");
							$("#validity").val("");
							$("#validity").focus();
					    } else{
					    	$("#unitAuditForm").submit();
					    }
					}
				}else{
					$("#unitAuditForm").submit();
				}
				
			}*/
		
		</script>
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
								<span class="STYLE4">详细信息</span>
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
											<form id="unitAuditForm" action="system/unit!audit" method="post">
												<table border=0 cellspacing=1 cellpadding=0 width="100%">
													<tbody>
														 <tr class=STYLE1 height=30 bgcolor=#ffffff>
															<td bgcolor=#EDFECF width="16%" align=right>
																有效日期至：&nbsp;&nbsp;
															</td>
															<td>
																<input type="hidden" name="id" value="${unit.id}"/>
																<!--&nbsp;<input id="validity" name="validity" type="text" value="${unit.validity}" class="Wdate" onFocus="WdatePicker({isShowClear:false,readOnly:true,doubleCalendar:true})"/>-->
																<span  class="STYLE6">&nbsp;默认为一年( 即：当前日期 + 一年)</span>
															</td>

														</tr>
														<tr class=STYLE1 height=30 bgcolor=#ffffff>
															<td bgcolor=#EDFECF width="16%" align=right>
																审核：&nbsp;&nbsp;
															</td>
															<td>
																&nbsp;<s:select id="state" name="state" list="#{'1':'通过','2':'不通过'}" listKey="key" listValue="value" value="unit.state" />
																 &nbsp;&nbsp; <button type="submit">保存修改</button> 
															</td>

														</tr>
													</tbody>
												</table>
											</form>
											</TD>
											<TD width=10>
												&nbsp;
											</TD>
										</TR>
											<TR>
											<TD width=10>
												&nbsp;
											</TD>
											<TD colSpan=4 align=middle>
												&nbsp;

											</TD>
											<TD width=10>
												&nbsp;
											</TD>
										</TR>
										
									</TBODY>
								</TABLE>

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
				<td>
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="9" background="admin/tab/images/tab_12.gif">
								&nbsp;
							</td>
							<td bgcolor="#F3FFEE">
								<!-- content  -->
								<form action="system/unit!update" method="post"  enctype="multipart/form-data">
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
																	企业名称：&nbsp;&nbsp;
																</td>
																<td>
																	&nbsp;&nbsp;
																	${unit.name }
																</td>

															</tr>
															<tr class=STYLE1 height=30 bgcolor=#ffffff>
																<td bgcolor=#EDFECF width="16%" align=right>
																	所属地区：&nbsp;&nbsp;
																</td>
																<td>
																	&nbsp;&nbsp;
																	${unit.city.province.province}
																	&nbsp;
																	${unit.city.city }
																</td>
															</tr>
															<tr class=STYLE1 height=30 bgcolor=#ffffff>
																<td bgcolor=#EDFECF width="16%" align=right>
																	所属栏目：&nbsp;&nbsp;
																</td>
																<td>
																	&nbsp;&nbsp;
																	${unit.category.name }
																</td>
															</tr>
															<tr class=STYLE1 height=30 bgcolor=#ffffff>
																<td bgcolor=#EDFECF width="16%" align=right>
																	地址：&nbsp;&nbsp;
																</td>
																<td>
																	&nbsp;&nbsp;
																	${unit.address }
																</td>
															</tr>
															<tr class=STYLE1 height=30 bgcolor=#ffffff>
																<td bgcolor=#EDFECF width="16%" align=right>
																	联系电话：&nbsp;&nbsp;
																</td>
																<td>
																	&nbsp;&nbsp;
																	${unit.phone }
																</td>
															</tr>
															<tr class=STYLE1 height=30 bgcolor=#ffffff>
																<td bgcolor=#EDFECF width="16%" align=right>
																	联系方式：&nbsp;&nbsp;
																</td>
																<td>
																	&nbsp;&nbsp;
																	<div style="text-align: left; width: 50%">
																	${unit.contact }
																	</div>
																</td>
															</tr>
															<tr class=STYLE1 height=30 bgcolor=#ffffff>
																<td bgcolor=#EDFECF width="16%" align=right>
																	企业标志图片：&nbsp;&nbsp;
																</td>
																<td>
																	&nbsp;&nbsp;
																	<c:if test='${unit.picture != null && unit.picture != ""}'>
													                	<a href="${unit.picture }" target="_blank">查看已上传图片</a>
													                </c:if>
																	<c:if test='${unit.picture == null || unit.picture == ""}'>
													                	<font color="red">未上传图片</font>
													                </c:if>
																</td>
															</tr>
															<tr class=STYLE1 height=30 bgcolor=#ffffff>
																<td bgcolor=#EDFECF width="16%" align=right>
																	状态：&nbsp;&nbsp;
																</td>
																<td>
																	&nbsp;&nbsp;
																	<c:choose>
																		<c:when test="${unit.state==1}">
																			<font color="green">审核通过</font>
																		</c:when>
																		<c:when test="${unit.state==2}">
																			<font color="red">审核未通过</font>
																		</c:when>
																		<c:when test="${unit.state==3}">
																			<font color="red">已过期</font>
																		</c:when>
																		<c:otherwise>
																			<font color="grey">未审核</font>
																		</c:otherwise>
																	</c:choose>
																	
																	
																</td>
															</tr>
															<tr class=STYLE1 height=30 bgcolor=#ffffff>
																<td bgcolor=#EDFECF width="16%" align=right>
																	录入人：&nbsp;&nbsp;
																</td>
																<td>
																	&nbsp;&nbsp;
																	${unit.author.nickname }
																</td>
															</tr>
															<tr class=STYLE1 height=30 bgcolor=#ffffff>
																<td bgcolor=#EDFECF width="16%" align=right>
																	录入时间：&nbsp;&nbsp;
																</td>
																<td>
																	&nbsp;&nbsp;
																	${unit.createTime }
																</td>
															</tr>
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
													&nbsp;
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
												<INPUT value="返回" type="button" onclick=javascript:window.history.back();>
														&nbsp;&nbsp;&nbsp; 
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

