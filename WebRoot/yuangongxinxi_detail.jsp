<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>Ա����Ϣ��ϸ</title>
    <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"yuangongxinxi");
     %>
  Ա����Ϣ��ϸ:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >  
   <tr>
     <td width='11%' height=44>Ա�����ţ�</td><td width='39%'><%=m.get("yuangonggonghao")%></td>
<td  rowspan=7 align=center><a href=<%=m.get("zhaopian")%> target=_blank><img src=<%=m.get("zhaopian")%> width=228 height=215 border=0></a></td></tr><tr>
<td width='11%' height=44>���룺</td><td width='39%'><%=m.get("mima")%></td>
</tr><tr>
<td width='11%' height=44>Ա��������</td><td width='39%'><%=m.get("yuangongxingming")%></td>
</tr><tr>
<td width='11%' height=44>�Ա�</td><td width='39%'><%=m.get("xingbie")%></td>
</tr><tr>
<td width='11%' height=44>���䣺</td><td width='39%'><%=m.get("nianling")%></td>
</tr><tr>
<td width='11%' height=44>�绰��</td><td width='39%'><%=m.get("dianhua")%></td>
</tr><tr>

<td width='11%' height=44>ְ�ƣ�</td><td width='39%'><%=m.get("gangwei")%></td>
</tr><tr>

<td width='11%' height=100  >��飺</td><td width='39%' colspan=2 height=100 ><%=m.get("jianjie")%></td></tr><tr><td colspan=3 align=center><input type=button name=Submit5 value=���� onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=��ӡ onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>



