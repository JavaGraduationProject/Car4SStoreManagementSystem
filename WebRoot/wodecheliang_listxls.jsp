<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=wodecheliang.xls");
%>
<html>
  <head>
    <title>�ҵĳ���</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
  </head>

  <body >
  <p>�����ҵĳ����б�</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" >  
  <tr>
    <td width="30" align="center" bgcolor="cccccc">���</td>
    <td bgcolor='#E6E6E6'>���ƺ�</td>    <td bgcolor='#E6E6E6'>Ʒ��</td>    <td bgcolor='#E6E6E6'>��������</td>    <td bgcolor='#E6E6E6'>����</td>    <td bgcolor='#E6E6E6'>������ʽ</td>    <td bgcolor='#E6E6E6'>����</td>    <td bgcolor='#E6E6E6'>������ʽ</td>    <td bgcolor='#E6E6E6' width='90' align='center'>ͼƬ</td>    <td bgcolor='#E6E6E6'>�����</td>    <td bgcolor='#E6E6E6'>��ѹ</td>    <td bgcolor='#E6E6E6'>����</td>    <td bgcolor='#E6E6E6'>�û���</td>    <td bgcolor='#E6E6E6'>����</td>    <td bgcolor='#E6E6E6'>��ϵ�绰</td>    <td bgcolor='#E6E6E6'>�������</td>            
    <td width="138" align="center" bgcolor="cccccc">���ʱ��</td>
    

  </tr>
  <% 

    String url = "wodecheliang_list.jsp?1=1"; 
    String sql =  "select * from wodecheliang where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;

     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("chepaihao") %></td>    <td><%=map.get("pinpai") %></td>    <td><%=map.get("cheliangmingcheng") %></td>    <td><%=map.get("chexing") %></td>    <td><%=map.get("qudongfangshi") %></td>    <td><%=map.get("pailiang") %></td>    <td><%=map.get("huandangfangshi") %></td>    <td width='90' align='center'><a  href='<%=map.get("tupian") %>' target='_blank'><img src='<%=map.get("tupian") %>' width=88 height=99 border=0 /></a></td>    <td><%=map.get("zonglicheng") %></td>    <td><%=map.get("dianya") %></td>    <td><%=map.get("jiyou") %></td>    <td><%=map.get("yonghuming") %></td>    <td><%=map.get("xingming") %></td>    <td><%=map.get("lianxidianhua") %></td>    <td><%=map.get("jianchatixing") %></td>            
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

