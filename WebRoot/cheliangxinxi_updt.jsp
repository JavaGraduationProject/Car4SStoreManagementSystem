<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>������Ϣ</title>
	<link rel="stylesheet" href="kindeditor_a5/themes/default/default.css" />
	<link rel="stylesheet" href="kindeditor_a5/plugins/code/prettify.css" />
	<script charset="utf-8" src="kindeditor_a5/kindeditor.js"></script>
	<script charset="utf-8" src="kindeditor_a5/lang/zh_CN.js"></script>
	<script charset="utf-8" src="kindeditor_a5/plugins/code/prettify.js"></script>
	<script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="cheliangjianjie"]', {
				cssPath : 'kindeditor_a5/plugins/code/prettify.css',
				uploadJson : 'kindeditor_a5/jsp/upload_json.jsp',
				fileManagerJson : 'kindeditor_a5/jsp/file_manager_json.jsp',
				allowFileManager : true,
				afterCreate : function() {
					var self = this;
					K.ctrl(document, 13, function() {
						self.sync();
						document.forms['example'].submit();
					});
					K.ctrl(self.edit.doc, 13, function() {
						self.sync();
						document.forms['example'].submit();
					});
				}
			});
			prettyPrint();
		});
	</script>
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

new CommDAO().update(request,response,"cheliangxinxi",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"cheliangxinxi"); 

%>
  <form  action="cheliangxinxi_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  �޸ĳ�����Ϣ:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" style="border-collapse:collapse">  
          <tr><td>Ʒ�ƣ�</td><td><input name='pinpai' type='text' id='pinpai' value='<%= mmm.get("pinpai")%>' class="form-control" /></td></tr>     <tr><td>�������ƣ�</td><td><input name='cheliangmingcheng' type='text' id='cheliangmingcheng' value='<%= mmm.get("cheliangmingcheng")%>' class="form-control" /></td></tr>     <tr><td>���ͣ�</td><td><select name='chexing' id='chexing' class="form-control2" ><option value="С��">С��</option><option value="ԽҰ">ԽҰ</option><option value="���">���</option><option value="��">��</option><option value="�ܳ�">�ܳ�</option></select></td></tr><script language="javascript">document.form1.chexing.value='<%=mmm.get("chexing")%>';</script>     <tr><td>������ʽ��</td><td><select name='qudongfangshi' id='qudongfangshi' class="form-control2"><option value="ǰ��">ǰ��</option><option value="����">����</option><option value="����">����</option><option value="����Դ">����Դ</option></select></td></tr><script language="javascript">document.form1.qudongfangshi.value='<%=mmm.get("qudongfangshi")%>';</script>     <tr><td>������</td><td><input name='pailiang' type='text' id='pailiang' value='<%= mmm.get("pailiang")%>' class="form-control" /></td></tr>     <tr><td>�۸�</td><td><input name='jiage' type='text' id='jiage' value='<%= mmm.get("jiage")%>' class="form-control" /></td></tr>     <tr><td>ͼƬ��</td><td><input name='tupian' type='text' id='tupian' size='50' value='<%= mmm.get("tupian")%>' class="form-control" /> <div style="margin-top:16px;">&nbsp;<input type='button' value='�ϴ�' onClick="up('tupian')"/></div></td></tr>     <tr><td>������ʽ��</td><td><select name='huandangfangshi' id='huandangfangshi' class="form-control2" ><option value="�Զ���">�Զ���</option><option value="�ֶ���">�ֶ���</option><option value="����һ��">����һ��</option></select></td></tr><script language="javascript">document.form1.huandangfangshi.value='<%=mmm.get("huandangfangshi")%>';</script>     <tr><td>������飺</td><td><textarea name="cheliangjianjie" cols="100" rows="8" style="width:700px;height:200px;visibility:hidden;"><%=mmm.get("cheliangjianjie")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return checkform();" class="btn btn-info btn-small" />
      <input type="reset" name="Submit2" value="����" class="btn btn-info btn-small" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


