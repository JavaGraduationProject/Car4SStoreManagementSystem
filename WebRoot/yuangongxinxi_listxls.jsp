<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=yuangongxinxi.xls");
%>
<html>
  <head>
    <title>Ա����Ϣ</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
  </head>

  <body >
  <p>����Ա����Ϣ�б�</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#F3F3F3" class="table table-striped table-bordered table-hover">  
  <tr>
    <td width="30" align="center" bgcolor='#E6E6E6'>���</td>
    <td bgcolor='#E6E6E6'>Ա������</td>
    <td bgcolor='#E6E6E6'>����</td>
    <td bgcolor='#E6E6E6'>Ա������</td>
    <td bgcolor='#E6E6E6' width='40' align='center'>�Ա�</td>
    <td bgcolor='#E6E6E6'>����</td>
    <td bgcolor='#E6E6E6'>�绰</td>
    <td bgcolor='#E6E6E6' width='90' align='center'>��Ƭ</td>
    <td bgcolor='#E6E6E6'>ְ��</td>
    
    
    <td width="138" align="center" bgcolor='#E6E6E6'>���ʱ��</td>
    

  </tr>
  <% 

    String url = "yuangongxinxi_list.jsp?1=1"; 
    String sql =  "select * from yuangongxinxi where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;

     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("yuangonggonghao") %></td>
    <td><%=map.get("mima") %></td>
    <td><%=map.get("yuangongxingming") %></td>
    <td align='center'><%=map.get("xingbie") %></td>
    <td><%=map.get("nianling") %></td>
    <td><%=map.get("dianhua") %></td>
    <td width='90' align='center'><a class="btn btn-info btn-small" href='<%=map.get("zhaopian") %>' target='_blank'><img src='<%=map.get("zhaopian") %>' width=88 height=99 border=0 /></a></td>
    <td><%=map.get("gangwei") %></td>
    
    
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

