<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>Ա����Ϣ</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
<link rel="stylesheet" href="images/bootstrap.min.css" type="text/css">
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>����Ա����Ϣ�б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  Ա�����ţ�<input name="yuangonggonghao" type="text" id="yuangonggonghao" class="form-control2" />  Ա��������<input name="yuangongxingming" type="text" id="yuangongxingming" class="form-control2" /> �Ա�<select name='xingbie' id='xingbie' class="form-control2"><option value="">����</option><option value="��">��</option><option value="Ů">Ů</option></select>  �绰��<input name="dianhua" type="text" id="dianhua" class="form-control2" />
   <input type="submit" name="Submit" value="����" class="btn btn-info btn-small" /> <input type="button" name="Submit2" value="����EXCEL" class="btn btn-info btn-small" onClick="javascript:location.href='yuangongxinxi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#F3F3F3" class="table table-striped table-bordered table-hover">  
  <tr>
    <td width="35" height="50" align="center" bgcolor="#E6E6E6">���</td>
    <td bgcolor='#E6E6E6'>Ա������</td>
    <td bgcolor='#E6E6E6'>����</td>
    <td bgcolor='#E6E6E6'>Ա������</td>
    <td bgcolor='#E6E6E6' width='40' align='center'>�Ա�</td>
    <td bgcolor='#E6E6E6'>����</td>
    <td bgcolor='#E6E6E6'>�绰</td>
    <td bgcolor='#E6E6E6' width='90' align='center'>��Ƭ</td>
    <td bgcolor='#E6E6E6'>ְ��</td>
    
    
	<td width="90" align="center" bgcolor="#E6E6E6">���۹���</td>
    <td width="138" height="50" align="center" bgcolor="#E6E6E6">���ʱ��</td>
    
    <td width="260" height="50" align="center" bgcolor="#E6E6E6">����</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"yuangongxinxi"); 
    String url = "yuangongxinxi_list.jsp?1=1"; 
    String sql =  "select * from yuangongxinxi where 1=1";
	
if(request.getParameter("yuangonggonghao")=="" ||request.getParameter("yuangonggonghao")==null ){}else{sql=sql+" and yuangonggonghao like '%"+request.getParameter("yuangonggonghao")+"%'";}
if(request.getParameter("yuangongxingming")=="" ||request.getParameter("yuangongxingming")==null ){}else{sql=sql+" and yuangongxingming like '%"+request.getParameter("yuangongxingming")+"%'";}
if(request.getParameter("xingbie")=="" ||request.getParameter("xingbie")==null ){}else{sql=sql+" and xingbie like '%"+request.getParameter("xingbie")+"%'";}
if(request.getParameter("dianhua")=="" ||request.getParameter("dianhua")==null ){}else{sql=sql+" and dianhua like '%"+request.getParameter("dianhua")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="35" height="50" align="center"><%=i %></td>
    <td><%=map.get("yuangonggonghao") %></td>
    <td><%=map.get("mima") %></td>
    <td><%=map.get("yuangongxingming") %></td>
    <td align='center'><%=map.get("xingbie") %></td>
    <td><%=map.get("nianling") %></td>
    <td><%=map.get("dianhua") %></td>
    <td width='90' align='center'><a  href='<%=map.get("zhaopian") %>' target='_blank'><img src='<%=map.get("zhaopian") %>' width=88 height=99 border=0 /></a></td>
    <td><%=map.get("gangwei") %></td>
    
    
	<td width="90" align="center"><a class="btn btn-success" href="pinglun_list.jsp?id=<%=map.get("id")%>&biao=yuangongxinxi">���۹���</a></td>
    <td width="138" height="50" align="center"><%=map.get("addtime") %></td>
    <td width="220" height="50" align="center"><a class="btn btn-danger btn" href="yuangongxinxi_updt.jsp?id=<%=map.get("id")%>"> <i class="glyphicon glyphicon-pencil" > </i> �޸�</a>  <a class="btn btn-warning" href="yuangongxinxi_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('���Ҫɾ����')"> <i class="glyphicon glyphicon-wrench" > </i> ɾ��</a> <a class="btn btn-info btn-small" href="yuangongxinxidetail.jsp?id=<%=map.get("id")%>" target="_blank"> <i class="glyphicon glyphicon-random" > </i> ��ϸ</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
<p class="fy">${page.info }</p>


  </body>
</html>

