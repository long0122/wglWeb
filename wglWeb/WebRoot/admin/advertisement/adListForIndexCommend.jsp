<%@ page language="java" import="java.util.*,com.wgl.web.context.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
			
			int textCount = GlobalConstants.INDEX_COMMEND_TEXT_SIZE;
			int picCount = GlobalConstants.INDEX_COMMEND_PIC_SIZE;
%>
<html>
	<head>
		<base href="<%=basePath%>">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>广告列表</title>
		<link rel="stylesheet" type="text/css" href="admin/tab/css/tab.css">
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
								<span class="STYLE4">推荐广告列表
								<c:if test="${session_ad_commend_cycle==1}">
								(8:00-10:30)
								</c:if>
								<c:if test="${session_ad_commend_cycle==2}">
								(10:30-13:00)
								</c:if>
								<c:if test="${session_ad_commend_cycle==3}">
								(13:00-17:00)
								</c:if>
								<c:if test="${session_ad_commend_cycle==4}">
								(17:00-20:00)
								</c:if>
								<c:if test="${session_ad_commend_cycle==5}">
								(20:00-8:00)
								</c:if>
								</span>
							</td>
							<td align="right" background="admin/tab/images/tab_05.gif">
								<span class="STYLE4"><a href="system/ad!showAdNotCommend"><img
											src="admin/tab/images/001.gif" width="16" height="16"
											border="0" />增加</a></span> &nbsp;&nbsp;
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
								<table width="99%" border="0" align="center" cellpadding="0"
									cellspacing="1" bgcolor="#CECECE">
									<tr>
										<td  height="18" background="admin/tab/images/tab_14.gif" class="STYLE1">
											<div align="center" class="STYLE2 STYLE1">
												标题
											</div>
										</td>
										<td width="20%" height="18"
											background="admin/tab/images/tab_14.gif" class="STYLE1">
											<div align="center" class="STYLE2 STYLE1">
												企业
											</div>
										</td>
										<td width="6%" height="18"
											background="admin/tab/images/tab_14.gif" class="STYLE1">
											<div align="center" class="STYLE2 STYLE1">
												地区
											</div>
										</td>
										<td width="6%" height="18"
											background="admin/tab/images/tab_14.gif" class="STYLE1">
											<div align="center" class="STYLE2 STYLE1">
												栏目
											</div>
										</td>
										<td width="10%" height="18"
											background="admin/tab/images/tab_14.gif" class="STYLE1">
											<div align="center" class="STYLE2 STYLE1">
												广告类型
											</div>
										</td>
										<td width="5%" height="18"
											background="admin/tab/images/tab_14.gif" class="STYLE1">
											<div align="center" class="STYLE2 STYLE1">
												排序
											</div>
										</td>
										<td width="150px" height="18"
											background="admin/tab/images/tab_14.gif" class="STYLE1">
											<div align="center" class="STYLE2">
												操作
											</div>
										</td>
									</tr>
									<c:forEach items="${adList}" var="ad">
										<tr>
											<td height="18" bgcolor="#FFFFFF">
												<div align="left" class="STYLE2 STYLE1">
													&nbsp;&nbsp;${ad.title}
												</div>
											</td>
											<td height="18" bgcolor="#FFFFFF">
												<div align="center" class="STYLE2 STYLE1">
													${ad.unit.name}
												</div>
											</td>
											<td height="18" bgcolor="#FFFFFF">
												<div align="center" class="STYLE2 STYLE1">
													${ad.city.city}
												</div>
											</td>
											<td height="18" bgcolor="#FFFFFF">
												<div align="center" class="STYLE2 STYLE1">
													${ad.category.name}
												</div>
											</td>
											<td height="18" bgcolor="#FFFFFF">
												<div align="center" class="STYLE2 STYLE1">
												<c:if test="${ad.type == '1'}">
													文字推荐 
												</c:if>
												<c:if test="${ad.type == '2'}">
													图片推荐
												</c:if>
												
												</div>
											</td>
											<td height="18" bgcolor="#FFFFFF">
												<div align="center" class="STYLE2 STYLE1">
													<c:if test="${session_ad_commend_cycle==1&&session_ad_type==1}">
														${ad.orderIndexTextOne}
													</c:if>
													<c:if test="${session_ad_commend_cycle==2&&session_ad_type==1}">
														${ad.orderIndexTextTwo}
													</c:if>
													<c:if test="${session_ad_commend_cycle==3&&session_ad_type==1}">
														${ad.orderIndexTextThree}
													</c:if>
													<c:if test="${session_ad_commend_cycle==4&&session_ad_type==1}">
														${ad.orderIndexTextFour}
													</c:if>
													<c:if test="${session_ad_commend_cycle==5&&session_ad_type==1}">
														${ad.orderIndexTextFive}
													</c:if>
													<c:if test="${session_ad_commend_cycle==1&&session_ad_type==2}">
														${ad.orderIndexPicOne}
													</c:if>
													<c:if test="${session_ad_commend_cycle==2&&session_ad_type==2}">
														${ad.orderIndexPicTwo}
													</c:if>
													<c:if test="${session_ad_commend_cycle==3&&session_ad_type==2}">
														${ad.orderIndexPicThree}
													</c:if>
													<c:if test="${session_ad_commend_cycle==4&&session_ad_type==2}">
														${ad.orderIndexPicFour}
													</c:if>
													<c:if test="${session_ad_commend_cycle==5&&session_ad_type==2}">
														${ad.orderIndexPicFive}
													</c:if>
												</div>
											</td>
											<td height="18" bgcolor="#FFFFFF">
												<div align="center">
													<img src="admin/tab/images/011.gif" width="9" height="9" />
													<span class="STYLE1"> [<a
														href="system/ad!toSee?adInfo.id=${ad.id}">查看</a>
													</span><span class="STYLE1">]&nbsp;&nbsp;&nbsp;&nbsp;<img
															src="admin/tab/images/037.gif" width="9" height="9" /><span
														class="STYLE1"> [</span><a
														href="system/ad!toCommendEdit?adInfo.id=${ad.id}"">推荐编辑</a><span
														class="STYLE1">]</span> </span>
												</div>
											</td>
										</tr>
									</c:forEach>
									<s:if test="adList==null||adList.size==0">
											<td height="18" bgcolor="#FFFFFF" class="STYLE2" colspan="7"><div align="center" class="STYLE2 STYLE1">暂无数据...</div></td>
									</s:if>
								</table>
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
							<td background="admin/tab/images/tab_21.gif"
								class="STYLE2 STYLE1">

								&nbsp;
							</td>
							<td width="14">
								<img src="admin/tab/images/tab_22.gif" width="14" height="29" />
							</td>
						</tr>
					</table>
					&nbsp;&nbsp;<span class="attention">注意：前台页面只显示前
												<c:if test="${session_ad_type == '1'}">
													<%=textCount %>
												</c:if>
												<c:if test="${session_ad_type == '2'}">
													<%=picCount %>
												</c:if>
					条信息</span>
				</td>
			</tr>
		</table>
	</body>
</html>

