<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>员工新增</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/jquery-easyui-1.3.3/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/jquery-easyui-1.3.3/themes/icon.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/locale/easyui-lang-zh_CN.js"></script>
	
<script type="text/javascript">
	$(function() {

		//插件的调用  

		$("#datepicker").datepicker({

			//在这里进行插件的属性设置  
			altField : "#alternate",

			altFormat : "DD, d MM, yy"
		});

	});
</script>
</head>
<body>
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<tr>
			<td width="17" valign="top"
				background="/factory/images/mail_leftbg.gif"><img
				src="/factory/images/left-top-right.gif" width="17" height="29" /></td>
			<td valign="top" background="/factory/images/content-bg.gif"><table
					width="100%" height="31" border="0" cellpadding="0" cellspacing="0"
					class="left_topbg" id="table2">
					<tr>
						<td height="31"><div class="titlebt">新增员工</div></td>
					</tr>
				</table></td>
			<td width="16" valign="top"
				background="/factory/images/mail_rightbg.gif"><img
				src="/factory/images/nav-right-bg.gif" width="16" height="29" /></td>
		</tr>
		<tr>
			<td valign="middle" background="/factory/images/mail_leftbg.gif">&nbsp;</td>
			<td bgcolor="#F7F8F9"></td>
			<td background="/factory/images/mail_rightbg.gif">&nbsp;</td>
		</tr>
		<tr>
			<td valign="middle" background="/factory/images/mail_leftbg.gif">&nbsp;</td>
			<td valign="top" bgcolor="#F7F8F9">


				<form action="staffAdd.htm" method="post" name="f1"
					onsubmit="return ck()">
					<table width="98%" align="center" border="0" cellpadding="3"
						cellspacing="1" bgcolor="#CBD8AC" class="left_txt">

						<tr>
							<td bgcolor="#ffffff" align="right">员工编号：</td>
							<td bgcolor="#ffffff"><input type="text" id="uno" name="uno"
								value="" readonly==true />(编号由系统自动生成,不可手动输入)</td>
						</tr>
						<tr>
							<td align="right" bgcolor="#ffffff">员工姓名：</td>
							<td bgcolor="#ffffff"><input type="text" id="tname"
								name="name" /></td>
						</tr>
						<tr>
							<td bgcolor="#ffffff" align="right">性别：</td>
							<td bgcolor="#ffffff"><select id="sex" name="sex">
									<option value="男">男</option>
									<option value="女">女</option>
							</select></td>
						</tr>
						<tr>
							<td align="right" bgcolor="#ffffff">年龄：</td>
							<td bgcolor="#ffffff"><input type="text" id="age" name="age" /></td>
						</tr>

						<tr>
							<td bgcolor="#ffffff" align="right">手机号：</td>
							<td bgcolor="#ffffff"><input type="text" id="tel"
								name="telephone" /></td>
						</tr>

						<tr>
							<td align="right" bgcolor="#ffffff">住址：</td>
							<td bgcolor="#ffffff"><input type="text" id="address"
								name="addr" /></td>
						</tr>
						<tr>
							<td bgcolor="#ffffff" align="right">岗位：</td>
							<td bgcolor="#ffffff"><select id="bm" name="job">
									<option value="">--请选择--</option>
									<option value="开发部">开发部</option>
									<option value="测试部">测试部</option>
									<option value="后勤部">后勤部</option>
							</select></td>
						</tr>
						<tr>
							<td bgcolor="#ffffff" align="right">岗位系数</td>
							<td bgcolor="#ffffff"><select id="zw" name="zw">
									<option value="">--请选择--</option>
									<option value="1.22">1.22</option>
							</select></td>
						</tr>
						<tr>
							<td bgcolor="#ffffff" align="right">员工状态</td>
							<td bgcolor="#ffffff"><select id="zw" name="zw">
									<option value="">试用</option>
							</select></td>
						</tr>
						<tr>
							<td align="right" bgcolor="#ffffff">银行卡号：</td>
							<td bgcolor="#ffffff"><input type="text" id="cardno"
								name="bankcardNo" /></td>
						</tr>
						<tr>
							<td bgcolor="#ffffff" align="right">入职年份：</td>
							<td bgcolor="#ffffff"><input type="text" class="easyui-datebox" /></td>
						</tr>

						<tr>
							<td align="right" bgcolor="#ffffff"><input type="submit"
								value="提交" /></td>
							<td bgcolor="#ffffff"><input type="reset" value="重置" /></td>
						</tr>

					</table>
				</form>

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