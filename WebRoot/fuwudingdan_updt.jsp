<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>���񶩵�</title>
	
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

new CommDAO().update(request,response,"fuwudingdan",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"fuwudingdan"); 

%>
  <form  action="fuwudingdan_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  �޸ķ��񶩵�:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" style="border-collapse:collapse">  
          <tr><td>�����ţ�</td><td><input name='dingdanhao' type='text' id='dingdanhao' value='<%= mmm.get("dingdanhao")%>' class="form-control" /></td></tr>     <tr><td>�������ͣ�</td><td><input name='dingdanleixing' type='text' id='dingdanleixing' value='<%= mmm.get("dingdanleixing")%>' class="form-control" /></td></tr>     <tr><td>���ƺţ�</td><td><input name='chepaihao' type='text' id='chepaihao' value='<%= mmm.get("chepaihao")%>' class="form-control" /></td></tr>     <tr><td>Ʒ�ƣ�</td><td><input name='pinpai' type='text' id='pinpai' value='<%= mmm.get("pinpai")%>' class="form-control" /></td></tr>     <tr><td>�������ƣ�</td><td><input name='cheliangmingcheng' type='text' id='cheliangmingcheng' value='<%= mmm.get("cheliangmingcheng")%>' class="form-control" /></td></tr>     <tr><td>���ͣ�</td><td><input name='chexing' type='text' id='chexing' value='<%= mmm.get("chexing")%>' class="form-control" /></td></tr>     <tr><td>�û�����</td><td><input name='yonghuming' type='text' id='yonghuming' value='<%= mmm.get("yonghuming")%>' class="form-control" /></td></tr>     <tr><td>������</td><td><input name='xingming' type='text' id='xingming' value='<%= mmm.get("xingming")%>' class="form-control" /></td></tr>     <tr><td>��ϵ�绰��</td><td><input name='lianxidianhua' type='text' id='lianxidianhua' value='<%= mmm.get("lianxidianhua")%>' class="form-control" /></td></tr>     <tr><td>Ա�����ţ�</td><td><input name='yuangonggonghao' type='text' id='yuangonggonghao' value='<%= mmm.get("yuangonggonghao")%>' class="form-control" /></td></tr>     <tr><td>Ա��������</td><td><input name='yuangongxingming' type='text' id='yuangongxingming' value='<%= mmm.get("yuangongxingming")%>' class="form-control" /></td></tr>     <tr><td>��ϸ��</td><td><input name='mingxibiao' type='text' id='mingxibiao' size='50' value='<%= mmm.get("mingxibiao")%>' class="form-control" /> <div style="margin-top:16px;">&nbsp;<input type='button' value='�ϴ�' onClick="up('mingxibiao')"/></div></td></tr>     <tr><td>�ܷ��ã�</td><td><input name='zongfeiyong' type='text' id='zongfeiyong' value='<%= mmm.get("zongfeiyong")%>' class="form-control" /></td></tr>     <tr><td>��ע��</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' class="form-control" style="width:600px;height:80px;" ><%=mmm.get("beizhu")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return checkform();" class="btn btn-info btn-small" />
      <input type="reset" name="Submit2" value="����" class="btn btn-info btn-small" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


