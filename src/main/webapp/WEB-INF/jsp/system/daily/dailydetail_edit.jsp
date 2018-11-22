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
					
					<form action="dailydetail/${msg }.do" name="Form" id="Form" method="post">
						<input type="hidden" name="ID" id="ID" value="${pd.ID}"/>
						<div id="zhongxin" style="padding-top: 13px;">
						<table id="table_report" class="table table-striped table-bordered table-hover">
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">渠道:</td>
								<td><input type="number" name="SOURCE" id="SOURCE" value="${pd.SOURCE}" maxlength="32" placeholder="这里输入渠道" title="渠道" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">注册数:</td>
								<td><input type="number" name="REGISTER" id="REGISTER" value="${pd.REGISTER}" maxlength="32" placeholder="这里输入注册数" title="注册数" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">实名数:</td>
								<td><input type="number" name="REALNAME" id="REALNAME" value="${pd.REALNAME}" maxlength="32" placeholder="这里输入实名数" title="实名数" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">运营商成功数:</td>
								<td><input type="number" name="OPERATOR" id="OPERATOR" value="${pd.OPERATOR}" maxlength="32" placeholder="这里输入运营商成功数" title="运营商成功数" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">绑卡成功数:</td>
								<td><input type="number" name="BIND_CARD" id="BIND_CARD" value="${pd.BIND_CARD}" maxlength="32" placeholder="这里输入绑卡成功数" title="绑卡成功数" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">提单数:</td>
								<td><input type="number" name="ORDER_COUNT" id="ORDER_COUNT" value="${pd.ORDER_COUNT}" maxlength="32" placeholder="这里输入工单提单数" title="工单提单数" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">提单金额:</td>
								<td><input type="text" name="ORDER_PRINCIPAL" id="ORDER_PRINCIPAL" value="${pd.ORDER_PRINCIPAL}" maxlength="8" placeholder="这里输入工单提单金额" title="工单提单金额" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">放款单数:</td>
								<td><input type="number" name="PAY_COUNT" id="PAY_COUNT" value="${pd.PAY_COUNT}" maxlength="32" placeholder="这里输入工单放款单数" title="工单放款单数" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">放款金额:</td>
								<td><input type="number" name="PAY_PRINCIPAL" id="PAY_PRINCIPAL" value="${pd.PAY_PRINCIPAL}" maxlength="32" placeholder="这里输入工单放款金额" title="工单放款金额" style="width:98%;"/></td>
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
			if($("#SOURCE").val()==""){
				$("#SOURCE").tips({
					side:3,
		            msg:'请输入渠道',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#SOURCE").focus();
			return false;
			}
			if($("#REGISTER").val()==""){
				$("#REGISTER").tips({
					side:3,
		            msg:'请输入注册数',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#REGISTER").focus();
			return false;
			}
			if($("#REALNAME").val()==""){
				$("#REALNAME").tips({
					side:3,
		            msg:'请输入实名数',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#REALNAME").focus();
			return false;
			}
			if($("#OPERATOR").val()==""){
				$("#OPERATOR").tips({
					side:3,
		            msg:'请输入运营商成功数',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#OPERATOR").focus();
			return false;
			}
			if($("#BIND_CARD").val()==""){
				$("#BIND_CARD").tips({
					side:3,
		            msg:'请输入绑卡成功数',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#BIND_CARD").focus();
			return false;
			}
			if($("#ORDER_COUNT").val()==""){
				$("#ORDER_COUNT").tips({
					side:3,
		            msg:'请输入工单提单数',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#ORDER_COUNT").focus();
			return false;
			}
			if($("#ORDER_PRINCIPAL").val()==""){
				$("#ORDER_PRINCIPAL").tips({
					side:3,
		            msg:'请输入工单提单金额',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#ORDER_PRINCIPAL").focus();
			return false;
			}
			if($("#PAY_COUNT").val()==""){
				$("#PAY_COUNT").tips({
					side:3,
		            msg:'请输入工单放款单数',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#PAY_COUNT").focus();
			return false;
			}
			if($("#PAY_PRINCIPAL").val()==""){
				$("#PAY_PRINCIPAL").tips({
					side:3,
		            msg:'请输入工单放款金额',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#PAY_PRINCIPAL").focus();
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