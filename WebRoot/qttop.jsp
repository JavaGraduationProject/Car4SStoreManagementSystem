<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
	<div class="top"> 
	<div class="container">
		<p class="fl">��ӭ���ʣ�����4s�����ϵͳ</p>
        <p class="fl" style="font-size:15px">
        &nbsp;&nbsp;&nbsp;
		  <%
    if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")==""){
     %>
        <a href="userlog.jsp" >��¼</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="huiyuanxinxiadd.jsp" >��Աע��</a>
		  <%}else{ %>
	  <%=request.getSession().getAttribute("username")%>,[<%=request.getSession().getAttribute("cx")%>]&nbsp; <a href="logout.jsp" onclick="return confirm('ȷ��Ҫ�˳���')" >�˳�</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="main.jsp" >��̨</a>
	    <%} %>
        
		<div class="fr">
			<ul> </li>
			</ul>
		</div>
	</div>
</div>
<div class="head">
	<div class="container">
		<div class="logo fl">
			<a href="index.jsp"><h1 style="float:left"><img src="qtimages/gg.jpg" height="50" width="128" ></h1>
			</a>
         <p style="margin-top:10px; float:left; margin-left:20px; font-size:18px; color:#900">����4s�����ϵͳ</p>
		</div>
		 
	</div>
</div>
<div class="nav">
	<div class="container c">
		<div class="nav-list fr">
    			<ul id="nav">
					<li ><a href="index.jsp">��վ��ҳ</a></li>
					<li><a href='fuwuyuyueadd.jsp'>����ԤԼ</a></li>
 <li><a style="cursor:pointer">�̳ǻ</a>
							 <dl class="hide" style="display: none;">
							 	<em><a href='shangpinxinxilisttp.jsp'>�����̳�</a></em> 	<em><a href='jifenshangpinlisttp.jsp'>���ֶһ�</a></em>  <em><a href='zijiayoulist.jsp'>�Լ���</a></em> 
							</dl>
					</li>

		 			<li><a style="cursor:pointer">���ֲ�</a>
							 <dl class="hide" style="display: none;">
							 	<em><a href='julebuxinxilist.jsp'>���ֲ���Ϣ</a></em>  <em><a href='julebuhuodonglist.jsp'>���ֲ��</a></em> 
							</dl>
					</li>  <li><a style="cursor:pointer">������Ϣ</a>
							 <dl class="hide" style="display: none;">
							 	<em><a href='cheliangxinxilist.jsp'>������Ϣ</a></em> 
							</dl>
					</li><li><a style="cursor:pointer">����Ա��</a>
							 <dl class="hide" style="display: none;">
							 	<em><a href='yuangongxinxilist.jsp'>����Ա��</a></em> 
							</dl>
					</li><li><a style="cursor:pointer">������Ѷ</a>
							 <dl class="hide" style="display: none;">
							 	<em><a href='news.jsp?lb=������Ѷ'>������Ѷ</a></em> 
							</dl>
					</li><li><a style="cursor:pointer">ϵͳ��Ҫ</a>
							 <dl class="hide" style="display: none;">
							 	<em><a href='dx_detail.jsp?lb=��˾����'>��˾����</a></em> <em><a href='dx_detail.jsp?lb=��ϵ����'>��ϵ����</a></em> 
							</dl>
					</li>
					<li><a style="cursor:pointer">������̳</a>
							 <dl class="hide" style="display: none;">
							 	<em><a href='bbs.jsp'>������̳</a></em>  
							</dl>
					</li>
					<!--yoxulixuyaxn-->
					<li><a href="login.jsp">��̨����</a></li>
				</ul>
		</div>
	</div>
</div>
<script>
	jQuery("#nav li:has(dl)").hover(function(){  
	   jQuery(this).children("dl").stop(true,true).slideDown(400); 
	  },function(){  
	   jQuery(this).children("dl").stop(true,true).slideUp("fast");  
	});
</script>
<script type="text/javascript">
 <%
String error = (String)request.getAttribute("error"); 
if(error!=null)
{
 %>
 alert("�û������������");
 <%}%>
  <%
String random = (String)request.getAttribute("random"); 
if(random!=null)
{
 %>
 alert("��֤�����");
 <%}%>
 </script>
