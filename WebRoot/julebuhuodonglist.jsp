<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=gb2312">
	<meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE">
  <title>���ֲ��</title>
  
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
				<h3>���ֲ��<img src="qtimages/en-news.png" height="16" width="93"></h3>
			</div>
		</div>
		<div class="news-list c">
			<ul>
				  <div class="content-form">
					<link rel="stylesheet" href="images/hsgcommon/divqt.css" type="text/css">
 <form name="form1" id="form1" method="post" action="" style="width:100%">
   ����:  ����ƣ�<input name="huodongmingcheng" type="text" id="huodongmingcheng" class="form-control2"  />  ���ֲ����ƣ�<%=Info.getselect("julebumingcheng","julebuxinxi","julebumingcheng"," 1=1 ")%>  ��ص㣺<input name="huodongdidian" type="text" id="huodongdidian" class="form-control2"  />
   <input type="submit" name="Submit" value="����" class='hsgqiehuanshitu' />   
</form>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse" class="newsline">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td height="44" bgcolor='#CCFFFF'>�����</td>
    <td height="44" bgcolor='#CCFFFF'>���ֲ�����</td>
    <td height="44" bgcolor='#CCFFFF'>��ϵ�绰</td>
    <td width='65' height="44" align='center' bgcolor='#CCFFFF'>�ʱ��</td>
    <td height="44" bgcolor='#CCFFFF'>��ص�</td>
    
    
    
    <td width="30" height="44" align="center" bgcolor="CCFFFF">��ϸ</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"julebuhuodong"); 
    String url = "julebuhuodonglist.jsp?2=2"; 
    String sql =  "select * from julebuhuodong where 1=1";
	
if(request.getParameter("huodongmingcheng")=="" ||request.getParameter("huodongmingcheng")==null ){}else{sql=sql+" and huodongmingcheng like '%"+request.getParameter("huodongmingcheng")+"%'";}
if(request.getParameter("julebumingcheng")=="" ||request.getParameter("julebumingcheng")==null ){}else{sql=sql+" and julebumingcheng like '%"+request.getParameter("julebumingcheng")+"%'";}
if(request.getParameter("huodongdidian")=="" ||request.getParameter("huodongdidian")==null ){}else{sql=sql+" and huodongdidian like '%"+request.getParameter("huodongdidian")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td height="44"><%=map.get("huodongmingcheng") %></td><td height="44"><%=map.get("julebumingcheng") %></td><td height="44"><%=map.get("lianxidianhua") %></td><td height="44"><%=map.get("huodongshijian") %></td><td height="44"><%=map.get("huodongdidian") %></td>
    
    <td width="50" height="44" align="center"> <a class="btn btn-info btn-small" href="julebuhuodongdetail.jsp?id=<%=map.get("id")%>" >��ϸ</a></td>
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
