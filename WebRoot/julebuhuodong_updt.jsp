<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>���ֲ��</title>
	
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

new CommDAO().update(request,response,"julebuhuodong",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"julebuhuodong"); 

%>
  <form  action="julebuhuodong_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  �޸ľ��ֲ��:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" style="border-collapse:collapse">  
          <tr><td>����ƣ�</td><td><input name='huodongmingcheng' type='text' id='huodongmingcheng' value='<%= mmm.get("huodongmingcheng")%>' class="form-control" /></td></tr>     <tr><td>���ֲ����ƣ�</td><td><%=Info.getselect("julebumingcheng","julebuxinxi","julebumingcheng")%></td></tr><script language="javascript">document.form1.julebumingcheng.value='<%=mmm.get("julebumingcheng")%>';</script>     <tr><td>��ϵ�绰��</td><td><input name='lianxidianhua' type='text' id='lianxidianhua' value='<%= mmm.get("lianxidianhua")%>' class="form-control" /></td></tr>     <tr><td>�ʱ�䣺</td><td><input name='huodongshijian' type='text' id='huodongshijian' value='<%= mmm.get("huodongshijian")%>' onclick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" readonly='readonly' class="form-control"  /></td></tr>     <tr><td>��ص㣺</td><td><input name='huodongdidian' type='text' id='huodongdidian' class="form-control"  style="width:600px;" value='<%=mmm.get("huodongdidian")%>' /></td></tr>     <tr><td>���飺</td><td><textarea name='huodongjianjie' cols='50' rows='5' id='huodongjianjie' class="form-control" style="width:600px;height:80px;" ><%=mmm.get("huodongjianjie")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return checkform();" class="btn btn-info btn-small" />
      <input type="reset" name="Submit2" value="����" class="btn btn-info btn-small" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


