<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=gb2312">
	<meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE">
  <title>��Ա��Ϣ</title>
  
	<meta name="Keywords" content="">
	<meta name="Description" content="">
	<meta name="author" content="">
	<meta name="format-detection" content="telephone=no">
	<link href="qtimages/Layout.css" rel="stylesheet" type="text/css">
	<script src="qtimages/getjs_bdtj"></script><script charset="utf-8" src="qtimages/insert_bdtj"></script><script src="qtimages/conv.js"></script><script src="qtimages/hm.js"></script>
	<script type="text/javascript" src="qtimages/jquery1.42.min.js"></script>
	<script type="text/javascript" src="qtimages/jquery.SuperSlide.2.1.1.js"></script>
	<script src="qtimages/scrollReveal.js"></script> 
	 <link rel="stylesheet" href="./qtimages/sl_common_form.css">
</head>
<%

  String id="";

 
  
 

   %>
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	<script language=javascript src='js/ajax.js'></script>
	<script language="javascript">
function checkform()
{
	var yonghumingobj = document.getElementById("yonghuming"); if(yonghumingobj.value==""){document.getElementById("clabelyonghuming").innerHTML="&nbsp;&nbsp;<font color=red>�������û���</font>";return false;}else{document.getElementById("clabelyonghuming").innerHTML="  "; } 
	var yonghumingobj = document.getElementById("yonghuming");  
if(yonghumingobj.value!=""){  
var ajax = new AJAX();
ajax.post("factory/checkno.jsp?table=huiyuanxinxi&col=yonghuming&value="+yonghumingobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabelyonghuming").innerHTML="&nbsp;&nbsp;<font color=red>�û����Ѵ���</font>";  
return false;
}else{document.getElementById("clabelyonghuming").innerHTML="  ";  
}  
} 
	var mimaobj = document.getElementById("mima"); if(mimaobj.value==""){document.getElementById("clabelmima").innerHTML="&nbsp;&nbsp;<font color=red>����������</font>";return false;}else{document.getElementById("clabelmima").innerHTML="  "; } 
	var xingmingobj = document.getElementById("xingming"); if(xingmingobj.value==""){document.getElementById("clabelxingming").innerHTML="&nbsp;&nbsp;<font color=red>����������</font>";return false;}else{document.getElementById("clabelxingming").innerHTML="  "; } 
	var dianhuaobj = document.getElementById("dianhua"); if(dianhuaobj.value==""){document.getElementById("clabeldianhua").innerHTML="&nbsp;&nbsp;<font color=red>������绰</font>";return false;}else{document.getElementById("clabeldianhua").innerHTML="  "; } 
	var dianhuaobj = document.getElementById("dianhua"); if(dianhuaobj.value!=""){ if(/^(([0\+]\d{2,3}-)?(0\d{2,3})-)?(\d{7,8})(-(\d{3,}))?$/.test(dianhuaobj.value) || /^1[3|4|5|6|7|8|9][0-9]\d{8,8}$/.test(dianhuaobj.value)){document.getElementById("clabeldianhua").innerHTML=""; }else{document.getElementById("clabeldianhua").innerHTML="&nbsp;&nbsp;<font color=red>����绰��ʽ[7��8λ�绰����11λ�ֻ�]</font>"; return false;}}  
    var shenfenzhengobj = document.getElementById("shenfenzheng"); if(shenfenzhengobj.value!=""){ if(/^\d{15}$|^\d{18}$|^\d{17}[xX]$/.test(shenfenzhengobj.value)){document.getElementById("clabelshenfenzheng").innerHTML=""; }else{document.getElementById("clabelshenfenzheng").innerHTML="&nbsp;&nbsp;<font color=red>�������֤��ʽ</font>"; return false;}}  
    var jifenobj = document.getElementById("jifen"); if(jifenobj.value!=""){ if(/^[0-9]+.?[0-9]*$/.test(jifenobj.value)){document.getElementById("clabeljifen").innerHTML=""; }else{document.getElementById("clabeljifen").innerHTML="&nbsp;&nbsp;<font color=red>����������</font>"; return false;}}  
    
}
function gow()
{
	document.location.href="huiyuanxinxiadd.jsp?id=<%=id%>";
}
popheight=850;
</script>


<body>
<%@ include file="qttop.jsp"%>
<%@ include file="bht.jsp"%>
<%@ include file="sidebufen1.jsp"%>
<div class="news">
	<div class="container">
		<div class="index-title txt-c">
			<em>רҵ�ķ��� һ����ˮƽ</em>
			<div class="line">
				<h3>��Ա��Ϣ<img src="qtimages/en-news.png" height="16" width="93"></h3>
			</div>
		</div>
		<div class="news-list c">
			<ul>
				  <div class="content-form">
					<% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){



ext.put("issh","��");



ext.put("dianzan_d","0");
ext.put("dianzan_c","0");



new CommDAO().insert(request,response,"huiyuanxinxi",ext,true,false,"index.jsp"); 

 }
%>
   <form  action="huiyuanxinxiadd.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
    <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse"  class="newsline">  
       <tr><td  width="200">�û�����</td><td><input name='yonghuming' type='text' id='yonghuming' value='' onblur='checkform()' class="user" />&nbsp;*<label id='clabelyonghuming' /></td></tr>
		<tr><td  width="200">���룺</td><td><input name='mima' type='text' id='mima' value='' onblur='checkform()' class="user" />&nbsp;*<label id='clabelmima' /></td></tr>
		<tr><td  width="200">������</td><td><input name='xingming' type='text' id='xingming' value='' onblur='checkform()' class="user" />&nbsp;*<label id='clabelxingming' /></td></tr>
		<tr><td>�Ա�</td><td><select name='xingbie' id='xingbie' class="xingbie"><option value="��">��</option><option value="Ů">Ů</option></select></td></tr>
		<tr><td  width="200">�绰��</td><td><input name='dianhua' type='text' id='dianhua' value='' onblur='checkform()' class="user" />&nbsp;*<label id='clabeldianhua' /></td></tr>
		<tr><td  width="200">���֤��</td><td><input name='shenfenzheng' type='text' id='shenfenzheng' value='' onblur='checkform()' class="user" style="width:600px;" />&nbsp;<label id='clabelshenfenzheng' />�������֤��ʽ</td></tr>
		<tr><td  width="200">��Ƭ��</td><td><input name='zhaopian' type='text' id='zhaopian' size='50' value='' onblur='' class="user" />&nbsp;<input type='button' value='�ϴ�' onClick="up('zhaopian')"   class='hsgqiehuanshitu'  /></td></tr>
		<tr><td  width="200">סַ��</td><td><input name='zhuzhi' type='text' id='zhuzhi' value='' onblur='' class="user" /></td></tr>
		<tr style="display:none"><td  width="200">���֣�</td><td><input name='jifen' type='text' id='jifen' value='0' onblur='checkform()' class="user" />&nbsp;<label id='clabeljifen' />����������</td></tr>
		<tr><td  width="200">��飺</td><td><textarea name='jianjie'  id='jianjie' onblur='' class="user" style="width:600px;height:80px;" ></textarea></td></tr>
		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onclick="return checkform();" class='hsgqiehuanshitu'  />
    </td>
    </tr>
	</table>
  </form>	
					</div>
			</ul>
		</div>
	</div>
</div>
<%@ include file="qtdown.jsp"%>

</body> 
</html>

<!--yoxudixtu-->
