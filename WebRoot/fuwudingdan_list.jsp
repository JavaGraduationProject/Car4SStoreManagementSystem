<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>���񶩵�</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
<link rel="stylesheet" href="images/bootstrap.min.css" type="text/css">
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>���з��񶩵��б���</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  �����ţ�<input name="dingdanhao" type="text" id="dingdanhao" class="form-control2" />  �������ͣ�<input name="dingdanleixing" type="text" id="dingdanleixing" class="form-control2" />  ���ƺţ�<input name="chepaihao" type="text" id="chepaihao" class="form-control2" />  Ʒ�ƣ�<input name="pinpai" type="text" id="pinpai" class="form-control2" />  �û�����<input name="yonghuming" type="text" id="yonghuming" class="form-control2" />  ������<input name="xingming" type="text" id="xingming" class="form-control2" />  Ա�����ţ�<input name="yuangonggonghao" type="text" id="yuangonggonghao" class="form-control2" />  Ա��������<input name="yuangongxingming" type="text" id="yuangongxingming" class="form-control2" />
   <input type="submit" name="Submit" value="����" class="btn btn-info btn-small" /> <input type="button" name="Submit2" value="����EXCEL" class="btn btn-info btn-small" onClick="javascript:location.href='fuwudingdan_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#F3F3F3" class="table table-striped table-bordered table-hover">  
  <tr>
    <td width="35" height="50" align="center" bgcolor="#E6E6E6">���</td>
    <td bgcolor='#E6E6E6'>������</td>
	
    <td width="138" height="50" align="center" bgcolor="#E6E6E6">����ʱ��</td>
    
    <td width="260" height="50" align="center" bgcolor="#E6E6E6">����</td>
  </tr>
  <% 
  	double zongfeiyongz=0;


  	 new CommDAO().delete(request,"fuwudingdan"); 
    String url = "fuwudingdan_list.jsp?1=1"; 
    String sql =  "select * from fuwudingdan where 1=1";
	
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	zongfeiyongz=zongfeiyongz+Float.valueOf((String)map.get("zongfeiyong")).floatValue();


     %>
  <tr>
    <td width="35" height="50" align="center"><%=i %></td>
    <td><%=map.get("dingdanhao") %></td>
	
    <td width="138" height="50" align="center"><%=map.get("addtime") %></td>
    <td width="220" height="50" align="center"><a class="btn btn-danger btn" href="fuwudingdan_updt.jsp?id=<%=map.get("id")%>"> <i class="glyphicon glyphicon-pencil" > </i> �޸�</a>  <a class="btn btn-warning" href="fuwudingdan_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('���Ҫɾ����')"> <i class="glyphicon glyphicon-wrench" > </i> ɾ��</a> <a class="btn btn-info btn-small" href="fuwudingdan_detail.jsp?id=<%=map.get("id")%>"> <i class="glyphicon glyphicon-random" > </i> ��ϸ</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
�����ܷ���:<%=zongfeiyongz%>��  
<p class="fy">${page.info }</p>


  </body>
</html>
