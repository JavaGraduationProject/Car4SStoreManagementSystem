<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>��Ʒ��Ϣ</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>������Ʒ��Ϣ�б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  ��Ʒ���ƣ�<input name="shangpinmingcheng" type="text" id="shangpinmingcheng" class="form-control2" />  ��Ʒ���<%=Info.getselect("shangpinleibie","leibiexinxi","shangpinleibie"," 1=1 ")%>  Ʒ�ƣ�<input name="pinpai" type="text" id="pinpai" class="form-control2" />  ���ۼ۸�<input name="xiaoshoujiage1" type="text" id="xiaoshoujiage1"  value='' class="form-control2" />-<input name="xiaoshoujiage2" type="text" id="xiaoshoujiage2"  value='' class="form-control2" />
   <input type="submit" name="Submit" value="����" class="btn btn-info btn-small" /> <input type="button" name="Submit2" value="����EXCEL" class="btn btn-info btn-small" onClick="javascript:location.href='shangpinxinxi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#F3F3F3" class="table table-striped table-bordered table-hover">  
  <tr>
    <td width="35" height="30" align="center" bgcolor='#E6E6E6'>���</td>
    <td bgcolor='#E6E6E6'>��Ʒ���</td>
    <td bgcolor='#E6E6E6'>��Ʒ����</td>
    <td bgcolor='#E6E6E6'>��Ʒ���</td>
    <td bgcolor='#E6E6E6'>Ʒ��</td>
    <td bgcolor='#E6E6E6'>���ۼ۸�</td>
    <td bgcolor='#E6E6E6'>����</td>
    <td width='80' align='center' bgcolor='#E6E6E6'>�Ƿ��ϼ�</td>
    <td bgcolor='#E6E6E6' width='90' align='center'>ͼƬ</td>
    
    
	
    <td width="90" align="center" bordercolor="#F3F3F3" bgcolor='#E6E6E6'>���۹���</td>
    <td width="138" height="30" align="center" bgcolor='#E6E6E6'>���ʱ��</td>
    
    <td width="220" height="30" align="center" bgcolor='#E6E6E6'>����</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"shangpinxinxi"); 
    String url = "shangpinxinxi_list.jsp?1=1"; 
    String sql =  "select * from shangpinxinxi where 1=1";
	
if(request.getParameter("shangpinmingcheng")=="" ||request.getParameter("shangpinmingcheng")==null ){}else{sql=sql+" and shangpinmingcheng like '%"+request.getParameter("shangpinmingcheng")+"%'";}
if(request.getParameter("shangpinleibie")=="" ||request.getParameter("shangpinleibie")==null ){}else{sql=sql+" and shangpinleibie like '%"+request.getParameter("shangpinleibie")+"%'";}
if(request.getParameter("pinpai")=="" ||request.getParameter("pinpai")==null ){}else{sql=sql+" and pinpai like '%"+request.getParameter("pinpai")+"%'";}
if (request.getParameter("xiaoshoujiage1")==""  ||request.getParameter("xiaoshoujiage1")==null ) {}else{sql=sql+" and xiaoshoujiage >= '"+request.getParameter("xiaoshoujiage1")+"'";}
if (request.getParameter("xiaoshoujiage2")==""  ||request.getParameter("xiaoshoujiage2")==null ) {}else {sql=sql+" and xiaoshoujiage <= '"+request.getParameter("xiaoshoujiage2")+"'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="35" align="center"><%=i %></td>
    <td><%=map.get("shangpinbianhao") %></td>
    <td><%=map.get("shangpinmingcheng") %></td>
    <td><%=map.get("shangpinleibie") %></td>
    <td><%=map.get("pinpai") %></td>
    <td><%=map.get("xiaoshoujiage") %></td>
    <td><%=map.get("xiaoliang") %></td>
    <td align='center'><a class="btn btn-info btn-small" href="sh.jsp?id=<%=map.get("id")%>&yuan=<%=map.get("issh")%>&tablename=shangpinxinxi" onClick="return confirm('��ȷ��Ҫִ�д˲�����')"><%=map.get("issh")%></a></td>
    <td width='90' align='center'><a  href='<%=map.get("tupian") %>' target='_blank'><img src='<%=map.get("tupian") %>' width=88 height=99 border=0 /></a></td>
    
    
	
    <td width="90" align="center" bordercolor="#F3F3F3"><a class="btn btn-info btn-small" href="pinglun_list.jsp?id=<%=map.get("id")%>&biao=shangpinxinxi">���۹���</a></td>
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="220" align="center"><a class="btn btn-info btn-small" href="shangpinxinxi_updt.jsp?id=<%=map.get("id")%>">�޸�</a>  <a class="btn btn-info btn-small" href="shangpinxinxi_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('���Ҫɾ����')">ɾ��</a> <a class="btn btn-info btn-small" href="shangpinxinxidetail.jsp?id=<%=map.get("id")%>" target="_blank">��ϸ</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
<p class="fy">${page.info }</p>


  </body>
</html>

