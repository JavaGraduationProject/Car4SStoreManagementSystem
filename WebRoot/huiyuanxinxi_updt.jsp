<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>��Ա��Ϣ</title>
	
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

new CommDAO().update(request,response,"huiyuanxinxi",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"huiyuanxinxi"); 

%>
  <form  action="huiyuanxinxi_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  �޸Ļ�Ա��Ϣ:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" style="border-collapse:collapse">  
          <tr><td>�û�����</td><td><input name='yonghuming' type='text' id='yonghuming' value='<%= mmm.get("yonghuming")%>' class="form-control" /></td></tr>     <tr><td>���룺</td><td><input name='mima' type='text' id='mima' value='<%= mmm.get("mima")%>' class="form-control" /></td></tr>     <tr><td>������</td><td><input name='xingming' type='text' id='xingming' value='<%= mmm.get("xingming")%>' class="form-control" /></td></tr>     <tr><td>�Ա�</td><td><select name='xingbie' id='xingbie' class="form-control2"><option value="��">��</option><option value="Ů">Ů</option></select></td></tr><script language="javascript">document.form1.xingbie.value='<%=mmm.get("xingbie")%>';</script>     <tr><td>�绰��</td><td><input name='dianhua' type='text' id='dianhua' value='<%= mmm.get("dianhua")%>' class="form-control" /></td></tr>     <tr><td>���֤��</td><td><input name='shenfenzheng' type='text' id='shenfenzheng' class="form-control"  style="width:600px;" value='<%=mmm.get("shenfenzheng")%>' /></td></tr>     <tr><td>��Ƭ��</td><td><input name='zhaopian' type='text' id='zhaopian' size='50' value='<%= mmm.get("zhaopian")%>' class="form-control" /> <div style="margin-top:16px;">&nbsp;<input type='button' value='�ϴ�' onClick="up('zhaopian')"/></div></td></tr>     <tr><td>סַ��</td><td><input name='zhuzhi' type='text' id='zhuzhi' value='<%= mmm.get("zhuzhi")%>' class="form-control" /></td></tr>     <tr><td>���֣�</td><td><input name='jifen' type='text' id='jifen' value='<%= mmm.get("jifen")%>' class="form-control" /></td></tr>     <tr><td>��飺</td><td><textarea name='jianjie' cols='50' rows='5' id='jianjie' class="form-control" style="width:600px;height:80px;" ><%=mmm.get("jianjie")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return checkform();" class="btn btn-info btn-small" />
      <input type="reset" name="Submit2" value="����" class="btn btn-info btn-small" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


