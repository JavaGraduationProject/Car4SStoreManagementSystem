<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!DOCTYPE html>
<html>
<head>
    <title>��̨��¼</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="images/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="images/style/admin.css" media="all">
    <link rel="stylesheet" href="images/style/login.css" media="all">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>
<script type="text/javascript">
 <%
String error = (String)request.getAttribute("error"); 
if(error!=null)
{
 %>
 alert("�û������������");
 <%}%>
  <%
String random = (String)request.getAttribute("random"); 
if(random!=null)
{
 %>
 alert("��֤�����");
 <%}%>
 popheight = 39;
function check()
{
	if(document.form1.username.value=="" || document.form1.pwd.value=="" || document.form1.rand.value=="")
	{
		alert('����������');
		return false;
	}
}
function loadimage(){ 
document.getElementById("randImage").src = "image.jsp?"+Math.random(); 
} 
</script>
<body style="background: url('images/loginbg.jpg');background-position: center center;background-size: cover;">
<form name="form1"  class="form-horizontal" method="post" action="jspmhz4sdglxthsg5684ANCE?ac=adminlogin&a=a">
<div class="layadmin-user-login layadmin-user-display-show" id="LAY-user-login"
     style="display: none;">

    <div class="layadmin-user-login-main" style="background: rgba(	255,255,255,0.6); border-radius:10px;">
        <div class="layadmin-user-login-box layadmin-user-login-header">
            <h2>��̨��¼</h2>
            <p>����4s�����ϵͳ</p>
        </div>
        <div class="layadmin-user-login-box layadmin-user-login-body layui-form">
            <div class="layui-form-item">
                <label class="layadmin-user-login-icon layui-icon layui-icon-username"
                       for="LAY-user-login-username"></label>
                <input type="text" name="username" id="LAY-user-login-username" lay-verify="required" placeholder="�û���"
                       class="layui-input">
            </div>
            <div class="layui-form-item">
                <label class="layadmin-user-login-icon layui-icon layui-icon-password"
                       for="LAY-user-login-password"></label>
                <input type="password" name="pwd" id="LAY-user-login-password" lay-verify="required"
                       placeholder="����" class="layui-input">
            </div>
			<div class="layui-form-item">
                <label class="layadmin-user-login-icon layui-icon layui-icon-password"
                       for="LAY-user-login-password"></label>
               <select name="cx" id="cx" >
            <option value="����Ա">����Ա</option>
 <option value="Ա��">Ա��</option>
 
            </select>
            </div>
            <div class="layui-form-item">
                <div class="layui-row">
                    <div class="layui-col-xs7">
                        <label class="layadmin-user-login-icon layui-icon layui-icon-vercode"
                               for="LAY-user-login-vercode"></label>
                        <input type="text" name="pagerandom" id="pagerandom" lay-verify="required"
                               placeholder="��֤��" class="layui-input">
                    </div>
                    <div class="layui-col-xs5">
                        <div style="margin-left: 10px;">
                          <a href="javascript:loadimage();"><img alt="����������ң�" name="randImage" id="randImage" src="image.jsp"  class="code"   style="cursor:pointer;width:100px; "> </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="layui-form-item" style="margin-bottom: 20px;">
                
            </div>
            <div class="layui-form-item">
                <button class="layui-btn layui-btn-fluid" lay-submit lay-filter="LAY-user-login-submit" id="loginBtn">��
                    ��
                </button>
            </div>
            
        </div>
    </div>

</div>
	</form>
<script src="images/layui/layui.js"></script>
<script src="images/js/jquery-1.9.1.min.js"></script>
<script>
    layui.use(['element', 'form', 'layer'], function () {
        var element = layui.element;
        var layer = layui.layer;
        var form = layui.form;
        var layer = layui.layer;
       

    });
</script>
</body>
</html>
