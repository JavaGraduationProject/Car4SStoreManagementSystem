<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>�����ղ�</title>
  </head>
  <body>
  <%
  if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")=="")
{
	out.print("<script>javascript:alert('�Բ��������ȵ�½��');history.back();</script>");
	
	
	
	
}
else
{
String id=request.getParameter("id");
String biao=request.getParameter("biao");
String ziduan=request.getParameter("ziduan");


 String sql4="select * from shoucangjilu  where biao='"+biao+"'  and xwid='"+id+"' and username='"+request.getSession().getAttribute("username")+"'  ";
CommDAO dao2 = new CommDAO();
  List<HashMap> userlist2 = dao2.select(sql4);

  if(userlist2.size()>=1)
{
	out.print("<script>alert('���Ѿ��ղع�,�����ظ��ղ�!');location.href='"+request.getHeader("Referer")+"';</script>");
	return;
}



String sql="insert into shoucangjilu(username,xwid,ziduan,biao) values('"+request.getSession().getAttribute("username")+"','"+id+"','"+ziduan+"','"+biao+"')";
  	  	
 new CommDAO().commOper(sql); 
 
 
/*    new CommDAO().commOper("update "+biao+" set shoucangliang=shoucangliang+1 where id='"+id+"' ");*/
 
 
out.print("<script>alert('�ղسɹ�!!');location.href='"+request.getHeader("Referer")+"';</script>");
}
%>
  </body>
</html>


