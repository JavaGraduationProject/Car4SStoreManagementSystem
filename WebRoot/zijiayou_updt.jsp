<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�Լ���</title>
	
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
    <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">

  </head>
<script language="javascript">

function hsgxia2shxurxu(nstr,nwbk)
{
	if (eval("form1."+nwbk).value.indexOf(nstr)>=0)
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value.replace(nstr+"��", "");
	}
	else
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value+nstr+"��";
	}
}
</script>

  <body >
   <% 

String id = request.getParameter("id"); 

HashMap ext = new HashMap(); 

new CommDAO().update(request,response,"zijiayou",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"zijiayou"); 

%>
  <form  action="zijiayou_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  �޸��Լ���:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" style="border-collapse:collapse">  
          <tr><td>��ţ�</td><td><input name='bianhao' type='text' id='bianhao' value='<%= mmm.get("bianhao")%>' class="form-control" /></td></tr>     <tr><td>·�����ƣ�</td><td><input name='luxianmingcheng' type='text' id='luxianmingcheng' value='<%= mmm.get("luxianmingcheng")%>' class="form-control" /></td></tr>     <tr><td>�������ã�</td><td><input name='baomingfeiyong' type='text' id='baomingfeiyong' value='<%= mmm.get("baomingfeiyong")%>' class="form-control" /></td></tr>     <tr><td>·����̣�</td><td><input name='luxianlicheng' type='text' id='luxianlicheng' value='<%= mmm.get("luxianlicheng")%>' class="form-control" /></td></tr>     <tr><td>ͼƬ��</td><td><input name='tupian' type='text' id='tupian' size='50' value='<%= mmm.get("tupian")%>' class="form-control" /> <div style="margin-top:16px;">&nbsp;<input type='button' value='�ϴ�' onClick="up('tupian')"/></div></td></tr>     <tr><td>����������</td><td><input name='baomingrenshu' type='text' id='baomingrenshu' value='<%= mmm.get("baomingrenshu")%>' class="form-control" /></td></tr>     <tr><td>��飺</td><td><textarea name='jianjie' cols='50' rows='5' id='jianjie' class="form-control" style="width:600px;height:80px;" ><%=mmm.get("jianjie")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return checkform();" class="btn btn-info btn-small" />
      <input type="reset" name="Submit2" value="����" class="btn btn-info btn-small" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


