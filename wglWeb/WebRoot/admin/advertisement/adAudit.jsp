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
		<title>广告审核</title>
		<link rel="stylesheet" type="text/css" href="admin/tab/css/tab.css" />
		<script type="text/javascript" src="js/jqm/jquery-1.7.1.min.js"></script>
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
		<table width="100%" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td height="30">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="15" height="30">
								<img src="admin/tab/images/tab_03.gif" width="15" height="30" />
							</td>
							<td background="admin/tab/images/tab_05.gif">
								<img src="admin/tab/images/311.gif" width="16" height="16" />
								<span class="STYLE4">广告审核
								</span>
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
											<form action="system/ad!adAudit" method="post">
												<table border=0 cellspacing=1 cellpadding=0 width="100%">
													<tbody>
														<tr class=STYLE1 height=30 bgcolor=#ffffff>
															<td bgcolor=#EDFECF width="16%" align=right>
																审核：&nbsp;&nbsp;
															</td>
															<td>
																<input type="hidden" name="id" value="${ad.id}"/>
																&nbsp;&nbsp; 
																<s:select id="state" name="state" list="#{'1':'通过','2':'不通过'}" listKey="key" listValue="value" value="ad.state" />
																 &nbsp;&nbsp; <button type="submit">保存</button>
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
								<TABLE border=0 cellSpacing=0 cellPadding=1 width="100%">
									<TBODY>
										<TR>
											<TD height=20 colSpan=6 align="center"><b>详细信息</b></TD>
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
																&nbsp;&nbsp; ${ad.title }
															</td>

														</tr>
														<tr class=STYLE1 height=30 bgcolor=#ffffff>
															<td bgcolor=#EDFECF width="16%" align=right>
																所属地区：&nbsp;&nbsp;
															</td>
															<td>
																&nbsp;&nbsp; ${ad.city.province.province}&nbsp;
																${ad.city.city}
															</td>
														</tr>
														<tr class=STYLE1 height=30 bgcolor=#ffffff>
															<td bgcolor=#EDFECF width="16%" align=right>
																所属栏目：&nbsp;&nbsp;
															</td>
															<td>
																&nbsp;&nbsp; ${ad.category.name }
															</td>
														</tr>
														<tr class=STYLE1 height=30 bgcolor=#ffffff>
															<td bgcolor=#EDFECF width="16%" align=right>
																所属企业：&nbsp;&nbsp;
															</td>
															<td>
																&nbsp;&nbsp; ${ad.unit.name }
															</td>
														</tr>
														<tr class=STYLE1 height=30 bgcolor=#ffffff>
															<td bgcolor=#EDFECF width="16%" align=right>
																是否推荐：&nbsp;&nbsp;
															</td>
															<td>
																&nbsp;&nbsp;
																<c:if test="${ad.commend == '0'}">否</c:if>
																<c:if test="${ad.commend == '1'}">是</c:if>
															</td>
														</tr>

														<c:if test="${ad.commend == '1' }">
															<tr class=STYLE1 height=30 bgcolor=#ffffff>
																<td bgcolor=#EDFECF width="16%" align=right>
																	推荐类型：&nbsp;&nbsp;
																</td>
																<td>
																	&nbsp;&nbsp;
																	<c:if test="${ad.type == '1'}">文字推荐</c:if>
																	<c:if test="${ad.type == '2'}">图片推荐</c:if>
																</td>
															</tr>
															<tr class=STYLE1 height=30 bgcolor=#ffffff>
																<td bgcolor=#EDFECF width="16%" align=right>
																	首页推荐：&nbsp;&nbsp;
																</td>
																<td>
																	&nbsp;&nbsp;
																	<c:if test="${ad.commendTypeIndex == '1'}">是</c:if>
																	<c:if test="${ad.commendTypeIndex == '0'}">否</c:if>
																</td>
															</tr>
															<tr class=STYLE1 height=30 bgcolor=#ffffff id="cycle"
																<c:if test="${ad.commendTypeIndex != '1' }"> style="display: none;"</c:if>>
																<td bgcolor=#EDFECF width="16%" align=right>
																	推荐周期：&nbsp;&nbsp;
																</td>
																<td>
																	&nbsp;&nbsp;
																	<c:if test="${ad.commendCycle == '1'}">8:00-10:30</c:if>
																	<c:if test="${ad.commendCycle == '2'}">10:30-13:00</c:if>
																	<c:if test="${ad.commendCycle == '3'}">13:00-17:00</c:if>
																	<c:if test="${ad.commendCycle == '4'}">17:00-20:00</c:if>
																	<c:if test="${ad.commendCycle == '5'}">20:00-8:30</c:if>
																</td>
															</tr>
															<tr class=STYLE1 height=30 bgcolor=#ffffff>
																<td bgcolor=#EDFECF width="16%" align=right>
																	栏目推荐：&nbsp;&nbsp;
																</td>
																<td>
																	&nbsp;&nbsp;
																	<c:if test="${ad.commendTypeCategory == '1'}">是</c:if>
																	<c:if test="${ad.commendTypeCategory == '0'}">否</c:if>
																</td>
															</tr>
															<!--<c:if test="${ad.commendTypeCategory == '1'}">
																<tr class=STYLE1 height=30 bgcolor=#ffffff>
																	<td bgcolor=#EDFECF width="16%" align=right>
																		栏目推荐排序索引：&nbsp;&nbsp;
																	</td>
																	<td>
																		&nbsp;&nbsp; ${ad.orderIndexCategory }
																	</td>
																</tr>
															</c:if>-->

														</c:if>
														<tr class=STYLE1 height=30 bgcolor=#ffffff>
															<td bgcolor=#EDFECF width="16%" align=right>
																广告简介：&nbsp;&nbsp;
															</td>
															<td>
																&nbsp;&nbsp; ${ad.contentShort }
															</td>
														</tr>
														<tr class=STYLE1 height=30 bgcolor=#ffffff>
															<td bgcolor=#EDFECF width="16%" align=right>
																广告内容：&nbsp;&nbsp;
															</td>
															<td>
																&nbsp;&nbsp;
																<div class="content">
																	${ad.content }
																</div>
															</td>
														</tr>
														<tr class=STYLE1 height=30 bgcolor=#ffffff>
															<td bgcolor=#EDFECF width="16%" align=right>
																广告图片：&nbsp;&nbsp;
															</td>
															<td>
																&nbsp;&nbsp;
																<c:if test='${ad.picture != null && ad.picture != ""}'>
																	<a href="${ad.picture }" target="_blank">查看已上传图片</a>
																</c:if>
																<span class="STYLE6">提示：为了前台页面显示效果,请确认此上传的图片宽和高比例为1:1(正方形)</span>
															</td>
														</tr>
														<tr class=STYLE1 height=30 bgcolor=#ffffff>
															<td bgcolor=#EDFECF width="16%" align=right>
																是否促销：&nbsp;&nbsp;
															</td>
															<td>
																&nbsp;&nbsp;
																<c:if test="${ad.commend == '0'}">不促销</c:if>
																<c:if test="${ad.commend == '1'}">促销</c:if>
															</td>
														</tr>
														<c:if test="${ad.commend == '1'}">
															<tr class=STYLE1 height=30 bgcolor=#ffffff id="pro"
																<c:if test="${ad.promotion != '1' }"> style="display: none;"</c:if>>
																<td bgcolor=#EDFECF width="16%" align=right>
																	促销价格：&nbsp;&nbsp;
																</td>
																<td>
																	&nbsp;&nbsp; ${ad.pricePro}
																</td>
															</tr>
														</c:if>
														<tr class=STYLE1 height=30 bgcolor=#ffffff>
															<td bgcolor=#EDFECF width="16%" align=right>
																原价格：&nbsp;&nbsp;
															</td>
															<td>
																&nbsp;&nbsp; ${ad.price }
															</td>
														</tr>


														<tr class=STYLE1 height=30 bgcolor=#ffffff>
															<td bgcolor=#EDFECF width="16%" align=right>
																状态：&nbsp;&nbsp;
															</td>
															<td>
																&nbsp;&nbsp;
																<c:if test="${ad.state == '1'}">
																	<font color="green">正常</font>
																</c:if>
																<c:if test="${ad.state == '0'}">
																	<font color="red">不可用</font>
																</c:if>
															</td>
														</tr>
														<tr class=STYLE1 height=30 bgcolor=#ffffff>
															<td bgcolor=#EDFECF width="16%" align=right>
																录入人：&nbsp;&nbsp;
															</td>
															<td>
																&nbsp;&nbsp; ${ad.author.nickname }
															</td>
														</tr>
														<tr class=STYLE1 height=30 bgcolor=#ffffff>
															<td bgcolor=#EDFECF width="16%" align=right>
																录入时间：&nbsp;&nbsp;
															</td>
															<td>
																&nbsp;&nbsp; ${ad.createTime }
															</td>
														</tr>
														<tr class=STYLE1 height=30 bgcolor=#ffffff>
															<td bgcolor=#EDFECF width="16%" align=right>
																浏览量：&nbsp;&nbsp;
															</td>
															<td>
																&nbsp;&nbsp; ${ad.numlook }
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
												<B>&nbsp;&nbsp;</B>
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
												<INPUT value="返回" type="button"
													onclick="javascript: window.history.back()"></INPUT>

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

