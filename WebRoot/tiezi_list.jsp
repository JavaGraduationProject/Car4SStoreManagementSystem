<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>������Ϣ</title>
		<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
<link rel="stylesheet" href="images/bootstrap.min.css" type="text/css">
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>

<!--hxsglxiangdxongjxs-->
  <body >
  <p>����������Ϣ�б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:    ���⣺
   <input name="biaoti" type="text" id="biaoti" class="form-control2" />
   <input type="submit" name="Submit" value="����"   />
  </form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#F3F3F3" class="table table-striped table-bordered table-hover">  
  <tr>
    <td width="84" height="35" align="center" bgcolor='#E6E6E6'>���</td>
    <td width="283" bgcolor='#E6E6E6'>����</td>
    <td width="419" bgcolor='#E6E6E6'>����/����</td>
    <td width="444" bgcolor='#E6E6E6'>������</td>
    
	<td width="140" align="center" bordercolor="1" bgcolor='#E6E6E6'><span class="STYLE2">���л���</span></td>
	<!--dpinglun1-->
    <td width="126" align="center" bgcolor='#E6E6E6'>���ʱ��</td>
    
    <td width="250" align="center" bgcolor='#E6E6E6'>����</td>
  </tr>
  <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
  	 new CommDAO().delete(request,"tiezi"); 
    String url = "tiezi_list.jsp?1=1"; 
    String sql =  "select * from tiezi where 1=1";
	
if(request.getParameter("bankuai")=="" ||request.getParameter("bankuai")==null ){}else{sql=sql+" and bankuai like '%"+request.getParameter("bankuai")+"%'";}
if(request.getParameter("biaoti")=="" ||request.getParameter("biaoti")==null ){}else{sql=sql+" and biaoti like '%"+request.getParameter("biaoti")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	//wxflzhistri
	//zoxngxetxoxngjxvi
//txixgihxngjs
//youzuiping2
     %>
  <tr>
    <td width="84" align="center"><%=i %></td>
    <td><%=map.get("biaoti") %></td>
    <td><%
	if(map.get("fid").equals("0"))
								{
								out.print("<font color=red>����</font>");
								}
								else
								{
	out.print("����");
	}
	%></td>
    <td><%=map.get("faburen") %>,<%=map.get("cx") %></td>
    
	<td width="140" align="center" bordercolor="1"><%=new CommDAO().gettzs((String)map.get("id")) %></td>
	<!--dpinglun2-->
    <td width="126" align="center"><%=map.get("addtime") %></td>
    <td width="52" align="center">   <a class="btn btn-info btn-small" href="tiezi_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('���Ҫɾ����')">ɾ��</a> 
	
	
	<%
	if(map.get("fid").equals("0"))
								{%>
							<a class="btn btn-info btn-small" href="tiezidetail.jsp?id=<%=map.get("id")%>" target="_blank"  >��ϸ</a> 
								<%}
								else
								{%>
<a class="btn btn-info btn-small" href="tiezidetail.jsp?id=<%=map.get("fid")%>"  target="_blank" >��ϸ</a> 
	<%}
	%>
	
	<!--qiatnalijne--> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
<!--yoxugonxgzitoxnxgjxi--> <!--youzuiping3--> 
${page.info }

  <%
//yoxutixinxg if(kucddduntx>0)
//yoxutixinxg{
//yoxutixinxg tsgehxdhdm
//yoxutixinxg}
%>
  </body>
</html>

