<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=gb2312">
	<meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE">
  <title>�Լ���</title>
  
	<meta name="Keywords" content="">
	<meta name="Description" content="">
	<meta name="author" content="">
	<meta name="format-detection" content="telephone=no">
	<link href="qtimages/Layout.css" rel="stylesheet" type="text/css">
	<script src="qtimages/getjs_bdtj"></script><script charset="utf-8" src="qtimages/insert_bdtj"></script><script src="qtimages/conv.js"></script><script src="qtimages/hm.js"></script>
	<script type="text/javascript" src="qtimages/jquery1.42.min.js"></script>
	<script type="text/javascript" src="qtimages/jquery.SuperSlide.2.1.1.js"></script>
	<script src="qtimages/scrollReveal.js"></script> 
	 <link rel="stylesheet" href="./qtimages/sl_common_form.css">
</head>

<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
<%

%>

<body>
<%@ include file="qttop.jsp"%>
<%@ include file="bht.jsp"%>
<%@ include file="sidebufen1.jsp"%>
<div class="news">
	<div class="container">
		<div class="index-title txt-c">
			<em>רҵ�ķ��� һ����ˮƽ</em>
			<div class="line">
				<h3>�Լ���<img src="qtimages/en-news.png" height="16" width="93"></h3>
			</div>
		</div>
		<div class="news-list c">
			<ul>
				  <div class="content-form">
					<link rel="stylesheet" href="images/hsgcommon/divqt.css" type="text/css">
 <form name="form1" id="form1" method="post" action="" style="width:100%">
   ����:  ·�����ƣ�<input name="luxianmingcheng" type="text" id="luxianmingcheng" class="form-control2"  />
   <input type="submit" name="Submit" value="����" class='hsgqiehuanshitu' />  <input type='button' name='Submit5' value='�л���ͼ'  class='hsgqiehuanshitu' onClick="javascript:location.href='zijiayoulisttp.jsp';" /> 
</form>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse" class="newsline">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>���</td>
    <td bgcolor='#CCFFFF'>·������</td>
    <td height="44" bgcolor='#CCFFFF'>��������</td>
    <td bgcolor='#CCFFFF'>·�����</td>
    <td bgcolor='#CCFFFF' width='90' align='center'>ͼƬ</td>
    <td bgcolor='#CCFFFF'>��������</td>
    
    
    
    <td width="30" align="center" bgcolor="CCFFFF">��ϸ</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"zijiayou"); 
    String url = "zijiayoulist.jsp?2=2"; 
    String sql =  "select * from zijiayou where 1=1";
	
if(request.getParameter("luxianmingcheng")=="" ||request.getParameter("luxianmingcheng")==null ){}else{sql=sql+" and luxianmingcheng like '%"+request.getParameter("luxianmingcheng")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("bianhao") %></td><td><%=map.get("luxianmingcheng") %></td><td><%=map.get("baomingfeiyong") %></td><td><%=map.get("luxianlicheng") %></td><td width='90'><a  href='<%=map.get("tupian") %>' target='_blank'><img src='<%=map.get("tupian") %>' width=88 height=99 border=0 /></a></td><td><%=map.get("baomingrenshu") %></td>
    
    <td width="50" align="center"> <a class="btn btn-info btn-small" href="zijiayoudetail.jsp?id=<%=map.get("id")%>" >��ϸ</a></td>
  </tr>
  	<%
  }
   %>
</table><br>

  
${page.info }							
					</div>
			</ul>
		</div>
	</div>
</div>
<%@ include file="qtdown.jsp"%>

</body> 
</html>

<!--yoxudixtu-->
