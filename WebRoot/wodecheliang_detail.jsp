<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�ҵĳ�����ϸ</title>
    <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"wodecheliang");
     %>
  �ҵĳ�����ϸ:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >  
   <tr>
     <td width='11%' height=44>���ƺţ�</td><td width='39%'><%=m.get("chepaihao")%></td><td  rowspan=14 align=center><a href=<%=m.get("tupian")%> target=_blank><img src=<%=m.get("tupian")%> width=228 height=215 border=0></a></td></tr><tr><td width='11%' height=44>Ʒ�ƣ�</td><td width='39%'><%=m.get("pinpai")%></td></tr><tr><td width='11%' height=44>�������ƣ�</td><td width='39%'><%=m.get("cheliangmingcheng")%></td></tr><tr><td width='11%' height=44>���ͣ�</td><td width='39%'><%=m.get("chexing")%></td></tr><tr><td width='11%' height=44>������ʽ��</td><td width='39%'><%=m.get("qudongfangshi")%></td></tr><tr><td width='11%' height=44>������</td><td width='39%'><%=m.get("pailiang")%></td></tr><tr><td width='11%' height=44>������ʽ��</td><td width='39%'><%=m.get("huandangfangshi")%></td></tr><tr><td width='11%' height=44>����̣�</td><td width='39%'><%=m.get("zonglicheng")%></td></tr><tr><td width='11%' height=44>��ѹ��</td><td width='39%'><%=m.get("dianya")%></td></tr><tr><td width='11%' height=44>���ͣ�</td><td width='39%'><%=m.get("jiyou")%></td></tr><tr><td width='11%' height=44>�û�����</td><td width='39%'><%=m.get("yonghuming")%></td></tr><tr><td width='11%' height=44>������</td><td width='39%'><%=m.get("xingming")%></td></tr><tr><td width='11%' height=44>��ϵ�绰��</td><td width='39%'><%=m.get("lianxidianhua")%></td></tr><tr><td width='11%' height=44>������ѣ�</td><td width='39%'><%=m.get("jianchatixing")%></td></tr><tr><td width='11%' height=100  >��ע��</td><td width='39%' colspan=2 height=100 ><%=m.get("beizhu")%></td></tr><tr><td width='11%' height=100  >������⣺</td><td width='39%' colspan=2 height=100 ><%=m.get("jiankangjiance")%></td></tr><tr><td colspan=3 align=center><input type=button name=Submit5 value=���� onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=��ӡ onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>



