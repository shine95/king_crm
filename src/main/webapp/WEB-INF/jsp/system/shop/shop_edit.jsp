<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<base href="<%=basePath%>">

<!-- jsp文件头和头部 -->
<%@ include file="../index/top.jsp"%>

</head>
<body class="no-skin">

	<!-- /section:basics/navbar.layout -->
	<div class="main-container" id="main-container">
		<!-- /section:basics/sidebar -->
		<div class="main-content">
			<div class="main-content-inner">
				<div class="page-content">
				
					<div class="page-header">
							<h1>
								<small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									编辑菜单
								</small>
							</h1>
					</div><!-- /.page-header -->

					<div class="row">
						<div class="col-xs-12">

						<form  action="shop/${MSG }.do" name="shopForm" id="shopForm" method="post" class="form-horizontal">
							<input type="hidden" name="SHOP_ID" id="shopId" value="${pd.SHOP_ID }"/>
							<input type="hidden" name="SHOP_TYPE" id="SHOP_TYPE" value="${pd.SHOP_TYPE }"/>
							<input type="hidden" name="SHOP_STATE" id="SHOP_STATE" value="${pd.SHOP_STATE }"/>
							<input type="hidden" name="PARENT_ID" id="PARENT_ID" value="${null == pd.PARENT_ID ? SHOP_ID:pd.PARENT_ID}"/>
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 上级 :</label>
								<div class="col-sm-9">
									<div style="padding-top:5px;">
										<div class="col-xs-4 label label-lg label-light arrowed-in arrowed-right">
											<b>${null == pds.SHOP_NAME ?'(无) 此项为顶级菜单':pds.SHOP_NAME}</b>
										</div>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 名称 :</label>
								<div class="col-sm-9">
									<input type="text" name="SHOP_NAME" id="shopName" value="${pd.SHOP_NAME }" placeholder="这里输入菜单名称" class="col-xs-10 col-sm-5" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 链接  :</label>
								<div class="col-sm-9">
									<c:if test="${null != pds.SHOP_NAME}">
									<input type="text" name="SHOP_URL" id="shopUrl" value="${pd.SHOP_URL }" placeholder="这里输入菜单链接" class="col-xs-10 col-sm-5" />
									</c:if>
									<c:if test="${null == pds.SHOP_NAME}">
									<input type="text" name="SHOP_URL" id="shopUrl" value="" readonly="readonly" placeholder="顶级菜单禁止输入" class="col-xs-10 col-sm-5" />
									</c:if>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 序号 : </label>
								<div class="col-sm-9">
									<input type="number" name="SHOP_ORDER" id="shopOrder" value="${pd.SHOP_ORDER}" placeholder="这里输入菜单序号" title="请输入正整数" class="col-xs-10 col-sm-5" />
								</div>
							</div>
							
							<c:if test="${'0' == SHOP_ID}">
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 类型 : </label>
								<div class="col-sm-9">
									<label style="float:left;padding-left: 8px;padding-top:7px;">
										<input name="form-field-radio" type="radio" class="ace" id="form-field-radio1" <c:if test="${pd.SHOP_TYPE == '1' }">checked="checked"</c:if> onclick="setType('1','1');"/>
										<span class="lbl"> 系统菜单</span>
									</label>
									<label style="float:left;padding-left: 5px;padding-top:7px;">
										<input name="form-field-radio" type="radio" class="ace" id="form-field-radio2" <c:if test="${pd.SHOP_TYPE == '2' }">checked="checked"</c:if> onclick="setType('1','2');"/>
										<span class="lbl"> 业务菜单</span>
									</label>
									<label style="float:left;padding-left: 8px;padding-top:7px;">
										<input name="form-field-radio" type="radio" class="ace" id="form-field-radio3" <c:if test="${pd.SHOP_TYPE == '3' }">checked="checked"</c:if> onclick="setType('1','3');"/>
										<span class="lbl"> 类型三</span>
									</label>
									<label style="float:left;padding-left: 5px;padding-top:7px;">
										<input name="form-field-radio" type="radio" class="ace" id="form-field-radio4" <c:if test="${pd.SHOP_TYPE == '4' }">checked="checked"</c:if> onclick="setType('1','4');"/>
										<span class="lbl"> 类型四</span>
									</label>
								</div>
							</div>
							</c:if>
							
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 状态 : </label>
								<div class="col-sm-9">
									<label style="float:left;padding-left: 8px;padding-top:7px;">
										<input name="form-field-radio2" type="radio" class="ace" id="form-field-radio3" <c:if test="${pd.SHOP_STATE == 1 }">checked="checked"</c:if> onclick="setType('2',1);"/>
										<span class="lbl"> 显示</span>
									</label>
									<label style="float:left;padding-left: 5px;padding-top:7px;">
										<input name="form-field-radio2" type="radio" class="ace" id="form-field-radio4" <c:if test="${pd.SHOP_STATE == 0 }">checked="checked"</c:if> onclick="setType('2',0);"/>
										<span class="lbl"> 隐藏</span>
									</label>
								</div>
							</div>
							
							<div class="clearfix form-actions">
								<div class="col-md-offset-3 col-md-9">
									<a class="btn btn-mini btn-primary" onclick="save();">保存</a>
									<a class="btn btn-mini btn-danger" onclick="goback('${SHOP_ID}');">取消</a>
								</div>
							</div>
							<div class="hr hr-18 dotted hr-double"></div>
						</form>

						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.page-content -->
			</div>
		</div>
		<!-- /.main-content -->


		<!-- 返回顶部 -->
		<a href="#" id="btn-scroll-up"
			class="btn-scroll-up btn btn-sm btn-inverse"> <i
			class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
		</a>

	</div>
	<!-- /.main-container -->

	<!-- basic scripts -->
	<!-- 页面底部js¨ -->
	<%@ include file="../index/foot.jsp"%>
	<!--提示框-->
	<script type="text/javascript" src="static/js/jquery.tips.js"></script>
	<!-- inline scripts related to this page -->
	<script type="text/javascript">
		$(top.hangge());
		
		//返回
		function goback(SHOP_ID){
			top.jzts();
			window.location.href="<%=basePath%>shop.do?SHOP_ID="+SHOP_ID;
		}
		
		//保存
		function save(){
			if($("#shopName").val()==""){
				$("#shopName").tips({
					side:3,
		            msg:'请输入菜单名称',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#shopName").focus();
				return false;
			}
			if($("#shopUrl").val()==""){
				$("#shopUrl").val('#');
			}
			//类型为空默认为业务类型
			if($("#SHOP_TYPE").val()==""){
				$("#SHOP_TYPE").val('1');
			}
			//状态值为空默认为隐藏
			if($("#SHOP_STATE").val()==""){
				$("#SHOP_STATE").val(0);
			}
			if($("#shopOrder").val()==""){
				$("#shopOrder").tips({
					side:1,
		            msg:'请输入菜单序号',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#shopOrder").focus();
				return false;
			}
			if(isNaN(Number($("#shopOrder").val()))){
				$("#shopOrder").tips({
					side:1,
		            msg:'请输入菜单序号',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#shopOrder").focus();
				$("#shopOrder").val(1);
				return false;
			}
			$("#shopForm").submit();
		}
		
		//设置菜单类型or状态
		function setType(type,value){
			if(type == '1'){
				$("#SHOP_TYPE").val(value);
			}else{
				$("#SHOP_STATE").val(value);
			}
		}
	</script>


</body>
</html>