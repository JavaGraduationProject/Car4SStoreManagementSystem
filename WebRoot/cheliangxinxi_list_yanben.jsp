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


  <body >
  <p>���г�����Ϣ�б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  Ʒ�ƣ�<input name="pinpai" type="text" id="pinpai" class="form-control2"  />  �������ƣ�<input name="cheliangmingcheng" type="text" id="cheliangmingcheng" class="form-control2"  /> ���ͣ�<select name='chexing' id='chexing' class="form-control2"><option value="">����</option><option value="С��">С��</option><option value="ԽҰ">ԽҰ</option><option value="���">���</option><option value="��">��</option><option value="�ܳ�">�ܳ�</option></select> ������ʽ��<select name='qudongfangshi' id='qudongfangshi' class="form-control2"><option value="">����</option><option value="ǰ��">ǰ��</option><option value="����">����</option><option value="����">����</option><option value="����Դ">����Դ</option></select>  �۸�<input name="jiage1" type="text" id="jiage1"  value='' class="form-control2" />-<input name="jiage2" type="text" id="jiage2"  value='' class="form-control2" /> ������ʽ��<select name='huandangfangshi' id='huandangfangshi' class="form-control2"><option value="">����</option><option value="�Զ���">�Զ���</option><option value="�ֶ���">�ֶ���</option><option value="����һ��">����һ��</option></select>
   <input type="submit" name="Submit" value="����" class="btn btn-info btn-small" /> <input type="button" name="Submit2" value="����EXCEL" class="btn btn-info btn-small" onClick="javascript:location.href='cheliangxinxi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#F3F3F3" class="table table-striped table-bordered table-hover">  
  <tr>
    <td width="30" height="50" align="center" bgcolor="#E6E6E6">���</td>
    <td bgcolor='#E6E6E6'>Ʒ��</td>
    <td bgcolor='#E6E6E6'>��������</td>
    <td bgcolor='#E6E6E6'>����</td>
    <td bgcolor='#E6E6E6'>������ʽ</td>
    <td bgcolor='#E6E6E6'>����</td>
    <td bgcolor='#E6E6E6'>�۸�</td>
    <td bgcolor='#E6E6E6' width='90' align='center'>ͼƬ</td>
    <td bgcolor='#E6E6E6'>������ʽ</td>
    
    
	<td width="90" align="center" bgcolor="#E6E6E6">���۹���</td>
    <td width="138" height="50" align="center" bgcolor="#E6E6E6">���ʱ��</td>
    
    <td width="60" height="50" align="center" bgcolor="#E6E6E6">����</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"cheliangxinxi"); 
    String url = "cheliangxinxi_list.jsp?1=1"; 
    String sql =  "select * from cheliangxinxi where 1=1";
	
if(request.getParameter("pinpai")=="" ||request.getParameter("pinpai")==null ){}else{sql=sql+" and pinpai like '%"+request.getParameter("pinpai")+"%'";}
if(request.getParameter("cheliangmingcheng")=="" ||request.getParameter("cheliangmingcheng")==null ){}else{sql=sql+" and cheliangmingcheng like '%"+request.getParameter("cheliangmingcheng")+"%'";}
if(request.getParameter("chexing")=="" ||request.getParameter("chexing")==null ){}else{sql=sql+" and chexing like '%"+request.getParameter("chexing")+"%'";}
if(request.getParameter("qudongfangshi")=="" ||request.getParameter("qudongfangshi")==null ){}else{sql=sql+" and qudongfangshi like '%"+request.getParameter("qudongfangshi")+"%'";}
if (request.getParameter("jiage1")==""  ||request.getParameter("jiage1")==null ) {}else{sql=sql+" and jiage >= '"+request.getParameter("jiage1")+"'";}
if (request.getParameter("jiage2")==""  ||request.getParameter("jiage2")==null ) {}else {sql=sql+" and jiage <= '"+request.getParameter("jiage2")+"'";}
if(request.getParameter("huandangfangshi")=="" ||request.getParameter("huandangfangshi")==null ){}else{sql=sql+" and huandangfangshi like '%"+request.getParameter("huandangfangshi")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr <%
  	if((i % 2)==0)
	{
		out.print("bgcolor='#F0F0F0'");
	}
	else
	{
		out.print("bgcolor='#FFFFFF'");
	}
	
	if((i % 2)==0)
	{
		%> onmouseover="this.style.backgroundColor='#F9DFEB'" onmouseout="this.style.backgroundColor='#F0F0F0'" <%
	}
	else
	{
		%> onmouseover="this.style.backgroundColor='#F9DFEB'" onmouseout="this.style.backgroundColor='#FFFFFF'" <%
	}
	
  %>>
    <td width="30" height="50" align="center"><%=i %></td>
    <td><%=map.get("pinpai") %></td>
    <td><%=map.get("cheliangmingcheng") %></td>
    <td><%=map.get("chexing") %></td>
    <td><%=map.get("qudongfangshi") %></td>
    <td><%=map.get("pailiang") %></td>
    <td><%=map.get("jiage") %></td>
    <td width='90' align='center'><a class="btn btn-info btn-small" href='<%=map.get("tupian") %>' target='_blank'><img src='<%=map.get("tupian") %>' width=88 height=99 border=0 /></a></td>
    <td><%=map.get("huandangfangshi") %></td>
    
    
	<td width="90" align="center"><a class="btn btn-info btn-small" href="pinglun_list.jsp?id=<%=map.get("id")%>&biao=cheliangxinxi">���۹���</a></td>
    <td width="138" height="50" align="center"><%=map.get("addtime") %></td>
    <td width="60" height="50" align="center"><!--lianjie1--> <a class="btn btn-info btn-small" href="cheliangxinxidetail.jsp?id=<%=map.get("id")%>" target="_blank"> <i class="glyphicon glyphicon-random" > </i> ��ϸ</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
<p class="fy">${page.info }</p>


  </body>
</html>

