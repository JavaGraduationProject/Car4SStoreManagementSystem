<%@ page language="java"  pageEncoding="gb2312"%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>����4s�����ϵͳ</title>
    <link rel="stylesheet" href="images/layui/css/layui.css" media="all">
    <script src="images/layui/layui.js"></script>
    <script src="images/js/jquery-1.9.1.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">����4s�����ϵͳ</div>
        <ul class="layui-nav layui-layout-left">
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <img src="images/touxiang.jpg" class="layui-nav-img">
                    <%=request.getSession().getAttribute("username")%>
                </a>
                <dl class="layui-nav-child">
                    <dd><a>Ȩ�ޣ�[<%=request.getSession().getAttribute("cx")%>]</a></dd>
                    
                </dl>
            </li>
			 <li class="layui-nav-item"><a href="index.jsp">������ҳ</a></li>
            <li class="layui-nav-item"><a href="logout.jsp">�˳���¼</a></li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
		 <ul class="layui-nav layui-nav-tree" lay-filter="test">
					                        <%
if (request.getSession().getAttribute("cx").equals("��������Ա") || request.getSession().getAttribute("cx").equals("��ͨ����Ա")){%><%@ include file="left_guanliyuan.jsp"%><%}
if (request.getSession().getAttribute("cx").equals("��Ա")){%><%@ include file="left_huiyuan.jsp"%><%}
if (request.getSession().getAttribute("cx").equals("Ա��")){%><%@ include file="left_yuangong.jsp"%><%}
if (request.getSession().getAttribute("cx").equals("ע���û�")){%><%@ include file="left_zhuceyonghu.jsp"%><%}

%>
            </ul>
        </div>
    </div>

    <div class="layui-body">
        <div style="padding: 0px;height: 100%;width: 100%;">
            <iframe src="sy/sy.jsp" name="hsgmain" style="border: 0px solid blue;height: 100%;width: 100%;scrolling:auto;"></iframe>
        </div>
    </div>

    <div class="layui-footer">
        @ ����4s�����ϵͳ ��ӭʹ�ñ�ϵͳ
    </div>
</div>

<script>
    layui.use('element', function () {
        var element = layui.element;
    });
</script>
</body>
</html>
