
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- BEGIN META -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Olive Enterprise">
<!-- END META -->
<!-- BEGIN SHORTCUT ICON -->
<link rel="shortcut icon" href="img/favicon.ico">
<!-- END SHORTCUT ICON -->
<title>成都源通物流</title>
<!-- BEGIN STYLESHEET-->
<link href="/css/bootstrap.min.css" rel="stylesheet">
<!-- BOOTSTRAP CSS -->
<link href="/css/bootstrap-reset.css" rel="stylesheet">
<!-- BOOTSTRAP CSS -->
<link href="/assets/font-awesome/css/font-awesome.css" rel="stylesheet">
<!-- FONT AWESOME ICON CSS -->
<link href="/css/style.css" rel="stylesheet">
<!-- THEME BASIC CSS -->
<link href="/css/style-responsive.css" rel="stylesheet">
<!-- THEME RESPONSIVE CSS -->
<!--[if lt IE 9]>
<script src="/js/html5shiv.js">
</script>
<script src="/js/respond.min.js">
</script>
<![endif]-->
<!-- END STYLESHEET-->
</head>
<body>
	<section class="wrapper">
		<!-- BEGIN ROW -->
		<div class="row">
			<div class="col-lg-12">
				<section class="panel">
					<div class="panel-body">

						<div id="editor-container">
							<div id="header-editor">
								<div id="headerLeft">
									<h2 id="sampleTitle" contenteditable="true">成都源通物流有限公司</h2>
									<h3 contenteditable="true">权限管理</h3>
								</div>
							</div>


						</div>
						<form id="authForm">
							<table width="1146" height="133">
								<col width="264">
								<col width="209">
								<col width="196">
								<col width="255">
								<col width="222">
								<tr height="19">
									<td colspan="1" rowspan="1" x:str " height="58">部门： <select
										name="dept" id="dept">
											<c:if test="${null==roleAuth}">
												<option value="2" selected>财务</option>
												<option value="4">行政</option>
												<option value="3">司机</option>
												<option value="5">办事员</option>
											</c:if>
											<option value="${roleAuth.getId()}">${roleAuth.getRoleName()}</option>
									</select>
										<p></p>
									</td>
									<td colspn="1" rowspan="1">选择人员： <c:if
											test="${null!=userAuth}">
											<input name="USERID" type="radio" value="${userAuth.getId()}" checked />${userAuth.getName()}
									</c:if>
										<p></p>
									</td>
									<td colspn="3" rowspan="1"><c:forEach items="${userList}"
											var="user" varStatus="status">
											<p>
												<input name="USERNAME" type="radio" />${user.getName()}
											</p>
										</c:forEach></td>
								</tr>

								<tr height="19">

								</tr>

								<tr height="19">
									<td colspan="3" x:str height="19" width="60%">集装箱管理</td>
									<td x:str height="19" width="20%">整车管理</td>
									<td x:str height="19" width="20%">发票管理</td>
								</tr>
								<tr height="19">
									<td x:str height="19" width="20%">到发模块</td>
									<td x:str height="19" width="20%">派车模块</td>
									<td x:str height="19" width="20%">对账单模块</td>
									<td x:str height="19" width="20%">整车模块</td>
									<td x:str height="19" width="20%">发票模块</td>
								</tr>
								<tr height="19">
									<td x:str height="19" width="264"><input
										name="SAINPUT_AUTH" type="radio" value="10000" /> 无权限</td>
									<td x:str height="19" width="209"><input
										name="INCOME_AUTH" type="radio" value="00010" /> 无权限</td>
									<td x:str height="19" width="196"><input
										name="SUMMARY_AUTH" type="radio" value="00001" /> 无权限</td>
									<td x:str height="19" width="255"><input
										name="CARLOAD_AUTH" type="radio" value="01000" /> 无权限</td>
									<td x:str height="19" width="222"><input name="BILL_AUTH"
										type="radio" value="00100" /> 无权限</td>
								</tr>
								<tr height="19">
									<td x:str height="19" width="264"><input
										name="SAINPUT_AUTH" type="radio" value="20000" /> 只读</td>
									<td x:str height="19" width="209"><input
										name="INCOME_AUTH" type="radio" value="00020" /> 只读</td>
									<td x:str height="19" width="196"><input
										name="SUMMARY_AUTH" type="radio" value="00002" /> 只读</td>
									<td x:str height="19" width="255"><input
										name="CARLOAD_AUTH" type="radio" value="02000" /> 只读</td>
									<td x:str height="19" width="222"><input name="BILL_AUTH"
										type="radio" value="00200" /> 只读</td>
								</tr>
								<tr height="19">
									<td x:str height="19" width="264"><input
										name="SAINPUT_AUTH" type="radio" value="40000" checked /> 读写</td>
									<td x:str height="19" width="209"><input
										name="INCOME_AUTH" type="radio" value="00040" /> 读写</td>
									<td x:str height="19" width="196"><input
										name="SUMMARY_AUTH" type="radio" value="00004" /> 读写</td>
									<td x:str height="19" width="255"><input
										name="CARLOAD_AUTH" type="radio" value="04000" /> 读写</td>
									<td x:str height="19" width="222"><input name="BILL_AUTH"
										type="radio" value="00400" /> 读写</td>
								</tr>
							</table>
						</form>
						<button id="check">提交</button>               
						</br> </br> </br> </br> </br> </br> </br> </br> </br> </br> </br> </br> </br> </br> </br> </br> </br> </br> </br> </br> </br> </br> </br> </br> </br>
					</div>
				</section>
			</div>
		</div>
		<!-- END ROW -->
	</section>
	<!-- BEGIN JS -->
	<script src="/js/jquery.js"></script>
	<script>
		$(document).ready(
				function() {

					$("#USERNAME").change(
							function() {
								userName = parseInt($(
										"input[name='USERNAME'][checked]")
										.val())
								$.post("/user/query", {
									name : userName
								}, function(data) {
									alert("数据：" + data.name);
								});
							})
							
			           var authInfo = ${authInfo};
		                
			           var sainValue = ${String.valueOf(userAuth.getRoleLevel()).charAt(0)} + '0000';
			           
			           var carloadValue = '0' + ${String.valueOf(userAuth.getRoleLevel()).charAt(1)} + '000';
			           var billValue = '00' + ${String.valueOf(userAuth.getRoleLevel()).charAt(2)} + '00';
			           var incomeValue = '000' + ${String.valueOf(userAuth.getRoleLevel()).charAt(3)} + '0';
			           var summaryValue = '0000' + ${String.valueOf(userAuth.getRoleLevel()).charAt(4)} ;
			                
			           $("input[name=SAINPUT_AUTH][value="+sainValue+"]").attr("checked",true);
			           $("input[name=CARLOAD_AUTH][value="+carloadValue+"]").attr("checked",true);
			           $("input[name=INCOME_AUTH][value="+incomeValue+"]").attr("checked",true);
			           $("input[name=SUMMARY_AUTH][value="+summaryValue+"]").attr("checked",true);
			           $("input[name=BILL_AUTH][value="+billValue+"]").attr("checked",true);
					
					
					$("#check").click(
							function() {
								userID = parseInt($("input[name='USERID']").val());
								sainput = parseInt($("input[name='SAINPUT_AUTH']:checked").val());
								carload = parseInt($("input[name='CARLOAD_AUTH']:checked").val());
								bill = parseInt($("input[name='BILL_AUTH']:checked").val());
								income = parseInt($("input[name='INCOME_AUTH']:checked").val());
								summary = parseInt($("input[name='SUMMARY_AUTH']:checked").val());
								auth = sainput + carload + bill + income + summary;
								url = "/auth/update?roleLevel=" + auth + "&userId=" + userID;
								location.href =url;
							})

				});
	</script>
	<!--
           var authInfo = ${authInfo};
                
           var sainValue = ${String.valueOf(userAuth.getRoleLevel()).charAt(0)} + '0000';
           
           var carloadValue = '0' + ${String.valueOf(userAuth.getRoleLevel()).charAt(1)} + '000';
           var billValue = '00' + ${String.valueOf(userAuth.getRoleLevel()).charAt(2)} + '00';
           var incomeValue = '000' + ${String.valueOf(userAuth.getRoleLevel()).charAt(3)} + '0';
           var summaryValue = '0000' + ${String.valueOf(userAuth.getRoleLevel()).charAt(4)} ;
                
           $("input[name=SAINPUT_AUTH][value="+sainValue+"]").attr("checked",true);
           $("input[name=CARLOAD_AUTH][value="+carloadValue+"]").attr("checked",true);
           $("input[name=INCOME_AUTH][value="+incomeValue+"]").attr("checked",true);
           $("input[name=SUMMARY_AUTH][value="+summaryValue+"]").attr("checked",true);
           $("input[name=BILL_AUTH][value="+billValue+"]").attr("checked",true);
           -->
	<!-- 
                $.post("/auth/update", {
                    roleLevel : auth,
                    userId : userId
                }, function(data, status) {
                    alert("数据：" + data + "\n状态：" + status);
                });
                 -->
	<!-- JQUERY JS -->
	<script src="/js/bootstrap.min.js"></script>
	<!-- BOOTSTRAP JS -->
	<script src="/js/jquery.dcjqaccordion.2.7.js"></script>
	<!-- ACCORDIN JS -->
	<script src="/assets/ckeditor/ckeditor.js"></script>
	<!-- CKEDITOR JS -->
	<script src="/js/jquery.scrollTo.min.js"></script>
	<!-- SCROLLTO JS -->
	<script src="/js/jquery.nicescroll.js"></script>
	<!-- NICESCROLL JS -->
	<script src="/js/respond.min.js"></script>
	<!-- RESPOND JS -->
	<script src="/js/common-scripts.js"></script>
	<!-- BASIC COMMON JS -->
	<!-- END JS -->
</body>
</html>
