<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>���ֲ����ϸ</title>
    <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"julebuhuodong");
     %>
  ���ֲ����ϸ:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >  
   <tr>
     <td width='11%'>����ƣ�</td><td width='39%'><%=m.get("huodongmingcheng")%></td><td width='11%'>���ֲ����ƣ�</td><td width='39%'><%=m.get("julebumingcheng")%></td></tr><tr><td width='11%'>��ϵ�绰��</td><td width='39%'><%=m.get("lianxidianhua")%></td><td width='11%'>�ʱ�䣺</td><td width='39%'><%=m.get("huodongshijian")%></td></tr><tr><td width='11%'>��ص㣺</td><td width='39%'><%=m.get("huodongdidian")%></td><td width='11%'>���飺</td><td width='39%'><%=m.get("huodongjianjie")%></td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=���� onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=��ӡ onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>



