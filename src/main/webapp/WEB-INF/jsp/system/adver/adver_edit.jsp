<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
	<head>
	<base href="<%=basePath%>">
	<!-- 下拉框 -->
	<link rel="stylesheet" href="static/ace/css/chosen.css" />
	<!-- jsp文件头和头部 -->
	<%@ include file="../../system/index/top.jsp"%>
	<!-- 日期框 -->
	<link rel="stylesheet" href="static/ace/css/datepicker.css" />
</head>
<body class="no-skin">
<!-- /section:basics/navbar.layout -->
<div class="main-container" id="main-container">
	<!-- /section:basics/sidebar -->
	<div class="main-content">
		<div class="main-content-inner">
			<div class="page-content">
				<div class="row">
					<div class="col-xs-12">
					
					<form action="adver/${msg }.do" name="Form" id="Form" method="post">
						<input type="hidden" name="ID" id="ID" value="${pd.ID}"/>
						<div id="zhongxin" style="padding-top: 13px;">
						<table id="table_report" class="table table-striped table-bordered table-hover">
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">广告名称:</td>
								<td><input type="text" name="NAME" id="NAME" value="${pd.NAME}" maxlength="50" placeholder="这里输入广告名称" title="广告名称" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">开始时间:</td>
								<td><input class="span10 date-picker" name="START_TIME" id="START_TIME" value="${pd.START_TIME}" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" placeholder="开始时间" title="开始时间" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">结束时间:</td>
								<td><input class="span10 date-picker" name="END_TIME" id="END_TIME" value="${pd.END_TIME}" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" placeholder="结束时间" title="结束时间" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">广告跳转地址:</td>
								<td><input type="text" name="LINK" id="LINK" value="${pd.LINK}" maxlength="200" placeholder="这里输入广告跳转地址" title="广告跳转地址" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">图片连接:</td>
								<td><input type="text" name="IMG_URL" id="IMG_URL" value="${pd.IMG_URL}" maxlength="200" placeholder="这里输入图片连接" title="图片连接" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注说明:</td>
								<td><input type="text" name="REMARK" id="REMARK" value="${pd.REMARK}" maxlength="200" placeholder="这里输入备注说明" title="备注说明" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">修改人:</td>
								<td><input type="number" name="MODIFIER" id="MODIFIER" value="${pd.MODIFIER}" maxlength="32" placeholder="这里输入修改人" title="修改人" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">创建人:</td>
								<td><input type="number" name="CREATOR" id="CREATOR" value="${pd.CREATOR}" maxlength="32" placeholder="这里输入创建人" title="创建人" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">版本操作系统:</td>
								<td><input type="text" name="SYSTEM_TYPE" id="SYSTEM_TYPE" value="${pd.SYSTEM_TYPE}" maxlength="8" placeholder="这里输入版本操作系统" title="版本操作系统" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">点击次数:</td>
								<td><input type="number" name="CLICK_COUNT" id="CLICK_COUNT" value="${pd.CLICK_COUNT}" maxlength="32" placeholder="这里输入点击次数" title="点击次数" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="text-align: center;" colspan="10">
									<a class="btn btn-mini btn-primary" onclick="save();">保存</a>
									<a class="btn btn-mini btn-danger" onclick="top.Dialog.close();">取消</a>
								</td>
							</tr>
						</table>
						</div>
						<div id="zhongxin2" class="center" style="display:none"><br/><br/><br/><br/><br/><img src="static/images/jiazai.gif" /><br/><h4 class="lighter block green">提交中...</h4></div>
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
</div>
<!-- /.main-container -->


	<!-- 页面底部js¨ -->
	<%@ include file="../../system/index/foot.jsp"%>
	<!-- 下拉框 -->
	<script src="static/ace/js/chosen.jquery.js"></script>
	<!-- 日期框 -->
	<script src="static/ace/js/date-time/bootstrap-datepicker.js"></script>
	<!--提示框-->
	<script type="text/javascript" src="static/js/jquery.tips.js"></script>
		<script type="text/javascript">
		$(top.hangge());
		//保存
		function save(){
			if($("#NAME").val()==""){
				$("#NAME").tips({
					side:3,
		            msg:'请输入广告名称',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#NAME").focus();
			return false;
			}
			if($("#START_TIME").val()==""){
				$("#START_TIME").tips({
					side:3,
		            msg:'请输入开始时间',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#START_TIME").focus();
			return false;
			}
			if($("#END_TIME").val()==""){
				$("#END_TIME").tips({
					side:3,
		            msg:'请输入结束时间',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#END_TIME").focus();
			return false;
			}
			if($("#LINK").val()==""){
				$("#LINK").tips({
					side:3,
		            msg:'请输入广告跳转地址',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#LINK").focus();
			return false;
			}
			if($("#IMG_URL").val()==""){
				$("#IMG_URL").tips({
					side:3,
		            msg:'请输入图片连接',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#IMG_URL").focus();
			return false;
			}
			if($("#REMARK").val()==""){
				$("#REMARK").tips({
					side:3,
		            msg:'请输入备注说明',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#REMARK").focus();
			return false;
			}
			if($("#MODIFIER").val()==""){
				$("#MODIFIER").tips({
					side:3,
		            msg:'请输入修改人',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#MODIFIER").focus();
			return false;
			}
			if($("#CREATOR").val()==""){
				$("#CREATOR").tips({
					side:3,
		            msg:'请输入创建人',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#CREATOR").focus();
			return false;
			}
			if($("#SYSTEM_TYPE").val()==""){
				$("#SYSTEM_TYPE").tips({
					side:3,
		            msg:'请输入版本操作系统',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#SYSTEM_TYPE").focus();
			return false;
			}
			if($("#CLICK_COUNT").val()==""){
				$("#CLICK_COUNT").tips({
					side:3,
		            msg:'请输入点击次数',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#CLICK_COUNT").focus();
			return false;
			}
			$("#Form").submit();
			$("#zhongxin").hide();
			$("#zhongxin2").show();
		}
		$(function() {
			//日期框
			$('.date-picker').datepicker({autoclose: true,todayHighlight: true});
		});
		</script>
</body>
</html>