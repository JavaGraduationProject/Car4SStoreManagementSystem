<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>���ֲ���Ϣ��ϸ</title>
    <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"julebuxinxi");
     %>
  ���ֲ���Ϣ��ϸ:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >  
   <tr>
     <td width='11%' height=44>���ֲ����ƣ�</td><td width='39%'><%=m.get("julebumingcheng")%></td><td  rowspan=6 align=center><a href=<%=m.get("cheduiLOGO")%> target=_blank><img src=<%=m.get("cheduiLOGO")%> width=228 height=215 border=0></a></td></tr><tr><td width='11%' height=44>�����ˣ�</td><td width='39%'><%=m.get("chuangbanren")%></td></tr><tr><td width='11%' height=44>����ʱ�䣺</td><td width='39%'><%=m.get("chuangbanshijian")%></td></tr><tr><td width='11%' height=44>��ϵ�绰��</td><td width='39%'><%=m.get("lianxidianhua")%></td></tr><tr><td width='11%' height=44>����������</td><td width='39%'><%=m.get("cheyourenshu")%></td></tr><tr><td width='11%' height=44>�ص㣺</td><td width='39%'><%=m.get("didian")%></td></tr><tr><td width='11%' height=100  >���ֲ���飺</td><td width='39%' colspan=2 height=100 ><%=m.get("julebujianjie")%></td></tr><tr><td colspan=3 align=center><input type=button name=Submit5 value=���� onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=��ӡ onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>



