<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>������Ʒ��ϸ</title>
    <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"jifenshangpin");
     %>
  ������Ʒ��ϸ:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >  
   <tr>
     <td width='11%' height=44>��Ʒ��ţ�</td><td width='39%'><%=m.get("shangpinbianhao")%></td>
<td  rowspan=6 align=center><a href=<%=m.get("tupian")%> target=_blank><img src=<%=m.get("tupian")%> width=228 height=215 border=0></a></td></tr><tr>
<td width='11%' height=44>��Ʒ���ƣ�</td><td width='39%'><%=m.get("shangpinmingcheng")%></td>
</tr><tr>
<td width='11%' height=44>��Ʒ���</td><td width='39%'><%=m.get("shangpinleibie")%></td>
</tr><tr>
<td width='11%' height=44>Ʒ�ƣ�</td><td width='39%'><%=m.get("pinpai")%></td>
</tr><tr>
<td width='11%' height=44>������֣�</td><td width='39%'><%=m.get("suoxujifen")%></td>
</tr><tr>
<td width='11%' height=47>������</td>
<td width='39%'><%=m.get("xiaoliang")%></td>
</tr>
<tr>


<td width='11%' height=100  >��Ʒ��飺</td><td width='39%' colspan=2 height=100 ><%=m.get("shangpinjianjie")%></td></tr><tr><td colspan=3 align=center><input type=button name=Submit5 value=���� onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=��ӡ onClick="javascript:window.print()" /></td></tr>
  </table>

  </body>
</html>



