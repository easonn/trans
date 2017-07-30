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
			action="/user/edit">
			<h2 class="form-signin-heading">修改密码</h2>
			<!-- LOGIN WRAPPER  -->
			<div class="login-wrap">
				<div class="form-group ">
					<label class="control-label col-lg-12"><font
						style="text-align: center" color="red">${info}</font></label>
				</div>

				<div class="form-group ">
					<label for="username" class="control-label col-lg-4">帐号</label>
					<div class="col-lg-8">
						<input class="form-control " id="username" name="name" type="text"
							placeholder="请输入账号">
					</div>
				</div>
				<div class="form-group ">
					<label for="password" class="control-label col-lg-4">旧密码</label>
					<div class="col-lg-8">
						<input class="form-control " id="passwordOld" name="passwordOld"
							type="password" placeholder="请输入旧密码">
					</div>
				</div>

				<div class="form-group ">
					<label for="password" class="control-label col-lg-4">新密码</label>
					<div class="col-lg-8">
						<input class="form-control " id="password" name="password"
							type="password" placeholder="请输入新密码">
					</div>
				</div>
				<div class="form-group ">
					<label for="confirm_password" class="control-label col-lg-4">重复密码</label>
					<div class="col-lg-8">
						<input class="form-control " id="confirm_password"
							name="confirm_password" type="password" placeholder="请重复输入新密码">
					</div>
				</div>
				<!-- 
            <div class="form-group ">
        <label for="cemail" class="control-label col-lg-4">邮箱</label>
        <div class="col-lg-8">
          <input class="form-control " id="cemail" type="email" name="email" required />
        </div>
      </div>
      -->                    <a href="/login"><button type="button"
                            class="btn btn-danger delete" style="width: 45%;">
                            <span>返回</span>
                        </button>
                        </a>

                    <button type="submit" class="btn btn-primary start"
                        style="width: 45%;">
                        <span>确定</span>
                    </button>

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

