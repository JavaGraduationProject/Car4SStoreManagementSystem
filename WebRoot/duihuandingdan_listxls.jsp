<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=duihuandingdan.xls");
%>
<html>
  <head>
    <title>�һ�����</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
  </head>

  <body >
  <p>���жһ������б�</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#F3F3F3" class="table table-striped table-bordered table-hover">  
  <tr>
    <td width="30" align="center" bgcolor='#E6E6E6'>���</td>
    <td width="193" align="center" bgcolor='#E6E6E6'>��Ʒ����</td>
    <td width="126" align="center" bgcolor='#E6E6E6'>�������</td>
    <td width="172" align="center" bgcolor='#E6E6E6'>�һ�����</td>
    <td width="167" align="center" bgcolor='#E6E6E6'>���ƻ���</td>
    <td width="92" bgcolor='#E6E6E6'>����</td>
    <td width="92" bgcolor='#E6E6E6'>����</td>
    <td width="87" bgcolor='#E6E6E6'>�ֻ�</td>
    <td width="117" bgcolor='#E6E6E6'>��ַ</td>
    <td width="138" align="center" bgcolor='#E6E6E6'>���ʱ��</td>
  </tr>
  <% 

    String url = "duihuandingdan_list.jsp?1=1"; 
    String sql =  "select * from duihuandingdan where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;

     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td align="center"><%=map.get("shangpinmingcheng") %></td>
    <td align="center"><%=map.get("suoxujifen") %></td>
    <td align="center"><%=map.get("shuliang") %></td>
    <td align="center"><%=map.get("gongjijifen") %></td>
    <td><%=map.get("xingming") %></td>
    <td><%=map.get("jifen") %></td>
    <td><%=map.get("shouji") %></td>
    <td><%=map.get("dizhi") %></td>
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

