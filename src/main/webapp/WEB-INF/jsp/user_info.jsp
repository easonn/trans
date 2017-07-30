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
<body>
	<section class="wrapper">

		<!-- BEGIN ROW  -->
		<div class="row">
			<div class="col-md-12">
				<section class="panel">
					<header class="panel-heading">
						<span class="label label-primary">个人信息</span> <span
							class="tools pull-right">
						</span>
					</header>
					<div class="panel-body">
						<ul class="p-info">
							<li>
								<div class="title">姓名</div>
								<div class="desk"><b>${user.getRealName()}</b></div>
							</li>
							<li>
								<div class="title">账号</div>
								<div class="desk"><b>${user.getName()}</b></div>
							</li>
							<li>
								<div class="title">电话</div>
								<div class="desk"><b>${user.getPhone()}</b></div>
							</li>
							<li>
								<div class="title">职位</div>
								<div class="desk"><b>${role.getRoleName()}</b></div>
							</li>

						</ul>
					</div>
				</section>
				<!-- END LOGIN WRAPPER -->
			</div>
		</div>
	</section>

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

