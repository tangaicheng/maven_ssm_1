<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- 日期插件，使用jquery -->
		<script type="text/javascript" src="/maven_ssm_05/jquery/jquery-1.4.2.js"></script>
		<link rel="stylesheet" href="/maven_ssm_05/jquery/jquery.datepick.css" type="text/css">
		<script type="text/javascript" src="/maven_ssm_05/jquery/jquery.datepick.js"></script>
		<script type="text/javascript" src="/maven_ssm_05/jquery/jquery.datepick-zh-CN.js"></script>

<script type="text/javascript">
		$(document).ready(function(){
			//使用class属性处理  'yy-mm-dd' 设置格式"yyyy/mm/dd"
			$('#birthday').datepick({dateFormat: 'yy-mm-dd'}); 
		});
	</script>
</head>
<body>
	 <form method="post" action="/maven_ssm_05/customer/addCustomerInfo.action" enctype="multipart/form-data">
	<table width="70%" border="1px solid red">
	<tr>
		<td>注册</td>
		
	</tr>
	<tr>
		<td>客户名称</td>
		<td><input type="text" name="custName"></td>
	</tr>
	<tr>
		<td>来源</td>
		<td><input type="text" name="custSource"></td>
	</tr>
	<tr>
		<td>等级</td>
		<td><input type="text" name="custLevel"></td>
	</tr>
	<tr>
		<td>联系方式</td>
		<td><input type="text" name="custMobile"></td>
	</tr>
	
	<tr>
		<td>生日</td>
		<td><input type="text" id="birthday" name="custBirthday" readonly="readonly"></td>
	</tr>
	<tr>
		<td>个人图片</td>
		<td><input type="file" name="picFile"></td>
	</tr>
	<tr>
		<td>提交</td>
		<td><input type="submit" ></td>
	</tr>
	</table>
  </form>
</body>
</html>