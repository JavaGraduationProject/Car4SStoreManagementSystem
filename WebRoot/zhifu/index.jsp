<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML XMLNS:CC><HEAD><TITLE>֧���� - ����֧�� ��ȫ���٣�</TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<META content=���Ϲ���/����֧��/��ȫ֧��/��ȫ����/�����ȫ/֧��,��ȫ/֧����/��ȫ,֧��/��ȫ������/֧��, 
name=description ���� ����,�տ� ����,ó�� ����ó��.>
<META content=���Ϲ���/����֧��/��ȫ֧��/��ȫ����/�����ȫ/֧��,��ȫ/֧����/��ȫ,֧��/��ȫ������/֧��, name=keywords 
���� ����,�տ� ����,ó�� ����ó��.><LINK href="images/layout.css" 
type=text/css rel=stylesheet>

<SCRIPT language=JavaScript>
<!-- 
  //У�������  -->
function CheckForm()
{
	if (document.alipayment.aliorder.value.length == 0) {
		alert("������ͼ������.");
		document.alipayment.aliorder.focus();
		return false;
	}
	if (document.alipayment.alimoney.value.length == 0) {
		alert("�����븶����.");
		document.alipayment.alimoney.focus();
		return false;
	}
	var reg	= new RegExp(/^\d*\.?\d{0,2}$/);
	if (! reg.test(document.alipayment.alimoney.value))
	{
        alert("����ȷ���븶����");
		document.alipayment.alimoney.focus();
		return false;
	}
	if (Number(document.alipayment.alimoney.value) < 0.01) {
		alert("����������С��0.01.");
		document.alipayment.alimoney.focus();
		return false;
	}
}  

<!-- 
  //����������ʾ -->
function glowit(which){
if (document.all.glowtext[which].filters[0].strength==2)
document.all.glowtext[which].filters[0].strength=1
else
document.all.glowtext[which].filters[0].strength=2
}
function glowit2(which){
if (document.all.glowtext.filters[0].strength==2)
document.all.glowtext.filters[0].strength=1
else
document.all.glowtext.filters[0].strength=2
}
function startglowing(){
if (document.all.glowtext&&glowtext.length){
for (i=0;i<glowtext.length;i++)
eval('setInterval("glowit('+i+')",150)')
}
else if (glowtext)
setInterval("glowit2(0)",150)
}
if (document.all)
window.onload=startglowing


</SCRIPT>
</HEAD>
<style>
<!--
#glowtext{
filter:glow(color=red,strength=2);
width:100%;
}
-->
</style>
<BODY text=#000000 bgColor=#ffffff leftMargin=0 topMargin=4>
<CENTER>

<TABLE cellSpacing=0 cellPadding=0 width=760 border=0>
  <TBODY>
  <TR>
    <TD class=title>֧������ʱ���ʸ������ͨ��</TD>
  </TR></TBODY>
</TABLE><BR>
<FORM name=alipayment onSubmit="return CheckForm();" action=alipayto.asp 
method=post target="_blank">
<table>
 <tr>
   <td>
     <TABLE cellSpacing=0 cellPadding=0 width=740 border=0>
        <TR>
          <TD class=form-left>�տ�� </TD>
          <TD class=form-star>* </TD>
          <TD class=form-right>xxxx&nbsp;</TD>
        </TR>
        <TR>
          <TD colspan="3" align="center"><HR width=600 SIZE=2 color="#999999"></TD>
        </TR>
        <TR style="display:none">
          <TD class=form-left>�����ţ� </TD>
          <TD class=form-star>* </TD>
          <TD class=form-right><INPUT size=30 name=aliorder maxlength="200" value="" ><span>�磺7��5�ն����</span></TD>
        </TR>
        <TR style="display:none">
          <TD class=form-left>����� </TD>
          <TD class=form-star>*</TD>
          <TD class=form-right><INPUT maxLength=10 size=30 name=alimoney onFocus="if(Number(this.value)==0){this.value='';}" value="" readonly="readonly" />
            <span>�磺112.21</span></TD>
        </TR>
        <TR style="display:none">
          <TD class=form-left>��ע��</TD>
          <TD class=form-star></TD>
          <TD class=form-right><TEXTAREA name=alibody rows=5 cols=40 wrap="physical"></TEXTAREA><BR>
          ������ϵ������ͼ��Ҫ�������ȡ�100�����ڣ�</TD>
        </TR>
        <TR>
          <TD class=form-left>֧����ʽ��</TD>
          <TD class=form-star></TD>
          <TD class=form-right>
               <table>
                 <tr>
                   <td><input type="radio" name="pay_bank" value="directPay" checked><img src="images/alipay_1.gif" border="0"/></td>
                 </tr>
                 <tr>
                   <td><input type="radio" name="pay_bank" value="ICBCB2C"/><img src="images/ICBC_OUT.gif" border="0"/></td>
                   <td><input type="radio" name="pay_bank" value="CMB"/><img src="images/CMB_OUT.gif" border="0"/></td>
                   <td><input type="radio" name="pay_bank" value="CCB"/><img src="images/CCB_OUT.gif" border="0"/></td>
                   <td><input type="radio" name="pay_bank" value="BOCB2C"><img src="images/BOC_OUT.gif" border="0"/></td>
                 </tr>
                 <tr>
                   <td><input type="radio" name="pay_bank" value="ABC"/><img src="images/ABC_OUT.gif" border="0"/></td>
                   <td><input type="radio" name="pay_bank" value="COMM"/><img src="images/COMM_OUT.gif" border="0"/></td>
                   <td><input type="radio" name="pay_bank" value="SPDB"/><img src="images/SPDB_OUT.gif" border="0"/></td>
                   <td><input type="radio" name="pay_bank" value="GDB"><img src="images/GDB_OUT.gif" border="0"/></td>
                 </tr>
                 <tr>
                   <td><input type="radio" name="pay_bank" value="CITIC"/><img src="images/CITIC_OUT.gif" border="0"/></td>
                   <td><input type="radio" name="pay_bank" value="CEBBANK"/><img src="images/CEB_OUT.gif" border="0"/></td>
                   <td><input type="radio" name="pay_bank" value="CIB"/><img src="images/CIB_OUT.gif" border="0"/></td>
                   <td><input type="radio" name="pay_bank" value="SDB"><img src="images/SDB_OUT.gif" border="0"/></td>
                 </tr>
                 <tr>
                   <td><input type="radio" name="pay_bank" value="CMBC"/><img src="images/CMBC_OUT.gif" border="0"/></td>
                   <td><input type="radio" name="pay_bank" value="HZCBB2C"/><img src="images/HZCB_OUT.gif" border="0"/></td>
                   <td><input type="radio" name="pay_bank" value="SHBANK"/><img src="images/SHBANK_OUT.gif" border="0"/></td>
                   <td><input type="radio" name="pay_bank" value="NBBANK "><img src="images/NBBANK_OUT.gif" border="0"/></td>
                 </tr>
                 <tr>
                   <td><input type="radio" name="pay_bank" value="SPABANK"/><img src="images/SPABANK_OUT.gif" border="0"/></td>
                   <td><input type="radio" name="pay_bank" value="BJRCB"/><img src="images/BJRCB_OUT.gif" border="0"/></td>
                   <td><input type="radio" name="pay_bank" value="ICBCBTB"/><img src="images/ENV_ICBC_OUT.gif" border="0"/></td>
                   <td><input type="radio" name="pay_bank" value="CCBBTB"/><img src="images/ENV_CCB_OUT.gif" border="0"/></td>
                 </tr>
                 <tr>
                   <td><input type="radio" name="pay_bank" value="SPDBB2B"/><img src="images/ENV_SPDB_OUT.gif" border="0"/></td>
                   <td><input type="radio" name="pay_bank" value="ABCBTB"/><img src="images/ENV_ABC_OUT.gif" border="0"/></td>
				   <td><input type="radio" name="pay_bank" value="fdb101"/><img src="images/FDB_OUT.gif" border="0"/></td>
				   <td><input type="radio" name="pay_bank" value="PSBC-DEBIT"/><img src="images/PSBC_OUT.gif" border="0"/></td>
                 </tr>
               </table>          </TD>
        </TR>
         <TR>
          <TD class=form-left></TD>
          <TD class=form-star></TD>
          <TD class=form-right> <img src="images/button_sure.gif" onClick="javascript:location.href='../zhifu.jsp?id=<%=request.getParameter("id")%>&biao=<%=request.getParameter("biao")%>';"></TD>
        </TR>
</TABLE>   </td>
   </tr>
</table>

</FORM>

<TABLE cellSpacing=1 width=760 border=0>
  <TR>
    <TD><FONT class=note-help>�������������򡱰�ť������ʾ���Ѿ����ܡ�֧��������Э�顱��ͬ�������ҹ������Ʒ�� 
      <BR>
      �������β�����������Ʒ��¼���ϣ��������ҵ�˵���ͽ��ܵĸ��ʽ�����ұ���е���Ʒ��Ϣ��ȷ��¼�����Σ� 
  </FONT>
 </TD>
 </TR>
</TABLE>

<TABLE cellSpacing=0 cellPadding=0 width=760 align=center border=0>
  <TR align=middle>
    <TD class="txt12 lh15"><A href="http://china.alibaba.com/" 
      target=_blank>����Ͱ����¹�˾</A> | ֧������Ȩ���� 2004-2012</TD>
  </TR>
  <TR align=middle>
    <TD class="txt12 lh15"><IMG alt="֧����ͨ��������Ȩ����ȫ��֤�� " 
      src="images/logo_vbvv.gif" border=0><BR>֧����ͨ��������Ȩ����ȫ 
  ��֤��
    </TD>
  </TR>
</TABLE>
</BODY></HTML>
