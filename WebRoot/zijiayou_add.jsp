<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>�Լ���</title>
	
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
  String id="";
  id=request.getParameter("id");
  
 
   %>
<script language="javascript">

function gow()
{
	document.location.href="zijiayou_add.jsp?id=<%=id%>";
}

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

 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){












new CommDAO().insert(request,response,"zijiayou",ext,true,false,""); 

}

%>

  <body >
 <form  action="zijiayou_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  ����Լ���:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >
		<tr><td  width="200">��ţ�</td><td><input name='bianhao' type='text' id='bianhao' value='<%=Info.getID()%>' onblur='' class="form-control" /></td></tr>		<tr><td  width="200">·�����ƣ�</td><td><input name='luxianmingcheng' type='text' id='luxianmingcheng' value='' onblur='checkform()' class="form-control" />&nbsp;*<label id='clabelluxianmingcheng' /></td></tr>		<tr><td  width="200">�������ã�</td><td><input name='baomingfeiyong' type='text' id='baomingfeiyong' value='' onblur='checkform()' class="form-control" />&nbsp;<label id='clabelbaomingfeiyong' />����������</td></tr>		<tr><td  width="200">·����̣�</td><td><input name='luxianlicheng' type='text' id='luxianlicheng' value='' onblur='' class="form-control" /></td></tr>		<tr><td  width="200">ͼƬ��</td><td><input name='tupian' type='text' id='tupian' size='50' value='' onblur='' class="form-control" /><div style="margin-top:12px;">&nbsp;<input type='button' value='�ϴ�' onClick="up('tupian')"  /></div></td></tr>		<tr><td  width="200">����������</td><td><input name='baomingrenshu' type='text' id='baomingrenshu' value='' onblur='checkform()' class="form-control" />&nbsp;<label id='clabelbaomingrenshu' />����������</td></tr>		<tr><td  width="200">��飺</td><td><textarea name='jianjie'  id='jianjie' onblur='' class="form-control" style="width:600px;height:80px;" ></textarea></td></tr>		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ"  class="btn btn-info btn-small" />
      <input type="reset" name="Submit2" value="����" class="btn btn-info btn-small" /></td>
    </tr>
  </table>
</form>

  </body>
</html>



<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	var luxianmingchengobj = document.getElementById("luxianmingcheng"); if(luxianmingchengobj.value==""){document.getElementById("clabelluxianmingcheng").innerHTML="&nbsp;&nbsp;<font color=red>������·������</font>";return false;}else{document.getElementById("clabelluxianmingcheng").innerHTML="  "; } 	var baomingfeiyongobj = document.getElementById("baomingfeiyong"); if(baomingfeiyongobj.value!=""){ if(/^[0-9]+.?[0-9]*$/.test(baomingfeiyongobj.value)){document.getElementById("clabelbaomingfeiyong").innerHTML=""; }else{document.getElementById("clabelbaomingfeiyong").innerHTML="&nbsp;&nbsp;<font color=red>����������</font>"; return false;}}      var baomingrenshuobj = document.getElementById("baomingrenshu"); if(baomingrenshuobj.value!=""){ if(/^[0-9]+.?[0-9]*$/.test(baomingrenshuobj.value)){document.getElementById("clabelbaomingrenshu").innerHTML=""; }else{document.getElementById("clabelbaomingrenshu").innerHTML="&nbsp;&nbsp;<font color=red>����������</font>"; return false;}}      


return true;   
}   
popheight=450;
</script>  
<script src="images/hsgcommon/jq.js"></script>
<script src="images/hsgcommon/common.js"></script>
<script src="images/hsgcommon/bootbox.js"></script>
