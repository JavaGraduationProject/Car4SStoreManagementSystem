<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=julebuhuodong.xls");
%>
<html>
  <head>
    <title>���ֲ��</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
  </head>

  <body >
  <p>���о��ֲ���б�</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#F3F3F3" class="table table-striped table-bordered table-hover">  
  <tr>
    <td width="30" align="center" bgcolor='#E6E6E6'>���</td>
    <td bgcolor='#E6E6E6'>�����</td>
    <td bgcolor='#E6E6E6'>���ֲ�����</td>
    <td bgcolor='#E6E6E6'>��ϵ�绰</td>
    <td bgcolor='#E6E6E6' width='65' align='center'>�ʱ��</td>
    <td bgcolor='#E6E6E6'>��ص�</td>
    
    
    <td width="138" align="center" bgcolor='#E6E6E6'>���ʱ��</td>
    

  </tr>
  <% 

    String url = "julebuhuodong_list.jsp?1=1"; 
    String sql =  "select * from julebuhuodong where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;

     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("huodongmingcheng") %></td>
    <td><%=map.get("julebumingcheng") %></td>
    <td><%=map.get("lianxidianhua") %></td>
    <td><%=map.get("huodongshijian") %></td>
    <td><%=map.get("huodongdidian") %></td>
    
    
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

