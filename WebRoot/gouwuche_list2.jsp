<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>���ﳵ</title>
	 <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>���й��ﳵ�б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:   ��Ʒ���ƣ�
   <input name="shangpinmingcheng" type="text" id="shangpinmingcheng" class="form-control2"  />
     <input type="submit" name="Submit" value="����" class="btn btn-info btn-small" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#F3F3F3" class="table table-striped table-bordered table-hover">  
  <tr>
    <td width='192' height="46" align='center' bgcolor='#E6E6E6'>ͼƬ</td>
    <td width="170" align="center" bgcolor='#E6E6E6'>��Ʒ����</td>
    <td width="171" align="center" bgcolor='#E6E6E6'>��Ʒ���</td>
    <td width="240" align="center" bgcolor='#E6E6E6'>���ۼ۸�</td>
    <td width="99" align="center" bgcolor='#E6E6E6'>����</td>
    <td width="185" align="center" bgcolor='#E6E6E6'>�ܽ��</td>
    <td width="335" align="center" bgcolor='#E6E6E6'>����</td>
  </tr>
 <% 
  	double zongjinez=0;


  	 new CommDAO().delete(request,"gouwuche"); 
    String url = "gouwuche_list2.jsp?1=1"; 
    String sql =  "select * from gouwuche where yonghuming='"+request.getSession().getAttribute("username")+"' and issh='δ�µ�' ";
	
if(request.getParameter("bianhao")=="" ||request.getParameter("bianhao")==null ){}else{sql=sql+" and bianhao like '%"+request.getParameter("bianhao")+"%'";}
if(request.getParameter("shangpinmingcheng")=="" ||request.getParameter("shangpinmingcheng")==null ){}else{sql=sql+" and shangpinmingcheng like '%"+request.getParameter("shangpinmingcheng")+"%'";}
    sql+=" order by id desc";
	String sql2= "select * from gouwuche where yonghuming='"+request.getSession().getAttribute("username")+"' and issh='δ�µ�'";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	ArrayList<HashMap> list2 = PageManager.getPages(url,15,sql2, request); 
	int i=0;
	for(HashMap map:list2){ 
	i++;
	//wxflzhistri
	zongjinez=zongjinez+Float.valueOf((String)map.get("zongjine")).floatValue();
	}
	for(HashMap map:list){ 
	i++;
     %>
  <tr>
    <td width='192' align='center'><a  href='<%=map.get("tupian") %>' target='_blank'><img src='<%=map.get("tupian") %>' width=88 height=99 border=0 /></a></td>
    <td align="center"><%=map.get("shangpinmingcheng") %></td>
 <td align="center"><%=map.get("shangpinleibie") %></td>
 <td align="center"><%=map.get("xiaoshoujiage") %></td>
 <td align="center"><%=map.get("shuliang") %></td>
 <td align="center"><%=map.get("zongjine") %></td>
 <td width="335" align="center">     <a class="btn btn-info btn-small" href="gouwuche_list2.jsp?scid=<%=map.get("id") %>" onClick="return confirm('���Ҫɾ����')">ɾ��</a>   </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
δ�µ��ܽ��:<%=zongjinez%>��  
<% if(zongjinez>0) {%>
<input type="submit" name="Submit2" value="���ɶ���" onClick="location.href='dingdanxinxi_add.jsp?zongjinez=<%= zongjinez%>'" style='border:solid 1px #000000;' /><%}%>
<p class="fy">${page.info }</p>


  </body>
</html>

