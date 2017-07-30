<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- BEGIN META -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Custom Theme">
<!-- END META -->

<!-- BEGIN SHORTCUT ICON -->
<link rel="shortcut icon" href="/img/favicon.ico">
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
<script src="js/html5shiv.js">
</script>
<script src="js/respond.min.js">
</script>
<![endif]-->
<!-- END STYLESHEET-->
</head>
<body class="login-screen">
	<!-- BEGIN SECTION -->
	<div class="container">
		<form class="form-signin" name="form" method="post" id="signupFormy"
			action="/user/edit_info">
			<h2 class="form-signin-heading">修改个人信息</h2>
			<!-- LOGIN WRAPPER  -->
			<div class="login-wrap">
				<div class="form-group ">
					<label class="control-label col-lg-12"><font
						style="text-align: center" color="red">${info}</font></label>
				</div>

				<div class="form-group ">
					<label for="username" class="control-label col-md-4">帐号</label>
					<div class="col-md-8">
						<input class="form-control " id="name" name="name" type="text"
							readonly value="${userEdit.getName()}">
							 <input
							class="form-control " id="name" name="id" type="hidden" readonly
							value="${userEdit.getId()}">
					</div>
				</div>
				<div class="form-group ">
					<label for="password" class="control-label col-md-4">真实姓名</label>
					<div class="col-md-8">
						<input class="form-control " id="realName" name="realName"
							type="text" value="${userEdit.getRealName()}">
					</div>
				</div>
				<div class="form-group ">
					<label for="password" class="control-label col-md-4">联系电话</label>
					<div class="col-md-8">
						<input class="form-control " id="phone" name="phone" type="text"
							value="${userEdit.getPhone()}">
					</div>
				</div>
				<div class="">
					<button type="submit" class="btn btn-primary start"
						style="width: 45%;">
						<span>确定</span>
					</button>
					<a href="/user/user_list"><button type="button"
							class="btn btn-danger delete" style="width: 45%;">
							<span>返回</span>
						</button> </a>



				</div>
				<!-- END LOGIN WRAPPER -->
		</form>
	</div>
	<!-- END SECTION -->
	<script src="/js/jquery.js"></script>
	<!-- BASIC JS LIABRARY -->
	<script src="/js/bootstrap.min.js"></script>
	<!-- BOOTSTRAP JS  -->
	<script src="/js/jquery.dcjqaccordion.2.7.js"></script>
	<!-- ACCORDING JS -->
	<script src="/js/jquery.scrollTo.min.js"></script>
	<!-- SCROLLTO JS  -->
	<script src="/js/jquery.nicescroll.js">
		
	</script>
	<!-- NICESCROLL JS  -->
	<script src="/js/respond.min.js"></script>
	<!-- RESPOND JS  -->
	<script src="/js/jquery.validate.min.js"></script>
	<!-- VALIDATE JS  -->
	<script src="/js/common-scripts.js"></script>
	<!-- BASIC COMMON JS  -->
	<script src="/js/form-validation-script.js"></script>
	<!-- FORM VALIDATION SCRIPT JS  -->
	<!-- BEGIN JS -->

	<!-- END JS -->
</body>
</html>

