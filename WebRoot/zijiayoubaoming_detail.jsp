<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�Լ��α�����ϸ</title>
    <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"zijiayoubaoming");
     %>
  �Լ��α�����ϸ:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >  
   <tr>
     <td width='11%'>�����ţ�</td><td width='39%'><%=m.get("dingdanhao")%></td><td width='11%'>��ţ�</td><td width='39%'><%=m.get("bianhao")%></td></tr><tr><td width='11%'>·�����ƣ�</td><td width='39%'><%=m.get("luxianmingcheng")%></td><td width='11%'>�������ã�</td><td width='39%'><%=m.get("baomingfeiyong")%></td></tr><tr><td width='11%'>·����̣�</td><td width='39%'><%=m.get("luxianlicheng")%></td><td width='11%'>�û�����</td><td width='39%'><%=m.get("yonghuming")%></td></tr><tr><td width='11%'>������</td><td width='39%'><%=m.get("xingming")%></td><td width='11%'>�Ա�</td><td width='39%'><%=m.get("xingbie")%></td></tr><tr><td width='11%'>�绰��</td><td width='39%'><%=m.get("dianhua")%></td><td width='11%'>���ƺţ�</td><td width='39%'><%=m.get("chepaihao")%></td></tr><tr><td width='11%'>�����ͺţ�</td><td width='39%'><%=m.get("cheliangxinghao")%></td><td width='11%'>��ע��</td><td width='39%'><%=m.get("beizhu")%></td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=���� onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=��ӡ onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>



