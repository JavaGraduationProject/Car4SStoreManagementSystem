<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>��Ա��Ϣ</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
<link rel="stylesheet" href="images/bootstrap.min.css" type="text/css">
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>���л�Ա��Ϣ�б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  �û�����<input name="yonghuming" type="text" id="yonghuming" class="form-control2" />  ������<input name="xingming" type="text" id="xingming" class="form-control2" /> �Ա�<select name='xingbie' id='xingbie' class="form-control2"><option value="">����</option><option value="��">��</option><option value="Ů">Ů</option></select>  �绰��<input name="dianhua" type="text" id="dianhua" class="form-control2" />  ���֤��<input name="shenfenzheng" type="text" id="shenfenzheng" class="form-control2" />  סַ��<input name="zhuzhi" type="text" id="zhuzhi" class="form-control2" />  ���֣�<input name="jifen1" type="text" id="jifen1"  value='' class="form-control2" />-<input name="jifen2" type="text" id="jifen2"  value='' class="form-control2" />
   <input type="submit" name="Submit" value="����" class="btn btn-info btn-small" /> <input type="button" name="Submit2" value="����EXCEL" class="btn btn-info btn-small" onClick="javascript:location.href='huiyuanxinxi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#F3F3F3" class="table table-striped table-bordered table-hover">  
  <tr>
    <td width="35" height="50" align="center" bgcolor="#E6E6E6">���</td>
    <td bgcolor='#E6E6E6'>�û���</td>    <td bgcolor='#E6E6E6'>����</td>    <td bgcolor='#E6E6E6'>����</td>    <td bgcolor='#E6E6E6' width='40' align='center'>�Ա�</td>    <td bgcolor='#E6E6E6'>�绰</td>    <td bgcolor='#E6E6E6'>���֤</td>    <td bgcolor='#E6E6E6' width='90' align='center'>��Ƭ</td>    <td bgcolor='#E6E6E6'>סַ</td>    <td bgcolor='#E6E6E6'>����</td>        <td bgcolor='#E6E6E6' width='80' align='center'>�Ƿ����</td>
	
    <td width="138" height="50" align="center" bgcolor="#E6E6E6">���ʱ��</td>
    
    <td width="260" height="50" align="center" bgcolor="#E6E6E6">����</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"huiyuanxinxi"); 
    String url = "huiyuanxinxi_list.jsp?1=1"; 
    String sql =  "select * from huiyuanxinxi where 1=1";
	if(request.getParameter("yonghuming")=="" ||request.getParameter("yonghuming")==null ){}else{sql=sql+" and yonghuming like '%"+request.getParameter("yonghuming")+"%'";}if(request.getParameter("xingming")=="" ||request.getParameter("xingming")==null ){}else{sql=sql+" and xingming like '%"+request.getParameter("xingming")+"%'";}if(request.getParameter("xingbie")=="" ||request.getParameter("xingbie")==null ){}else{sql=sql+" and xingbie like '%"+request.getParameter("xingbie")+"%'";}if(request.getParameter("dianhua")=="" ||request.getParameter("dianhua")==null ){}else{sql=sql+" and dianhua like '%"+request.getParameter("dianhua")+"%'";}if(request.getParameter("shenfenzheng")=="" ||request.getParameter("shenfenzheng")==null ){}else{sql=sql+" and shenfenzheng like '%"+request.getParameter("shenfenzheng")+"%'";}if(request.getParameter("zhuzhi")=="" ||request.getParameter("zhuzhi")==null ){}else{sql=sql+" and zhuzhi like '%"+request.getParameter("zhuzhi")+"%'";}if (request.getParameter("jifen1")==""  ||request.getParameter("jifen1")==null ) {}else{sql=sql+" and jifen >= '"+request.getParameter("jifen1")+"'";}if (request.getParameter("jifen2")==""  ||request.getParameter("jifen2")==null ) {}else {sql=sql+" and jifen <= '"+request.getParameter("jifen2")+"'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="35" height="50" align="center"><%=i %></td>
    <td><%=map.get("yonghuming") %></td>    <td><%=map.get("mima") %></td>    <td><%=map.get("xingming") %></td>    <td align='center'><%=map.get("xingbie") %></td>    <td><%=map.get("dianhua") %></td>    <td><%=map.get("shenfenzheng") %></td>    <td width='90' align='center'><a  href='<%=map.get("zhaopian") %>' target='_blank'><img src='<%=map.get("zhaopian") %>' width=88 height=99 border=0 /></a></td>    <td><%=map.get("zhuzhi") %></td>    <td><%=map.get("jifen") %></td>        <td align='center'><a class="btn btn-info btn-small" href="sh.jsp?id=<%=map.get("id")%>&yuan=<%=map.get("issh")%>&tablename=huiyuanxinxi" onclick="return confirm('��ȷ��Ҫִ�д˲�����')"><%=map.get("issh")%></a></td>
	
    <td width="138" height="50" align="center"><%=map.get("addtime") %></td>
    <td width="220" height="50" align="center"><a class="btn btn-danger btn" href="huiyuanxinxi_updt.jsp?id=<%=map.get("id")%>"> <i class="glyphicon glyphicon-pencil" > </i> �޸�</a>  <a class="btn btn-warning" href="huiyuanxinxi_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('���Ҫɾ����')"> <i class="glyphicon glyphicon-wrench" > </i> ɾ��</a> <a class="btn btn-info btn-small" href="huiyuanxinxi_detail.jsp?id=<%=map.get("id")%>"> <i class="glyphicon glyphicon-random" > </i> ��ϸ</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
<p class="fy">${page.info }</p>


  </body>
</html>

