
<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

				<li class="layui-nav-item">
                    <a href="javascript:;">ϵͳ�û�����</a>
                    <dl class="layui-nav-child">
						<dd><a href='yhzhgl.jsp' target='hsgmain'>����Ա�û�</a></dd>
<dd><a href='mod.jsp' target='hsgmain'>�޸�����</a></dd>

                    </dl>
                </li>
                       
				<li class="layui-nav-item">
                    <a href="javascript:;">�������ݹ���</a>
                    <dl class="layui-nav-child">
						<dd><a href='xinwentongzhi_add.jsp?lb=������Ѷ' target='hsgmain'>������Ѷ���</a></dd>
<dd><a href='xinwentongzhi_list.jsp?lb=������Ѷ' target='hsgmain'>������Ѷ��ѯ</a></dd>
<dd><a href='xinwentongzhi_add2.jsp?lb=���ͼ' target='hsgmain'>���ͼ���</a></dd>
<dd><a href='xinwentongzhi_list2.jsp?lb=���ͼ' target='hsgmain'>���ͼ��ѯ</a></dd>
                    </dl>
                </li>
                       
				<li class="layui-nav-item">
                    <a href="javascript:;">��Ա����</a>
                    <dl class="layui-nav-child">
						<dd><a href='huiyuanxinxi_list.jsp' target='hsgmain'>��Ա��ѯ</a></dd>

                    </dl>
                </li>
				          
				<li class="layui-nav-item">
                    <a href="javascript:;">Ա������</a>
                    <dl class="layui-nav-child">
						<dd><a href='yuangongxinxi_add.jsp' target='hsgmain'>Ա�����</a></dd>
<dd><a href='yuangongxinxi_list.jsp' target='hsgmain'>Ա����ѯ</a></dd>

                    </dl>
                </li>
           
                       
			
                       
				<li class="layui-nav-item">
                    <a href="javascript:;">���ֲ�����</a>
                    <dl class="layui-nav-child">
						<dd><a href='julebuxinxi_add.jsp' target='hsgmain'>���ֲ����</a></dd>
<dd><a href='julebuxinxi_list.jsp' target='hsgmain'>���ֲ���ѯ</a></dd>

                    </dl>
                </li>
                       
			
                       
				<li class="layui-nav-item">
                    <a href="javascript:;">���ֲ������</a>
                    <dl class="layui-nav-child">
						<dd><a href='julebuhuodong_add.jsp' target='hsgmain'>���ֲ�����</a></dd>
<dd><a href='julebuhuodong_list.jsp' target='hsgmain'>���ֲ����ѯ</a></dd>

                    </dl>
                </li>
                       
				<li class="layui-nav-item">
                    <a href="javascript:;">�Լ��ι���</a>
                    <dl class="layui-nav-child">
						<dd><a href='zijiayou_add.jsp' target='hsgmain'>�Լ������</a></dd>
<dd><a href='zijiayou_list.jsp' target='hsgmain'>�Լ��β�ѯ</a></dd>
	<dd><a href='zijiayoubaoming_list.jsp' target='hsgmain'>�Լ��α�����ѯ</a></dd>

                    </dl>
                </li>
                       
				<li class="layui-nav-item">
                    <a href="javascript:;">��������</a>
                    <dl class="layui-nav-child">
						<dd><a href='cheliangxinxi_add.jsp' target='hsgmain'>�������</a></dd>
<dd><a href='cheliangxinxi_list.jsp' target='hsgmain'>������ѯ</a></dd>

                    </dl>
                </li>
             
                       
				<li class="layui-nav-item">
                    <a href="javascript:;">�ͻ���������</a>
                    <dl class="layui-nav-child">
						<dd><a href='wodecheliang_list.jsp' target='hsgmain'>�ͻ�������ѯ</a></dd>

                    </dl>
                </li>
                       
				<li class="layui-nav-item">
                    <a href="javascript:;">����ԤԼ����</a>
                    <dl class="layui-nav-child">
						<dd><a href='fuwuyuyue_list.jsp' target='hsgmain'>����ԤԼ��ѯ</a></dd>
<dd><a href='fuwudingdan_list.jsp' target='hsgmain'>���񶩵���ѯ</a></dd>
                    </dl>
                </li>
                       
				<li class="layui-nav-item">
                    <a href="javascript:;">�����̳ǹ���</a>
                    <dl class="layui-nav-child">
						<dd><a href='leibiexinxi_add.jsp' target='hsgmain'>��Ʒ������</a></dd>
<dd><a href='leibiexinxi_list.jsp' target='hsgmain'>��Ʒ����ѯ</a></dd>

	<dd><a href='shangpinxinxi_add.jsp' target='hsgmain'>��Ʒ��Ϣ���</a></dd>
<dd><a href='shangpinxinxi_list.jsp' target='hsgmain'>��Ʒ��Ϣ��ѯ</a></dd>

<dd><a href='jifenshangpin_add.jsp' target='hsgmain'>������Ʒ���</a></dd>
<dd><a href='jifenshangpin_list.jsp' target='hsgmain'>������Ʒ��ѯ</a></dd>
                    </dl>
                </li>
				
					<li class="layui-nav-item">
                    <a href="javascript:;">�̳Ƕ�������</a>
                    <dl class="layui-nav-child"> 

<dd><a href='dingdanxinxi_list.jsp' target='hsgmain'>�̳Ƕ�����ѯ</a></dd>
<dd><a href='duihuandingdan_list.jsp' target='hsgmain'>���ֶ�����ѯ</a></dd>
                    </dl>
                </li>
                       
				 
				
					<li class="layui-nav-item">
                    <a href="javascript:;">������̳����</a>
                    <dl class="layui-nav-child">
						<dd><a href='bankuai_add.jsp' target='hsgmain'>������</a></dd>
<dd><a href='bankuai_list.jsp' target='hsgmain'>����ѯ</a></dd>
<dd><a href='tiezi_list.jsp' target='hsgmain'>���Ӳ�ѯ</a></dd>
                    </dl>
                </li>
              
             
                       
					<li class="layui-nav-item">
                    <a href="javascript:;">ϵͳ�������</a>
                    <dl class="layui-nav-child">
						<dd><a href='dx.jsp?lb=��˾����' target='hsgmain'>��˾��������</a></dd>
<dd><a href='dx.jsp?lb=��ϵ����' target='hsgmain'>��ϵ��������</a></dd>

                    </dl>
                </li>





