<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>���ֲ��</title>
	
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
	document.location.href="julebuhuodong_add.jsp?id=<%=id%>";
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












new CommDAO().insert(request,response,"julebuhuodong",ext,true,false,""); 

}

%>

  <body >
 <form  action="julebuhuodong_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  ��Ӿ��ֲ��:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >
		<tr><td  width="200">����ƣ�</td><td><input name='huodongmingcheng' type='text' id='huodongmingcheng' value='' onblur='checkform()' class="form-control" />&nbsp;*<label id='clabelhuodongmingcheng' /></td></tr>		<tr><td>���ֲ����ƣ�</td><td><%=Info.getselect("julebumingcheng","julebuxinxi","julebumingcheng")%>&nbsp;*<label id='clabeljulebumingcheng' /></td></tr>		<tr><td  width="200">��ϵ�绰��</td><td><input name='lianxidianhua' type='text' id='lianxidianhua' value='' onblur='checkform()' class="form-control" />&nbsp;<label id='clabellianxidianhua' />����绰��ʽ[7��8λ�绰����11λ�ֻ�]</td></tr>		<tr><td width="200">�ʱ�䣺</td><td><input name='huodongshijian' type='text' id='huodongshijian' value='' onblur='' readonly='readonly' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" class="form-control"  /></td></tr>		<tr><td  width="200">��ص㣺</td><td><input name='huodongdidian' type='text' id='huodongdidian' value='' onblur='' class="form-control" style="width:600px;" /></td></tr>		<tr><td  width="200">���飺</td><td><textarea name='huodongjianjie'  id='huodongjianjie' onblur='' class="form-control" style="width:600px;height:80px;" ></textarea></td></tr>		
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
 
	var huodongmingchengobj = document.getElementById("huodongmingcheng"); if(huodongmingchengobj.value==""){document.getElementById("clabelhuodongmingcheng").innerHTML="&nbsp;&nbsp;<font color=red>����������</font>";return false;}else{document.getElementById("clabelhuodongmingcheng").innerHTML="  "; } 	var julebumingchengobj = document.getElementById("julebumingcheng"); if(julebumingchengobj.value==""){document.getElementById("clabeljulebumingcheng").innerHTML="&nbsp;&nbsp;<font color=red>��������ֲ�����</font>";return false;}else{document.getElementById("clabeljulebumingcheng").innerHTML="  "; } 	var lianxidianhuaobj = document.getElementById("lianxidianhua"); if(lianxidianhuaobj.value!=""){ if(/^(([0\+]\d{2,3}-)?(0\d{2,3})-)?(\d{7,8})(-(\d{3,}))?$/.test(lianxidianhuaobj.value) || /^1[3|4|5|6|7|8|9][0-9]\d{8,8}$/.test(lianxidianhuaobj.value)){document.getElementById("clabellianxidianhua").innerHTML=""; }else{document.getElementById("clabellianxidianhua").innerHTML="&nbsp;&nbsp;<font color=red>����绰��ʽ[7��8λ�绰����11λ�ֻ�]</font>"; return false;}}      


return true;   
}   
popheight=450;
</script>  
<script src="images/hsgcommon/jq.js"></script>
<script src="images/hsgcommon/common.js"></script>
<script src="images/hsgcommon/bootbox.js"></script>
