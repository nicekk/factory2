<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
	function openTab(text,url,iconCls) {
		if($("#tabs").tabs("exists",text)) {
			$("#tabs").tabs("select",text);
		} else {
			var content = "<iframe frameborder=0 scrolling='auto' style='width:100%;height:100%' src='${pageContext.request.contextPath}/admin/" + url + "'></iframe>"
			$("#tabs").tabs("add",{
				title:text,
				iconCls:iconCls,
				closable:true,
				content:content
			});
		}
	} 
</script>
</head>
<body class="easyui-layout">

	<div region="north" style="height: 78px;background-color:  #E0ECFF">
		<table style="padding:5px" width="100%">
			<tr>
				<td width="50%">
					<font size="5"><strong>基于计件制的企业工资核算系统</strong></font>
				</td>
				<td>
					<font size="3">欢迎您:&nbsp;${currentUser.username }</font>
				</td>
			</tr>
		</table>
	</div>
	<div region="center">
		<div class="easyui-tabs" fit="true" border="false" id="tabs">
			<div title="首页" data-options="iconCls:'icon-home'">
				<div align="center" style="padding-top: 100px">
					<font color="red" size="10">欢迎使用计件制企业工资核算系统</font>
				</div>
			</div>
		</div>
	</div>
	<div region="west" style="width: 200px" title="导航菜单" split="true">
		<div class="easyui-accordion" data-options="fit:true,border:false">
			<div title="规章奖惩制度" data-options="iconCls:'icon-hot'" style="padding: 10px">
				<a class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-detail'">制度公告</a>
			</div>
	
			<div title="员工信息管理" selected="true" data-options="iconCls:'icon-user'" style="padding:10px;">
				<a href="javascript:openTab('用户管理','staffList.htm','icon-user')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-detail'" style="width: 150px;">员工列表</a>
				<a href="javascript:openTab('新增员工','staffAdd.jsp','icon-userManage')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-userManage'" style="width: 150px;">新增员工</a>
			</div>
			<div title="绩效考核管理"  data-options="iconCls:'icon-notice'" style="padding:10px">
				<a href="" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-manage'" style="width: 150px;">日生产量录入</a>
				<a href="" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-manage'" style="width: 150px;">日考勤录入</a>
			</div>
			<div title="薪酬福利管理" data-options="iconCls:'icon-order'" style="padding:10px">
				<a href="" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-order'" style="width: 150px;">薪酬福利查询</a>
			</div>
			<div title="系统信息管理"  data-options="iconCls:'icon-manage'" style="padding:10px">
				<a href="" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-manage'" style="width: 150px;">系统管理员</a>
				<a href="" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-manage'" style="width: 150px;">新增管理员</a>
			</div>
		</div>
	</div>
	<div region="south" style="height: 25px; padding: 5px;" align="center">
		版权所有2016 企业工资核算系统
	</div>
</body>
</html>