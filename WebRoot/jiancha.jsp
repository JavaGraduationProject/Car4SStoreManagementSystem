<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>�ջ�</title>
  </head>
  <body>
  <%
 
 HashMap ext = new HashMap();  
 


new CommDAO().commOper("update wodecheliang set jianchatixing='��' where id='"+request.getParameter("id")+"'"); 

 
 out.print("<script>alert('�����ɹ�!!');location.href='"+request.getHeader("Referer")+"';</script>");

 %>
  </body>
</html>


