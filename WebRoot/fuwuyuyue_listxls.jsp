<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=fuwuyuyue.xls");
%>
<html>
  <head>
    <title>����ԤԼ</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
  </head>

  <body >
  <p>���з���ԤԼ�б�</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#F3F3F3" class="table table-striped table-bordered table-hover">  
  <tr>
    <td width="30" align="center" bgcolor='#E6E6E6'>���</td>
    <td bgcolor='#E6E6E6'>ԤԼ����</td>
    <td bgcolor='#E6E6E6' width='65' align='center'>ԤԼ����</td>
    <td bgcolor='#E6E6E6'>ԤԼ����</td>
    <td bgcolor='#E6E6E6'>���ƺ�</td>
    <td bgcolor='#E6E6E6'>Ʒ��</td>
    <td bgcolor='#E6E6E6'>��������</td>
    <td bgcolor='#E6E6E6'>����</td>
    <td bgcolor='#E6E6E6'>������ʽ</td>
    <td bgcolor='#E6E6E6'>������ʽ</td>
    <td bgcolor='#E6E6E6'>�û���</td>
    <td bgcolor='#E6E6E6'>����</td>
    <td bgcolor='#E6E6E6'>��ϵ�绰</td>
    <td bgcolor='#E6E6E6'>״̬</td>
    
    
    <td width="138" align="center" bgcolor='#E6E6E6'>���ʱ��</td>
    

  </tr>
  <% 

    String url = "fuwuyuyue_list.jsp?1=1"; 
    String sql =  "select * from fuwuyuyue where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;

     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("yuyuedanhao") %></td>
    <td><%=map.get("yuyueriqi") %></td>
    <td><%=map.get("yuyueleixing") %></td>
    <td><%=map.get("chepaihao") %></td>
    <td><%=map.get("pinpai") %></td>
    <td><%=map.get("cheliangmingcheng") %></td>
    <td><%=map.get("chexing") %></td>
    <td><%=map.get("qudongfangshi") %></td>
    <td><%=map.get("huandangfangshi") %></td>
    <td><%=map.get("yonghuming") %></td>
    <td><%=map.get("xingming") %></td>
    <td><%=map.get("lianxidianhua") %></td>
    <td><%=map.get("zhuangtai") %></td>
    
    
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

