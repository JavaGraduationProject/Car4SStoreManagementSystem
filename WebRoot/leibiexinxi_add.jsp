<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>�����Ϣ</title>
	
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
	document.location.href="leibiexinxi_add.jsp?id=<%=id%>";
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










new CommDAO().insert(request,response,"leibiexinxi",ext,true,false,""); 

}

%>

  <body >
 <form  action="leibiexinxi_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  ��������Ϣ:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >
		<tr><td  width="200">��Ʒ���</td><td><input name='shangpinleibie' type='text' id='shangpinleibie' value='' onblur='checkform()' class="form-control" />&nbsp;*<label id='clabelshangpinleibie' /></td></tr>		<tr><td  width="200">��ע��</td><td><textarea name='beizhu'  id='beizhu' onblur='checkform()' class="form-control" style="width:600px;height:80px;" ></textarea>&nbsp;*<label id='clabelbeizhu' /></td></tr>		
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
 
	var shangpinleibieobj = document.getElementById("shangpinleibie"); if(shangpinleibieobj.value==""){document.getElementById("clabelshangpinleibie").innerHTML="&nbsp;&nbsp;<font color=red>��������Ʒ���</font>";return false;}else{document.getElementById("clabelshangpinleibie").innerHTML="  "; } 	var beizhuobj = document.getElementById("beizhu"); if(beizhuobj.value==""){document.getElementById("clabelbeizhu").innerHTML="&nbsp;&nbsp;<font color=red>�����뱸ע</font>";return false;}else{document.getElementById("clabelbeizhu").innerHTML="  "; } 	


return true;   
}   
popheight=450;
</script>  
<script src="images/hsgcommon/jq.js"></script>
<script src="images/hsgcommon/common.js"></script>
<script src="images/hsgcommon/bootbox.js"></script>
