<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>����ԤԼ</title>
	
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
  String id="";
  id=request.getParameter("id");
  
 

 HashMap mssdq = new CommDAO().getmaps("yonghuming",(String)request.getSession().getAttribute("username"),"huiyuanxinxi");
 String xingming="";  	String lianxidianhua="";  	
 xingming=(String)mssdq.get("xingming");  	lianxidianhua=(String)mssdq.get("lianxidianhua");  	
   %>
<script language="javascript">

function gow()
{
	document.location.href="fuwuyuyue_add.jsp?id=<%=id%>&chepaihao="+document.form1.chepaihao.value;
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












new CommDAO().insert(request,response,"fuwuyuyue",ext,true,false,""); 

}

%>

  <body >
 <form  action="fuwuyuyue_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  ��ӷ���ԤԼ:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >
		<tr><td  width="200">ԤԼ���ţ�</td><td><input name='yuyuedanhao' type='text' id='yuyuedanhao' value='<%=Info.getID()%>' onblur='' class="form-control" /></td></tr>		<tr><td width="200">ԤԼ���ڣ�</td><td><input name='yuyueriqi' type='text' id='yuyueriqi' value='' onblur='checkform()' readonly='readonly' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" class="form-control"  />&nbsp;*<label id='clabelyuyueriqi' /></td></tr>		<tr><td>ԤԼ���ͣ�</td><td><select name='yuyueleixing' id='yuyueleixing' class="form-control2"><option value="����">����</option><option value="ά��">ά��</option></select></td></tr>		<tr><td>���ƺţ�</td><td><%=Info.getselectsl("chepaihao","wodecheliang","chepaihao")%></td></tr>		<tr><td  width="200">Ʒ�ƣ�</td><td><input name='pinpai' type='text' id='pinpai' class="form-control" ></td></tr>		<tr><td  width="200">�������ƣ�</td><td><input name='cheliangmingcheng' type='text' id='cheliangmingcheng' class="form-control" ></td></tr>		<tr><td  width="200">���ͣ�</td><td><input name='chexing' type='text' id='chexing' class="form-control" ></td></tr>		<tr><td  width="200">������ʽ��</td><td><input name='qudongfangshi' type='text' id='qudongfangshi' class="form-control" ></td></tr>		<tr><td  width="200">������ʽ��</td><td><input name='huandangfangshi' type='text' id='huandangfangshi' class="form-control" ></td></tr>		<tr><td  width="200">�û�����</td><td><input name='yonghuming' type='text' id='yonghuming' onblur='' class="form-control" value='<%=request.getSession().getAttribute("username")%>' readonly="readonly" /></td></tr>		<tr><td  width="200">������</td><td><input name='xingming' type='text' id='xingming' value='' onblur='' class="form-control" /></td></tr><script language="javascript">document.form1.xingming.value='<%=xingming%>';document.form1.xingming.setAttribute("readOnly",'true');</script>		<tr><td  width="200">��ϵ�绰��</td><td><input name='lianxidianhua' type='text' id='lianxidianhua' value='' onblur='' class="form-control" /></td></tr><script language="javascript">document.form1.lianxidianhua.value='<%=lianxidianhua%>';document.form1.lianxidianhua.setAttribute("readOnly",'true');</script>		<tr><td>״̬��</td><td><select name='zhuangtai' id='zhuangtai' class="form-control2"><option value="δ���">δ���</option><option value="�����">�����</option></select></td></tr>		<tr><td  width="200">�����ע��</td><td><textarea name='qingkuangbeizhu'  id='qingkuangbeizhu' onblur='' class="form-control" style="width:600px;height:80px;" ></textarea></td></tr>		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ"  class="btn btn-info btn-small" />
      <input type="reset" name="Submit2" value="����" class="btn btn-info btn-small" /></td>
    </tr>
  </table>
</form>

  </body>
</html>

<%
if(request.getParameter("chepaihao")==null || request.getParameter("chepaihao").equals("")){}else{

HashMap mmm = new CommDAO().getmaps("chepaihao",request.getParameter("chepaihao"),"wodecheliang"); 
%>
<script language="javascript">
document.form1.chepaihao.value="<%=mmm.get("chepaihao")%>";document.form1.pinpai.value="<%=mmm.get("pinpai")%>";document.form1.cheliangmingcheng.value="<%=mmm.get("cheliangmingcheng")%>";document.form1.chexing.value="<%=mmm.get("chexing")%>";document.form1.qudongfangshi.value="<%=mmm.get("qudongfangshi")%>";document.form1.huandangfangshi.value="<%=mmm.get("huandangfangshi")%>";//suilafuzhi

</script>
<%
}
%>

<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	var yuyueriqiobj = document.getElementById("yuyueriqi"); if(yuyueriqiobj.value==""){document.getElementById("clabelyuyueriqi").innerHTML="&nbsp;&nbsp;<font color=red>������ԤԼ����</font>";return false;}else{document.getElementById("clabelyuyueriqi").innerHTML="  "; } 	


return true;   
}   
popheight=450;
</script>  
<script src="images/hsgcommon/jq.js"></script>
<script src="images/hsgcommon/common.js"></script>
<script src="images/hsgcommon/bootbox.js"></script>
