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
					
					<form action="bank/${msg }.do" name="Form" id="Form" method="post">
						<input type="hidden" name="BANK_ID" id="BANK_ID" value="${pd.BANK_ID}"/>
						<div id="zhongxin" style="padding-top: 13px;">
						<table id="table_report" class="table table-striped table-bordered table-hover">
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">银行名字:</td>
								<td><input type="text" name="BANK_NAME" id="BANK_NAME" value="${pd.BANK_NAME}" maxlength="128" placeholder="这里输入银行名字" title="银行名字" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">链接:</td>
								<td><input type="text" name="BANK_URL" id="BANK_URL" value="${pd.BANK_URL}" maxlength="128" placeholder="这里输入链接" title="链接" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">简介:</td>
								<td><input type="text" name="INFO" id="INFO" value="${pd.INFO}" maxlength="128" placeholder="这里输入简介" title="简介" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">点击次数:</td>
								<td><input type="number" name="CLICK_NUMBER" id="CLICK_NUMBER" value="${pd.CLICK_NUMBER}" maxlength="32" placeholder="这里输入点击次数" title="点击次数" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">LOGO:</td>
								<td><input type="text" name="LOGO" id="LOGO" value="${pd.LOGO}" maxlength="128" placeholder="这里输入LOGO" title="LOGO" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">产品id:</td>
								<td><input type="number" name="APP_ID" id="APP_ID" value="${pd.APP_ID}" maxlength="32" placeholder="这里输入产品id" title="产品id" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">包id:</td>
								<td><input type="text" name="BACKAGE_ID" id="BACKAGE_ID" value="${pd.BACKAGE_ID}" maxlength="128" placeholder="这里输入包id" title="包id" style="width:98%;"/></td>
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
			if($("#BANK_NAME").val()==""){
				$("#BANK_NAME").tips({
					side:3,
		            msg:'请输入银行名字',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#BANK_NAME").focus();
			return false;
			}
			if($("#BANK_URL").val()==""){
				$("#BANK_URL").tips({
					side:3,
		            msg:'请输入链接',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#BANK_URL").focus();
			return false;
			}
			if($("#INFO").val()==""){
				$("#INFO").tips({
					side:3,
		            msg:'请输入简介',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#INFO").focus();
			return false;
			}
			if($("#CLICK_NUMBER").val()==""){
				$("#CLICK_NUMBER").tips({
					side:3,
		            msg:'请输入点击次数',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#CLICK_NUMBER").focus();
			return false;
			}
			if($("#LOGO").val()==""){
				$("#LOGO").tips({
					side:3,
		            msg:'请输入LOGO',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#LOGO").focus();
			return false;
			}
			if($("#APP_ID").val()==""){
				$("#APP_ID").tips({
					side:3,
		            msg:'请输入产品id',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#APP_ID").focus();
			return false;
			}
			if($("#BACKAGE_ID").val()==""){
				$("#BACKAGE_ID").tips({
					side:3,
		            msg:'请输入包id',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#BACKAGE_ID").focus();
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