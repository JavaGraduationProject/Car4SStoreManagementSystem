<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>����</title>
<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
<link rel="stylesheet" href="images/bootstrap.min.css" type="text/css">
    

  </head>

  <body >
  <p>���������б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:��������:
     <input name="pinglunneirong" type="text" class="form-control2"  id="pinglunneirong" />
     ������
     <input name="pinglunren" type="text" class="form-control2" id="pinglunren" />
     <input type="submit" name="Submit" value="����" class="btn btn-info btn-small" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#F3F3F3" class="table table-striped table-bordered table-hover">  
  <tr>
    <td width="37" height="47" align="center" bgcolor="#E6E6E6">���</td>
    <td width="735" bgcolor="#E6E6E6">��������</td><td width="558" bgcolor="#E6E6E6">������</td>
    <td width="128" align="center" bgcolor="#E6E6E6">����ʱ��</td>
    
    <td width="52" align="center" bgcolor="#E6E6E6">����</td>
  </tr>
 <% 
 	new CommDAO().delete(request,"pinglun"); 
	String id=request.getParameter("id");
    String url = "pinglun_list.jsp?id="+id; 
    String sql =  "select * from pinglun where biao='"+request.getParameter("biao")+"' and xinwenID="+id;
if(request.getParameter("pinglunneirong")=="" ||request.getParameter("pinglunneirong")==null ){}else{sql=sql+" and pinglunneirong like '%"+request.getParameter("pinglunneirong")+"%'";}
if(request.getParameter("pinglunren")=="" ||request.getParameter("pinglunren")==null ){}else{sql=sql+" and pinglunren like '%"+request.getParameter("pinglunren")+"%'";}

    sql+=" order by id desc";
	//out.print(sql);
	ArrayList<HashMap> list = PageManager.getPages(url,20,sql, request ); 
	int i=0;
	for(HashMap map:list){ 
	i++;
     %>
  <tr>
    <td width="37" height="42" align="center"><%=i %></td>
    <td><%= map.get("pinglunneirong")%></td><td><%= map.get("pinglunren")%></td>
    <td width="128" align="center"><%=map.get("addtime") %></td>
    <td width="150" align="center">
	
	     <%
if (request.getSession().getAttribute("cx").equals("��������Ա")) {%> 

<a  class="btn btn-warning"  href="pinglun_list.jsp?scid=<%= map.get("id")%>" onClick="return confirm('���Ҫɾ����')"><i class="glyphicon glyphicon-wrench" > </i>ɾ��</a>



<%}%>
	 <a class="btn btn-info btn-small" href="<%=map.get("biao")%>detail.jsp?id=<%=map.get("xinwenID")%>" target="_blank">��ϸ</a>
	</td>
  </tr>
  	<%
  }
   %>
</table>
<br>
�������ݹ�<%=i %>��,<a style="cursor:pointer" onClick="javascript:window.print();"> </a>
  </body>
</html>

