<%@ page contentType="text/html;charset=UTF-8" language="java"%><!DOCTYPE html><html lang="en"><head><!-- BEGIN META --><meta charset="utf-8"><!-- END META --><!-- BEGIN SHORTCUT ICON --><link rel="shortcut icon" href="/img/favicon.ico"><!-- END SHORTCUT ICON --><title>成都源通物流</title><!-- BEGIN STYLESHEET--><link href="/css/bootstrap.min.css" rel="stylesheet"><!-- BOOTSTRAP CSS --><link href="/css/bootstrap-reset.css" rel="stylesheet"><!-- BOOTSTRAP CSS --><link href="/assets/font-awesome//css/font-awesome.css" rel="stylesheet"><!-- FONT AWESOME ICON STYLESHEET --><link href="/css/style.css" rel="stylesheet"><!-- THEME BASIC CSS --><link href="/css/style-responsive.css" rel="stylesheet"><!-- THEME BASIC RESPONSIVE  CSS --><!--[if lt IE 9]>      <script src="/js/html5shiv.js"></script>      <script src="/js/respond.min.js"></script>      <![endif]--><!-- END STYLESHEET--></head><body>	<section class="wrapper">		<!-- BEGIN ROW  -->		<div class="row">			<div class="col-md-12">				<section class="panel">					<header class="panel-heading">						<span class="label label-primary">公司录入</span> <span							class="tools pull-right"> <a href="javascript:;"							class="fa fa-chevron-down"></a> <a href="javascript:;"							class="fa fa-times"></a>						</span>					</header>					<div class="panel-body">						<div class="form">							<form name="form" class="cmxform form-horizontal tasi-form"								id="signupFormy" method="post" action="/corporation/insert">								<div class="form-group ">									<label for="firstname" class="control-label col-md-1">公司名称</label>									<div class="col-md-5">										<input class=" form-control" id="kpdw" name="corpName"											type="text" required="">									</div>									<label for="password" class="control-label col-md-1">公司法人</label>									<div class="col-md-2">										<input class="form-control " id="text" name="corpPayer"											type="text" required="">									</div>								</div>								<div class="form-group ">									<label for="password" class="control-label col-md-1">开户行及账号</label>									<div class="col-md-5">										<input class="form-control " id="text" name="bankNo"											 type="text"											required="" >									</div>									<label for="password" class="control-label col-md-1">纳税人识别号</label>									<div class="col-md-2">										<input class="form-control " id="text" name="dtpg"											onkeyup="value=value.replace(/[^\d.]/g,'')" type="text"											required="" >									</div>								</div>								<div class="form-group ">									<label for="password" class="control-label col-md-1">公司地址</label>									<div class="col-md-8">										<input class="form-control " id="text" name="corpAddress"											type="text" required="">									</div>									<label id="sfpk" for="lastname" class="control-label col-md-1">联系电话</label>									<div class="col-md-2">										<input class=" form-control" id="lastname" name="corpPhone"											type="text" onkeyup="value=value.replace(/[^\d.]/g,'')"											required="">									</div>								</div>								<div class="form-group">									<div class="col-md-offset-2 col-md-6">										<button class="btn btn-primary" type="submit">录入</button>										<button class="btn btn-default" type="reset">重置</button>									</div>									<label class="control-label col-md-6"><font										style="text-align: center" color="red">${info}</font></label>								</div>							</form>						</div>					</div>				</section>			</div>		</div>		<!-- END ROW  -->	</section>	<!-- END WRAPPER  -->	<script src="/js/jquery.js"></script>	<!-- BASIC JS LIABRARY -->	<script src="/js/bootstrap.min.js"></script>	<!-- BOOTSTRAP JS  -->	<script src="/js/jquery.dcjqaccordion.2.7.js"></script>	<!-- ACCORDING JS -->	<script src="/js/jquery.scrollTo.min.js"></script>	<!-- SCROLLTO JS  -->	<script src="/js/jquery.nicescroll.js">			</script>	<!-- NICESCROLL JS  -->	<script src="/js/respond.min.js"></script>	<!-- RESPOND JS  -->	<script src="/js/jquery.validate.min.js"></script>	<!-- VALIDATE JS  -->	<script src="/js/common-scripts.js"></script>	<!-- BASIC COMMON JS  -->	<script src="/js/form-validation-script.js"></script>	<script language="JavaScript">		today = new Date();		date = '';		month = '';		if (today.getMonth() + 1 < 10) {			month = '0' + (today.getMonth() + 1);		} else			month = (today.getMonth() + 1);		if (today.getDate() < 10) {			date = '0' + today.getDate();		} else			date = today.getDate();		form.kprq.value = today.getFullYear() + '-' + month + '-' + date;		function clearNoNum(obj) {			obj.value = obj.value.replace(/[^\d.]/g, ""); //清除“数字”和“.”以外的字符  			obj.value = obj.value.replace(/\.{2,}/g, "."); //只保留第一个. 清除多余的  			obj.value = obj.value.replace(".", "$#$").replace(/\./g, "")					.replace("$#$", ".");			obj.value = obj.value.replace(/^(\-)*(\d+)\.(\d\d).*$/, '$1$2.$3');//只能输入两个小数  			if (obj.value.indexOf(".") < 0 && obj.value != "") {//以上已经过滤，此处控制的是如果没有小数点，首位不能为类似于 01、02的金额 				obj.value = parseFloat(obj.value);			}		}	</script>	<!-- FORM VALIDATION SCRIPT JS  -->	<!-- END JS --></body></html>