<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=gouwuche.xls");
%>
<html>
  <head>
    <title>���ﳵ</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
  </head>

  <body >
  <p>���й��ﳵ�б�</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#F3F3F3" class="table table-striped table-bordered table-hover">  
  <tr>
    <td width="30" align="center" bgcolor='#E6E6E6'>���</td>
    <td bgcolor='#E6E6E6'>���</td>
    <td bgcolor='#E6E6E6'>��Ʒ���</td>
    <td bgcolor='#E6E6E6'>��Ʒ����</td>
    <td bgcolor='#E6E6E6'>��Ʒ���</td>
    <td bgcolor='#E6E6E6'>Ʒ��</td>
    <td bgcolor='#E6E6E6'>���ۼ۸�</td>
    <td bgcolor='#E6E6E6'>����</td>
    <td bgcolor='#E6E6E6'>�ܽ��</td>
    <td bgcolor='#E6E6E6'>�û���</td>
    <td bgcolor='#E6E6E6' width='80' align='center'>�Ƿ����</td>
    <td width="138" align="center" bgcolor='#E6E6E6'>���ʱ��</td>
  </tr>
  <% 

    String url = "gouwuche_list.jsp?1=1"; 
    String sql =  "select * from gouwuche where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;

     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("bianhao") %></td>
    <td><%=map.get("shangpinbianhao") %></td>
    <td><%=map.get("shangpinmingcheng") %></td>
    <td><%=map.get("shangpinleibie") %></td>
    <td><%=map.get("pinpai") %></td>
    <td><%=map.get("xiaoshoujiage") %></td>
    <td><%=map.get("shuliang") %></td>
    <td><%=map.get("zongjine") %></td>
    <td><%=map.get("yonghuming") %></td>
    <td align='center'><a class="btn btn-info btn-small" href="sh.jsp?id=<%=map.get("id")%>&yuan=<%=map.get("issh")%>&tablename=gouwuche" onClick="return confirm('��ȷ��Ҫִ�д˲�����')"><%=map.get("issh")%></a></td>
    <td width="138" align="center"><%=map.get("addtime") %></td>
  </tr>
  	<%
  }
   %>
</table>

<br>
�������ݹ�<%=i %>��
  </body>
</html>

