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
					<form action="product/${msg }.do" name="Form" id="Form" method="post">
						<input type="hidden" name="PRODUCT_ID" id="PRODUCT_ID" value="${pd.PRODUCT_ID}"/>
						<div id="zhongxin" style="padding-top: 13px;">
						<table id="table_report" class="table table-striped table-bordered table-hover">
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">产品名称:</td>
								<td><input type="text" name="PRODUCT_NAME" id="PRODUCT_NAME" value="${pd.PRODUCT_NAME}" maxlength="128" placeholder="这里输入产品名称" title="产品名称" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">产品链接:</td>
								<td><input type="text" name="PRODUCT_URL" id="PRODUCT_URL" value="${pd.PRODUCT_URL}" maxlength="128" placeholder="这里输入产品链接" title="产品链接" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">产品图:</td>
								<td><input type="text" name="PRODUCT_IMG" id="PRODUCT_IMG" value="${pd.PRODUCT_IMG}" maxlength="128" placeholder="这里输入产品图" title="产品图" style="width:98%;"/></td>
							</tr>
							<%--<tr>--%>
							<%--<td style="width:75px;text-align: right;padding-top: 13px;">包名:</td>--%>
							<%--<td><input type="text" name="PACKAGE_ID" id="PACKAGE_ID" value="${pd.PACKAGE_ID}" maxlength="128" placeholder="请选择包名" title="包名" style="width:98%;"/></td>--%>
						<%--</tr>--%>
							<c:if test="${fx != 'head'}">
							<tr>
								<td style="width:79px;text-align: right;padding-top: 13px;">包名:</td>
								<td id="juese">
									<select class="chosen-select form-control" name="PACKAGE_ID" id="PACKAGE_ID" data-placeholder="请选择包名" style="vertical-align:top;" style="width:98%;" >
										<%--<option value="">请选择</option>--%>
										<c:forEach items="${packList}" var="list">
											<option value="${list.id}"<c:if test="${pd.PACKAGE_ID == list.id }">selected</c:if>>${list.name }</option>
										</c:forEach>
									</select>
								</td>
							</tr>
							</c:if>
							<c:if test="${fx == 'head'}">
								<input name="PACKAGE_ID" id="PACKAGE_ID" value="${pd.PACKAGE_ID }" type="hidden" />
							</c:if>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">日利率:</td>
								<td><input type="text" name="DATE_RATE" id="DATE_RATE" value="${pd.DATE_RATE}" maxlength="128" placeholder="这里输入日利率" title="日利率" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">成功率:</td>
								<td><input type="text" name="SUCC_RATE" id="SUCC_RATE" value="${pd.SUCC_RATE}" maxlength="128" placeholder="这里输入成功率" title="成功率" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">状态:</td>
								<td>
									<%--<input type="text" name="STATUS" id="STATUS" value="${pd.STATUS}" maxlength="128" placeholder="这里输入产品状态" title="产品状态" style="width:98%;"/>--%>
									<select class="chosen-select form-control" name="STATUS" id="STATUS" data-placeholder="请选择状态" style="vertical-align:top;" style="width:98%;" >
										<%--<option value="">请选择</option>--%>
											<option value="0" <c:if test="${pd.STATUS == 0}">selected</c:if>>下架</option>
											<option value="1" <c:if test="${pd.STATUS == 1}">selected</c:if>>上架</option>
									</select>
								</td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">描述:</td>
								<td><input type="text" name="PRODUCT_TYPE" id="PRODUCT_TYPE" value="${pd.PRODUCT_TYPE}" maxlength="128" placeholder="这里输入描述" title="描述" style="width:98%;"/></td>
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
			if($("#PRODUCT_NAME").val()==""){
				$("#PRODUCT_NAME").tips({
					side:3,
		            msg:'请输入产品名称',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#PRODUCT_NAME").focus();
			return false;
			}
			if($("#PRODUCT_URL").val()==""){
				$("#PRODUCT_URL").tips({
					side:3,
		            msg:'请输入产品链接',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#PRODUCT_URL").focus();
			return false;
			}
            if($("#PACKAGE_ID").val()==""){
                $("#PACKAGE_ID").tips({
                    side:3,
                    msg:'请选择包名',
                    bg:'#AE81FF',
                    time:2
                });
                $("#PACKAGE_ID").focus();
                return false;
            }
            if($("#DATE_RATE").val()==""){
                $("#DATE_RATE").tips({
                    side:3,
                    msg:'请输入日利率',
                    bg:'#AE81FF',
                    time:2
                });
                $("#DATE_RATE").focus();
                return false;
            }
            if($("#SUCC_RATE").val()==""){
                $("#SUCC_RATE").tips({
                    side:3,
                    msg:'请输入成功率',
                    bg:'#AE81FF',
                    time:2
                });
                $("#SUCC_RATE").focus();
                return false;
            }
            if($("#STATUS").val()==""){
                $("#STATUS").tips({
                    side:3,
                    msg:'请输入产品状态',
                    bg:'#AE81FF',
                    time:2
                });
                $("#STATUS").focus();
                return false;
            }
			if($("#PRODUCT_IMG").val()==""){
				$("#PRODUCT_IMG").tips({
					side:3,
		            msg:'请输入产品图',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#PRODUCT_IMG").focus();
			return false;
			}
			if($("#PRODUCT_TYPE").val()==""){
				$("#PRODUCT_TYPE").tips({
					side:3,
		            msg:'请输入描述',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#PRODUCT_TYPE").focus();
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