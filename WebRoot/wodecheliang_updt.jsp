<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�ҵĳ���</title>
	
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

new CommDAO().update(request,response,"wodecheliang",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"wodecheliang"); 

%>
  <form  action="wodecheliang_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  �޸��ҵĳ���:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" style="border-collapse:collapse">  
     
     <tr><td>���ƺţ�</td><td><input name='chepaihao' type='text' id='chepaihao' value='<%= mmm.get("chepaihao")%>' class="form-control" /></td></tr>
     <tr><td>Ʒ�ƣ�</td><td><input name='pinpai' type='text' id='pinpai' value='<%= mmm.get("pinpai")%>' class="form-control" /></td></tr>
     <tr><td>�������ƣ�</td><td><input name='cheliangmingcheng' type='text' id='cheliangmingcheng' value='<%= mmm.get("cheliangmingcheng")%>' class="form-control" /></td></tr>
     <tr><td>���ͣ�</td><td><select name='chexing' id='chexing' class="form-control2" ><option value="С��">С��</option><option value="ԽҰ">ԽҰ</option><option value="���">���</option><option value="��">��</option><option value="�ܳ�">�ܳ�</option></select></td></tr><script language="javascript">document.form1.chexing.value='<%=mmm.get("chexing")%>';</script>
     <tr><td>������ʽ��</td><td><select name='qudongfangshi' id='qudongfangshi' class="form-control2"><option value="ǰ��">ǰ��</option><option value="����">����</option><option value="����">����</option><option value="����Դ">����Դ</option></select></td></tr><script language="javascript">document.form1.qudongfangshi.value='<%=mmm.get("qudongfangshi")%>';</script>
     <tr><td>������</td><td><input name='pailiang' type='text' id='pailiang' value='<%= mmm.get("pailiang")%>' class="form-control" /></td></tr>
     <tr><td>������ʽ��</td><td><select name='huandangfangshi' id='huandangfangshi' class="form-control2" ><option value="�Զ���">�Զ���</option><option value="�ֶ���">�ֶ���</option><option value="����һ��">����һ��</option></select></td></tr><script language="javascript">document.form1.huandangfangshi.value='<%=mmm.get("huandangfangshi")%>';</script>
     <tr><td>ͼƬ��</td><td><input name='tupian' type='text' id='tupian' size='50' value='<%= mmm.get("tupian")%>' class="form-control" /> <div style="margin-top:16px;">&nbsp;<input type='button' value='�ϴ�' onClick="up('tupian')"/></div></td></tr>
     <tr><td>����̣�</td><td><input name='zonglicheng' type='text' id='zonglicheng' value='<%= mmm.get("zonglicheng")%>' class="form-control" /></td></tr>
     <tr><td>��ѹ��</td><td><input name='dianya' type='text' id='dianya' value='<%= mmm.get("dianya")%>' class="form-control" /></td></tr>
     <tr><td>���ͣ�</td><td><input name='jiyou' type='text' id='jiyou' value='<%= mmm.get("jiyou")%>' class="form-control" /></td></tr>
     <tr><td>�û�����</td><td><input name='yonghuming' type='text' id='yonghuming' value='<%= mmm.get("yonghuming")%>' class="form-control" /></td></tr>
     <tr><td>������</td><td><input name='xingming' type='text' id='xingming' value='<%= mmm.get("xingming")%>' class="form-control" /></td></tr>
     <tr><td>��ϵ�绰��</td><td><input name='lianxidianhua' type='text' id='lianxidianhua' value='<%= mmm.get("lianxidianhua")%>' class="form-control" /></td></tr>
     <tr style="display:none"><td>������ѣ�</td><td><select name='jianchatixing' id='jianchatixing' class="form-control2"><option value="��">��</option><option value="��">��</option></select></td></tr><script language="javascript">document.form1.jianchatixing.value='<%=mmm.get("jianchatixing")%>';</script>
     <tr><td>��ע��</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' class="form-control" style="width:600px;height:80px;" ><%=mmm.get("beizhu")%></textarea></td></tr>
     <tr><td>������⣺</td><td><textarea name='jiankangjiance' cols='50' rows='5' id='jiankangjiance' class="form-control" style="width:600px;height:80px;" ><%=mmm.get("jiankangjiance")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return checkform();" class="btn btn-info btn-small" />
 </td>
    </tr>
  </table>
</form>

  </body>
</html>


