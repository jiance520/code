<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
	function ck(){
		return false;
	}
	
	function vcode(obj){
	 	obj.src="<%=basePath%>" + "ImageAction?now=" + new Date();
	}
	</script>
  </head>
  <body>
           登 录页面<br>
    <p> <a href="javascript:void(0)"> 注 册</a></p>
    <form action="index.jsp" method="post" onsubmit="return false">
    <p><label>user:&nbsp;</label><input type="text" size="20" id ="user" name="user" value=""/></p>
    <p><label>password:&nbsp;</label><input type="password" size="20" id ="password" name="password" value=""/></p>
    <p><label>验证码:&nbsp;</label><img height="25" src="<%=basePath%>ImageAction" width="75" alt="单击刷新" title="单击刷新" id="code" onclick="vcode(this)"/></p>
    <p><input type="submit" value="登 录" /></p>
    </form>
    
  </body>
</html>
