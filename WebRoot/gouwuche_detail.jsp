<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>���ﳵ��ϸ</title>
    <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"gouwuche");
     %>
  ���ﳵ��ϸ:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >  
   <tr>
     <td width='11%'>��ţ�</td><td width='39%'><%=m.get("bianhao")%></td><td width='11%'>��Ʒ��ţ�</td><td width='39%'><%=m.get("shangpinbianhao")%></td></tr><tr><td width='11%'>��Ʒ���ƣ�</td><td width='39%'><%=m.get("shangpinmingcheng")%></td><td width='11%'>��Ʒ���</td><td width='39%'><%=m.get("shangpinleibie")%></td></tr><tr><td width='11%'>Ʒ�ƣ�</td><td width='39%'><%=m.get("pinpai")%></td><td width='11%'>��棺</td><td width='39%'><%=m.get("kucun")%></td></tr><tr><td width='11%'>���ۼ۸�</td><td width='39%'><%=m.get("xiaoshoujiage")%></td><td width='11%'>������</td><td width='39%'><%=m.get("shuliang")%></td></tr><tr><td width='11%'>�ܽ�</td><td width='39%'><%=m.get("zongjine")%></td><td width='11%'>�û�����</td><td width='39%'><%=m.get("yonghuming")%></td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=���� onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=��ӡ onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>



