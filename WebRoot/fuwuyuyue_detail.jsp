<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>����ԤԼ��ϸ</title>
    <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"fuwuyuyue");
     %>
  ����ԤԼ��ϸ:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >  
   <tr>
     <td width='11%'>ԤԼ���ţ�</td><td width='39%'><%=m.get("yuyuedanhao")%></td><td width='11%'>ԤԼ���ڣ�</td><td width='39%'><%=m.get("yuyueriqi")%></td></tr><tr><td width='11%'>ԤԼ���ͣ�</td><td width='39%'><%=m.get("yuyueleixing")%></td><td width='11%'>���ƺţ�</td><td width='39%'><%=m.get("chepaihao")%></td></tr><tr><td width='11%'>Ʒ�ƣ�</td><td width='39%'><%=m.get("pinpai")%></td><td width='11%'>�������ƣ�</td><td width='39%'><%=m.get("cheliangmingcheng")%></td></tr><tr><td width='11%'>���ͣ�</td><td width='39%'><%=m.get("chexing")%></td><td width='11%'>������ʽ��</td><td width='39%'><%=m.get("qudongfangshi")%></td></tr><tr><td width='11%'>������ʽ��</td><td width='39%'><%=m.get("huandangfangshi")%></td><td width='11%'>�û�����</td><td width='39%'><%=m.get("yonghuming")%></td></tr><tr><td width='11%'>������</td><td width='39%'><%=m.get("xingming")%></td><td width='11%'>��ϵ�绰��</td><td width='39%'><%=m.get("lianxidianhua")%></td></tr><tr><td width='11%'>״̬��</td><td width='39%'><%=m.get("zhuangtai")%></td><td width='11%'>�����ע��</td><td width='39%'><%=m.get("qingkuangbeizhu")%></td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=���� onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=��ӡ onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>



