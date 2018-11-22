<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <base href="<%=basePath%>">
    <!-- 下拉框 -->
    <link rel="stylesheet" href="static/ace/css/chosen.css"/>
    <!-- jsp文件头和头部 -->
    <%@ include file="../index/top.jsp" %>
    <!-- 日期框 -->
    <link rel="stylesheet" href="static/ace/css/datepicker.css"/>
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
                        <form action="loanuser/${msg }.do" name="Form" id="Form" method="post">
                            <input type="hidden" name="USER_ID" id="USER_ID" value="${pd.USER_ID}"/>
                            <div id="zhongxin" style="padding-top: 13px;">
                                <table id="table_report" class="table table-striped table-bordered table-hover">
                                    <tr>
                                        <td style="width:75px;text-align: right;padding-top: 13px;">电话:</td>
                                        <td><input type="text" name="USER_PHONE" id="USER_PHONE"
                                                   value="${pd.USER_PHONE}" maxlength="32" placeholder="这里输入电话"
                                                   title="电话" style="width:98%;"/></td>
                                    </tr>
                                    <tr>
                                        <td style="width:75px;text-align: right;padding-top: 13px;">系统:</td>
                                        <td><input type="text" name="SYSTEM_TYPE" id="SYSTEM_TYPE"
                                                   value="${pd.SYSTEM_TYPE}" maxlength="32" placeholder="这里输入系统"
                                                   title="电话" style="width:98%;"/></td>
                                    </tr>
                                    <tr>
                                        <td style="width:75px;text-align: right;padding-top: 13px;">签名:</td>
                                        <td><input type="text" name="CHANNEL" id="CHANNEL"
                                                   value="${pd.CHANNEL}" maxlength="32" placeholder="这里输入签名"
                                                   title="电话" style="width:98%;"/></td>
                                    </tr>
                                    <tr>
                                        <td style="width:75px;text-align: right;padding-top: 13px;">贷款金额:</td>
                                        <td><input type="number" name="LOAN_AMOUNT" id="LOAN_AMOUNT"
                                                   value="${pd.LOAN_AMOUNT}" maxlength="32" placeholder="这里输入贷款金额"
                                                   title="贷款金额" style="width:98%;"/></td>
                                    </tr>
                                    <tr>
                                        <td style="width:75px;text-align: right;padding-top: 13px;">贷款期限:</td>
                                        <td><input type="number" name="LOAN_TERM" id="LOAN_TERM" value="${pd.LOAN_TERM}"
                                                   maxlength="32" placeholder="这里输入贷款期限" title="贷款期限"
                                                   style="width:98%;"/></td>
                                    </tr>
                                    <tr>
                                        <td style="width:75px;text-align: right;padding-top: 13px;">用户姓名:</td>
                                        <td><input type="text" name="USER_NAME" id="USER_NAME" value="${pd.USER_NAME}"
                                                   maxlength="16" placeholder="这里输入用户姓名" title="用户姓名"
                                                   style="width:98%;"/></td>
                                    </tr>
                                    <tr>
                                        <td style="width:75px;text-align: right;padding-top: 13px;">身份证号:</td>
                                        <td><input type="text" name="ID_CARD" id="ID_CARD" value="${pd.ID_CARD}"
                                                   maxlength="32" placeholder="这里输入身份证号" title="身份证号"
                                                   style="width:98%;"/></td>
                                    </tr>
                                    <tr>
                                        <td style="width:75px;text-align: right;padding-top: 13px;">文化程度:</td>
                                        <td><input type="number" name="CURLTURE" id="CURLTURE" value="${pd.CURLTURE}"
                                                   maxlength="32" placeholder="这里输入文化程度" title="文化程度"
                                                   style="width:98%;"/></td>
                                    </tr>
                                    <tr>
                                        <td style="width:75px;text-align: right;padding-top: 13px;">贷款用途:</td>
                                        <td><input type="number" name="PURPOSE" id="PURPOSE" value="${pd.PURPOSE}"
                                                   maxlength="32" placeholder="这里输入贷款用途" title="贷款用途"
                                                   style="width:98%;"/></td>
                                    </tr>
                                    <tr>
                                        <td style="width:75px;text-align: right;padding-top: 13px;">职业:</td>
                                        <td><input type="number" name="WORK" id="WORK" value="${pd.WORK}" maxlength="32"
                                                   placeholder="这里输入职业" title="职业" style="width:98%;"/></td>
                                    </tr>
                                    <tr>
                                        <td style="width:75px;text-align: right;padding-top: 13px;">所在地:</td>
                                        <td><input type="text" name="ADDRESS" id="ADDRESS" value="${pd.ADDRESS}"
                                                   maxlength="128" placeholder="这里输入所在地" title="所在地"
                                                   style="width:98%;"/></td>
                                    </tr>
                                    <tr>
                                        <td style="width:75px;text-align: right;padding-top: 13px;">房子:</td>
                                        <td><input type="number" name="HOUSE" id="HOUSE" value="${pd.HOUSE}"
                                                   maxlength="32" placeholder="这里输入房子" title="房子" style="width:98%;"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width:75px;text-align: right;padding-top: 13px;">车辆:</td>
                                        <td><input type="number" name="CAR" id="CAR" value="${pd.CAR}" maxlength="32"
                                                   placeholder="这里输入车辆" title="车辆" style="width:98%;"/></td>
                                    </tr>
                                    <tr>
                                        <td style="width:75px;text-align: right;padding-top: 13px;">信用卡:</td>
                                        <td><input type="number" name="CREDIT_CARD" id="CREDIT_CARD"
                                                   value="${pd.CREDIT_CARD}" maxlength="32" placeholder="这里输入信用卡"
                                                   title="信用卡" style="width:98%;"/></td>
                                    </tr>
                                    <tr>
                                        <td style="width:75px;text-align: right;padding-top: 13px;">公积金:</td>
                                        <td><input type="number" name="ACCUMULATION_FUND" id="ACCUMULATION_FUND"
                                                   value="${pd.ACCUMULATION_FUND}" maxlength="32" placeholder="这里输入公积金"
                                                   title="公积金" style="width:98%;"/></td>
                                    </tr>
                                    <tr>
                                        <td style="width:75px;text-align: right;padding-top: 13px;">微粒贷:</td>
                                        <td><input type="number" name="WECHAT_LOAN" id="WECHAT_LOAN"
                                                   value="${pd.WECHAT_LOAN}" maxlength="32" placeholder="这里输入微粒贷"
                                                   title="微粒贷" style="width:98%;"/></td>
                                    </tr>
                                    <tr>
                                        <td style="width:75px;text-align: right;padding-top: 13px;">保险:</td>
                                        <td><input type="number" name="INSURANCE" id="INSURANCE" value="${pd.INSURANCE}"
                                                   maxlength="32" placeholder="这里输入保险" title="保险" style="width:98%;"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width:75px;text-align: right;padding-top: 13px;">社保:</td>
                                        <td><input type="number" name="SOCIAL_SECURITY" id="SOCIAL_SECURITY"
                                                   value="${pd.SOCIAL_SECURITY}" maxlength="32" placeholder="这里输入社保"
                                                   title="社保" style="width:98%;"/></td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: center;" colspan="10">
                                            <a class="btn btn-mini btn-primary" onclick="save();">保存</a>
                                            <a class="btn btn-mini btn-danger" onclick="top.Dialog.close();">取消</a>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div id="zhongxin2" class="center" style="display:none"><br/><br/><br/><br/><br/><img
                                    src="static/images/jiazai.gif"/><br/><h4 class="lighter block green">提交中...</h4>
                            </div>
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
<%@ include file="../index/foot.jsp" %>
<!-- 下拉框 -->
<script src="static/ace/js/chosen.jquery.js"></script>
<!-- 日期框 -->
<script src="static/ace/js/date-time/bootstrap-datepicker.js"></script>
<!--提示框-->
<script type="text/javascript" src="static/js/jquery.tips.js"></script>
<script type="text/javascript">
    $(top.hangge());

    //保存
    function save() {
        if ($("#USER_PHONE").val() == "") {
            $("#USER_PHONE").tips({
                side: 3,
                msg: '请输入电话',
                bg: '#AE81FF',
                time: 2
            });
            $("#USER_PHONE").focus();
            return false;
        }
        if ($("#LOAN_AMOUNT").val() == "") {
            $("#LOAN_AMOUNT").tips({
                side: 3,
                msg: '请输入贷款金额',
                bg: '#AE81FF',
                time: 2
            });
            $("#LOAN_AMOUNT").focus();
            return false;
        }
        if ($("#LOAN_TERM").val() == "") {
            $("#LOAN_TERM").tips({
                side: 3,
                msg: '请输入贷款期限',
                bg: '#AE81FF',
                time: 2
            });
            $("#LOAN_TERM").focus();
            return false;
        }
        if ($("#USER_NAME").val() == "") {
            $("#USER_NAME").tips({
                side: 3,
                msg: '请输入用户姓名',
                bg: '#AE81FF',
                time: 2
            });
            $("#USER_NAME").focus();
            return false;
        }
        if ($("#ID_CARD").val() == "") {
            $("#ID_CARD").tips({
                side: 3,
                msg: '请输入身份证号',
                bg: '#AE81FF',
                time: 2
            });
            $("#ID_CARD").focus();
            return false;
        }
        if ($("#CURLTURE").val() == "") {
            $("#CURLTURE").tips({
                side: 3,
                msg: '请输入文化程度',
                bg: '#AE81FF',
                time: 2
            });
            $("#CURLTURE").focus();
            return false;
        }
        if ($("#PURPOSE").val() == "") {
            $("#PURPOSE").tips({
                side: 3,
                msg: '请输入贷款用途',
                bg: '#AE81FF',
                time: 2
            });
            $("#PURPOSE").focus();
            return false;
        }
        if ($("#WORK").val() == "") {
            $("#WORK").tips({
                side: 3,
                msg: '请输入职业',
                bg: '#AE81FF',
                time: 2
            });
            $("#WORK").focus();
            return false;
        }
        if ($("#ADDRESS").val() == "") {
            $("#ADDRESS").tips({
                side: 3,
                msg: '请输入所在地',
                bg: '#AE81FF',
                time: 2
            });
            $("#ADDRESS").focus();
            return false;
        }
        if ($("#HOUSE").val() == "") {
            $("#HOUSE").tips({
                side: 3,
                msg: '请输入房子',
                bg: '#AE81FF',
                time: 2
            });
            $("#HOUSE").focus();
            return false;
        }
        if ($("#CAR").val() == "") {
            $("#CAR").tips({
                side: 3,
                msg: '请输入车辆',
                bg: '#AE81FF',
                time: 2
            });
            $("#CAR").focus();
            return false;
        }
        if ($("#CREDIT_CARD").val() == "") {
            $("#CREDIT_CARD").tips({
                side: 3,
                msg: '请输入信用卡',
                bg: '#AE81FF',
                time: 2
            });
            $("#CREDIT_CARD").focus();
            return false;
        }
        if ($("#ACCUMULATION_FUND").val() == "") {
            $("#ACCUMULATION_FUND").tips({
                side: 3,
                msg: '请输入公积金',
                bg: '#AE81FF',
                time: 2
            });
            $("#ACCUMULATION_FUND").focus();
            return false;
        }
        if ($("#WECHAT_LOAN").val() == "") {
            $("#WECHAT_LOAN").tips({
                side: 3,
                msg: '请输入微粒贷',
                bg: '#AE81FF',
                time: 2
            });
            $("#WECHAT_LOAN").focus();
            return false;
        }
        if ($("#INSURANCE").val() == "") {
            $("#INSURANCE").tips({
                side: 3,
                msg: '请输入保险',
                bg: '#AE81FF',
                time: 2
            });
            $("#INSURANCE").focus();
            return false;
        }
        if ($("#SOCIAL_SECURITY").val() == "") {
            $("#SOCIAL_SECURITY").tips({
                side: 3,
                msg: '请输入社保',
                bg: '#AE81FF',
                time: 2
            });
            $("#SOCIAL_SECURITY").focus();
            return false;
        }
        $("#Form").submit();
        $("#zhongxin").hide();
        $("#zhongxin2").show();
    }

    $(function () {
        //日期框
        $('.date-picker').datepicker({autoclose: true, todayHighlight: true});
    });
</script>
</body>
</html>