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
<title>捷瑞达物流</title>
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

<script src="/js/jquery-1.7.2.min.js" type="text/javascript"></script>
<script src="/js/drag.js" type="text/javascript"></script>
<link href="/css/drag.css" rel="stylesheet" type="text/css">
<!--[if lt IE 9]>
    

<script src="/js/html5shiv.js">
</script>
<script src="/js/respond.min.js">
</script>
<![endif]-->
<!-- END STYLESHEET-->
</head>
<body class="login-screen">
	<!-- BEGIN SECTION -->
	<div class="container">
		<form class="form-signin" action="/user/login" method="post">
			<h2 class="form-signin-heading">成都捷瑞达物流后台登陆</h2>
			<!-- LOGIN WRAPPER  -->
			<div class="form-group ">
				<label class="control-label col-lg-12"><font
					style="text-align: center" color="red">${info}</font></label>
			</div>
			<div class="login-wrap">
				<input type="text" class="form-control" id="username" name="name"
					placeholder="帐号" autofocus required=""> <input
					type="password" name="password" class="form-control"
					placeholder="密码" required="">
				<div id="drag"></div>
				<script type="text/javascript">
					$('#drag').drag();
				</script>
				<span class="pull-right"><!-- <a data-toggle="modal"
					href="#myModal"> 忘记密码&nbsp&nbsp </a> -->
					<a class=""
                    href="/user_edit"> 修改密码</a>
					  <a class=""
					href="/registration"> 注册 </a>
				</span> </label>
				<button class="btn btn-lg btn-login btn-block" type="submit">
					立即登陆</button>
			</div>
			<!-- END LOGIN WRAPPER -->
			<!-- MODAL -->
			<div id="myModal" class="modal fade">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title">忘记密码 ?</h4>
						</div>
						<div class="modal-body">
							<p>输入邮箱，重置密码</p>
							<input type="text" name="email" placeholder="Email"
								autocomplete="off" class="form-control placeholder-no-fix">
						</div>
						<div class="modal-footer">
							<button data-dismiss="modal" class="btn btn-default"
								type="button">取消</button>
							<button class="btn btn-success" type="button">提交</button>
						</div>
					</div>
				</div>
			</div>
			<!-- END MODAL -->
		</form>
	</div>
	<!-- END SECTION -->
	<!-- BEGIN JS -->

	<script src="/js/bootstrap.min.js"></script>
	<!-- BOOTSTRAP JS  -->
	<!-- END JS -->
</body>
</html>

