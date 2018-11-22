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
					
					<form action="record/${msg }.do" name="Form" id="Form" method="post">
						<input type="hidden" name="ID" id="ID" value="${pd.ID}"/>
						<div id="zhongxin" style="padding-top: 13px;">
						<table id="table_report" class="table table-striped table-bordered table-hover">
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">类型:</td>
								<td><input type="number" name="RECORD_STATUS" id="RECORD_STATUS" value="${pd.RECORD_STATUS}" maxlength="32" placeholder="这里输入类型0未还款1已还款" title="类型0未还款1已还款" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">用户:</td>
								<td>
									<input type="text" name="USER_ID" id="USER_ID" value="${pd.USER_ID}" maxlength="128" placeholder="这里输入用户标识" title="用户标识" style="width:98%;"/>
								</td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">产品标识:</td>
								<td><input type="text" name="PRODUCT_ID" id="PRODUCT_ID" value="${pd.PRODUCT_ID}" maxlength="128" placeholder="这里输入产品标识" title="产品标识" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">还款金额:</td>
								<td><input type="text" name="MONEY_NUM" id="MONEY_NUM" value="${pd.MONEY_NUM}" maxlength="10" placeholder="这里输入还款金额" title="还款金额" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">还款时间:</td>
								<td><input class="span10 date-picker" name="RECORD_TIME" id="RECORD_TIME" value="${pd.RECORD_TIME}" type="date" data-date-format="yyyy-mm-dd" readonly="readonly" placeholder="还款时间" title="还款时间" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">还款期数:</td>
								<td><input type="text" name="TIME_COUNT" id="TIME_COUNT" value="${pd.TIME_COUNT}" maxlength="10" placeholder="这里输入还款期数" title="期数" style="width:98%;"/></td>
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
			if($("#RECORD_STATUS").val()==""){
				$("#RECORD_STATUS").tips({
					side:3,
		            msg:'请输入类型0未还款1已还款',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#RECORD_STATUS").focus();
			return false;
			}
			if($("#RECORD_TIME").val()==""){
                $("#RECORD_TIME").tips({
                    side:3,
                    msg:'请输入还款时间',
                    bg:'#AE81FF',
                    time:2
                });
                $("#RECORD_TIME").focus();
                return false;
            }
            if($("#TIME_COUNT").val()==""){
                $("#TIME_COUNT").tips({
                    side:3,
                    msg:'请输入还款期数',
                    bg:'#AE81FF',
                    time:2
                });
                $("#TIME_COUNT").focus();
                return false;
            }
            if($("#USER_ID").val()==""){
                $("#USER_ID").tips({
                    side:3,
                    msg:'请输入用户标识',
                    bg:'#AE81FF',
                    time:2
                });
                $("#USER_ID").focus();
                return false;
            }
			if($("#PRODUCT_ID").val()==""){
				$("#PRODUCT_ID").tips({
					side:3,
		            msg:'请输入产品标识',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#PRODUCT_ID").focus();
			return false;
			}
			if($("#MONEY_NUM").val()==""){
				$("#MONEY_NUM").tips({
					side:3,
		            msg:'请输入还款金额',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#MONEY_NUM").focus();
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