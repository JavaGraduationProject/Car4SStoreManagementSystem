<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�Լ��α���</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
<link rel="stylesheet" href="images/bootstrap.min.css" type="text/css">
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>�����Լ��α����б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  �����ţ�<input name="dingdanhao" type="text" id="dingdanhao" class="form-control2"  />  ��ţ�<input name="bianhao" type="text" id="bianhao" class="form-control2"  />  ������<input name="xingming" type="text" id="xingming" class="form-control2"  />  �Ա�<input name="xingbie" type="text" id="xingbie" class="form-control2"  />  �绰��<input name="dianhua" type="text" id="dianhua" class="form-control2"  />  ���ƺţ�<input name="chepaihao" type="text" id="chepaihao" class="form-control2"  />  �����ͺţ�<input name="cheliangxinghao" type="text" id="cheliangxinghao" class="form-control2"  />
   <input type="submit" name="Submit" value="����" class="btn btn-info btn-small" /> <input type="button" name="Submit2" value="����EXCEL" class="btn btn-info btn-small" onClick="javascript:location.href='zijiayoubaoming_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#F3F3F3" class="table table-striped table-bordered table-hover">  
  <tr>
    <td width="30" height="50" align="center" bgcolor="#E6E6E6">���</td>
    <td bgcolor='#E6E6E6'>������</td>
    <td bgcolor='#E6E6E6'>���</td>
    <td bgcolor='#E6E6E6'>·������</td>
    <td bgcolor='#E6E6E6'>��������</td>
    <td bgcolor='#E6E6E6'>·�����</td>
    <td bgcolor='#E6E6E6'>�û���</td>
    <td bgcolor='#E6E6E6'>����</td>
    <td bgcolor='#E6E6E6' width='40' align='center'>�Ա�</td>
    <td bgcolor='#E6E6E6'>�绰</td>
    <td bgcolor='#E6E6E6'>���ƺ�</td>
    <td bgcolor='#E6E6E6'>�����ͺ�</td>
    
    <td bgcolor='#E6E6E6' width='80' align='center'>�Ƿ�֧��</td>
    <td bgcolor='#E6E6E6' width='80' align='center'>�Ƿ����</td>
	
    <td width="138" height="50" align="center" bgcolor="#E6E6E6">���ʱ��</td>
    
    <td width="60" height="50" align="center" bgcolor="#E6E6E6">����</td>
  </tr>
  <% 
  	double baomingfeiyongz=0;


  	 new CommDAO().delete(request,"zijiayoubaoming"); 
    String url = "zijiayoubaoming_list.jsp?1=1"; 
    String sql =  "select * from zijiayoubaoming where 1=1";
	
if(request.getParameter("dingdanhao")=="" ||request.getParameter("dingdanhao")==null ){}else{sql=sql+" and dingdanhao like '%"+request.getParameter("dingdanhao")+"%'";}
if(request.getParameter("bianhao")=="" ||request.getParameter("bianhao")==null ){}else{sql=sql+" and bianhao like '%"+request.getParameter("bianhao")+"%'";}
if(request.getParameter("xingming")=="" ||request.getParameter("xingming")==null ){}else{sql=sql+" and xingming like '%"+request.getParameter("xingming")+"%'";}
if(request.getParameter("xingbie")=="" ||request.getParameter("xingbie")==null ){}else{sql=sql+" and xingbie like '%"+request.getParameter("xingbie")+"%'";}
if(request.getParameter("dianhua")=="" ||request.getParameter("dianhua")==null ){}else{sql=sql+" and dianhua like '%"+request.getParameter("dianhua")+"%'";}
if(request.getParameter("chepaihao")=="" ||request.getParameter("chepaihao")==null ){}else{sql=sql+" and chepaihao like '%"+request.getParameter("chepaihao")+"%'";}
if(request.getParameter("cheliangxinghao")=="" ||request.getParameter("cheliangxinghao")==null ){}else{sql=sql+" and cheliangxinghao like '%"+request.getParameter("cheliangxinghao")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	baomingfeiyongz=baomingfeiyongz+Float.valueOf((String)map.get("baomingfeiyong")).floatValue();



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
    <td><%=map.get("dingdanhao") %></td>
    <td><%=map.get("bianhao") %></td>
    <td><%=map.get("luxianmingcheng") %></td>
    <td><%=map.get("baomingfeiyong") %></td>
    <td><%=map.get("luxianlicheng") %></td>
    <td><%=map.get("yonghuming") %></td>
    <td><%=map.get("xingming") %></td>
    <td align='center'><%=map.get("xingbie") %></td>
    <td><%=map.get("dianhua") %></td>
    <td><%=map.get("chepaihao") %></td>
    <td><%=map.get("cheliangxinghao") %></td>
    
    <td align='center'><%=map.get("iszf")%></td>
    <td align='center'><a class="btn btn-info btn-small" href="sh.jsp?id=<%=map.get("id")%>&yuan=<%=map.get("issh")%>&tablename=zijiayoubaoming" onclick="return confirm('��ȷ��Ҫִ�д˲�����')"><%=map.get("issh")%></a></td>
	
    <td width="138" height="50" align="center"><%=map.get("addtime") %></td>
    <td width="60" height="50" align="center"><!--lianjie1--> <a class="btn btn-info btn-small" href="zijiayoubaoming_detail.jsp?id=<%=map.get("id")%>"> <i class="glyphicon glyphicon-random" > </i> ��ϸ</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
���Ʊ�������:<%=baomingfeiyongz%>��  
<p class="fy">${page.info }</p>


  </body>
</html>

