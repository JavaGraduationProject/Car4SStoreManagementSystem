<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>���ֲ��</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
<link rel="stylesheet" href="images/bootstrap.min.css" type="text/css">
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>���о��ֲ���б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  ����ƣ�<input name="huodongmingcheng" type="text" id="huodongmingcheng" class="form-control2" />  ���ֲ����ƣ�<%=Info.getselect("julebumingcheng","julebuxinxi","julebumingcheng"," 1=1 ")%>  ��ص㣺<input name="huodongdidian" type="text" id="huodongdidian" class="form-control2" />
   <input type="submit" name="Submit" value="����" class="btn btn-info btn-small" /> <input type="button" name="Submit2" value="����EXCEL" class="btn btn-info btn-small" onClick="javascript:location.href='julebuhuodong_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#F3F3F3" class="table table-striped table-bordered table-hover">  
  <tr>
    <td width="35" height="50" align="center" bgcolor="#E6E6E6">���</td>
    <td bgcolor='#E6E6E6'>�����</td>    <td bgcolor='#E6E6E6'>���ֲ�����</td>    <td bgcolor='#E6E6E6'>��ϵ�绰</td>    <td bgcolor='#E6E6E6' width='65' align='center'>�ʱ��</td>    <td bgcolor='#E6E6E6'>��ص�</td>        
	<td width="90" align="center" bgcolor="#E6E6E6">���۹���</td>
    <td width="138" height="50" align="center" bgcolor="#E6E6E6">���ʱ��</td>
    
    <td width="260" height="50" align="center" bgcolor="#E6E6E6">����</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"julebuhuodong"); 
    String url = "julebuhuodong_list.jsp?1=1"; 
    String sql =  "select * from julebuhuodong where 1=1";
	if(request.getParameter("huodongmingcheng")=="" ||request.getParameter("huodongmingcheng")==null ){}else{sql=sql+" and huodongmingcheng like '%"+request.getParameter("huodongmingcheng")+"%'";}if(request.getParameter("julebumingcheng")=="" ||request.getParameter("julebumingcheng")==null ){}else{sql=sql+" and julebumingcheng like '%"+request.getParameter("julebumingcheng")+"%'";}if(request.getParameter("huodongdidian")=="" ||request.getParameter("huodongdidian")==null ){}else{sql=sql+" and huodongdidian like '%"+request.getParameter("huodongdidian")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="35" height="50" align="center"><%=i %></td>
    <td><%=map.get("huodongmingcheng") %></td>    <td><%=map.get("julebumingcheng") %></td>    <td><%=map.get("lianxidianhua") %></td>    <td><%=map.get("huodongshijian") %></td>    <td><%=map.get("huodongdidian") %></td>        
	<td width="90" align="center"><a class="btn btn-success" href="pinglun_list.jsp?id=<%=map.get("id")%>&biao=julebuhuodong">���۹���</a></td>
    <td width="138" height="50" align="center"><%=map.get("addtime") %></td>
    <td width="220" height="50" align="center"><a class="btn btn-danger btn" href="julebuhuodong_updt.jsp?id=<%=map.get("id")%>"> <i class="glyphicon glyphicon-pencil" > </i> �޸�</a>  <a class="btn btn-warning" href="julebuhuodong_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('���Ҫɾ����')"> <i class="glyphicon glyphicon-wrench" > </i> ɾ��</a> <a class="btn btn-info btn-small" href="julebuhuodongdetail.jsp?id=<%=map.get("id")%>" target="_blank"> <i class="glyphicon glyphicon-random" > </i> ��ϸ</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
<p class="fy">${page.info }</p>


  </body>
</html>

