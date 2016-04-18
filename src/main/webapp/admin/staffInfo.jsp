<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title></title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="/factory/images/skin.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<table width="100%" border="0" cellpadding="0" cellspacing="0"
		bgcolor="#CBD8AC">
		<tr>
			<td width="17" valign="top"
				background="/factory/images/mail_leftbg.gif"><img
				src="/factory/images/left-top-right.gif" width="17" height="29" /></td>
			<td valign="top" background="/factory/images/content-bg.gif"><table
					width="100%" height="31" border="0" cellpadding="0" cellspacing="0"
					class="left_topbg" id="table2">
					<tr>
						<td height="31"><div class="titlebt">员工信息</div></td>
					</tr>
				</table></td>
			<td width="16" valign="top"
				background="/factory/images/mail_rightbg.gif"><img
				src="/factory/images/nav-right-bg.gif" width="16" height="29" /></td>
		</tr>
		<tr>
			<td valign="middle" background="/factory/images/mail_leftbg.gif">&nbsp;</td>
			<td valign="top" bgcolor="#F7F8F9">

				<table width="98%" align="center" border="0" cellpadding="3"
					cellspacing="1" bgcolor="#CBD8AC" class="left_txt">
					<tr bgcolor="#EEF4EA">
						<td align="center" bgcolor="#f2f2f2">编号</td>
						<td align="center" bgcolor="#f2f2f2">姓名</td>
						<td align="center" bgcolor="#f2f2f2">性别</td>
						<td align="center" bgcolor="#f2f2f2">年龄</td>
						<td align="center" bgcolor="#f2f2f2">手机号码</td>
						<td align="center" bgcolor="#f2f2f2">住址</td>
						<td align="center" bgcolor="#f2f2f2">岗位</td>
						<td align="center" bgcolor="#f2f2f2">岗位系数</td>
						<td align="center" bgcolor="#f2f2f2">员工状态</td>
						<td align="center" bgcolor="#f2f2f2">银行卡号</td>
						<td align="center" bgcolor="#f2f2f2">入职时间</td>
						<td align="center" bgcolor="#f2f2f2">工龄</td>
						<td align="center" bgcolor="#f2f2f2">用户名</td>
						<td align="center" bgcolor="#f2f2f2">密码</td>

					</tr>
					<c:forEach var="staff" items="${staffList}">
						<tr bgcolor="#FFFFFF">
							<td align="center">${staff.id}</td>
							<td align="center">${staff.name }</td>
							<td align="center">${staff.sex }</td>
							<td align="center">${staff.age }</td>
							<td align="center">${staff.telephone }</td>
							<td align="center">${staff.address }</td>
							<td align="center">${staff.job }</td>
							<td align="center">${staff.jobQuotiety }</td>
							<td align="center">${staff.status }</td>
							<td align="center">${staff.bankcardNo }</td>
							<fmt:formatDate value="${staff.gmtOnJob}" var="gmtOnJob"
								pattern="yyyy-MM-dd" />
							<td align="center">${gmtOnJob}</td>
							<td align="center">${staff.jobAge }</td>
							<td align="center">${staff.username }</td>
							<td align="center">${staff.password }</td>
						</tr>
					</c:forEach>
				</table>
			</td>
			<td background="/factory/images/mail_rightbg.gif">&nbsp;</td>
		</tr>
		<tr>
			<td valign="bottom" background="/factory/images/mail_leftbg.gif"><img
				src="/factory/images/buttom_left2.gif" width="17" height="17" /></td>
			<td background="/factory/images/buttom_bgs.gif"><img
				src="/factory/images/buttom_bgs.gif" width="17" height="17"></td>
			<td valign="bottom" background="/factory/images/mail_rightbg.gif"><img
				src="/factory/images/buttom_right2.gif" width="16" height="17" /></td>
		</tr>
	</table>
</body>
</html>
