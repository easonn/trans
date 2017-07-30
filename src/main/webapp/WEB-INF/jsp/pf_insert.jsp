<%@ page language="java" contentType="text/html; charset=utf-8"    pageEncoding="utf-8"%><!DOCTYPE html><html lang="en">   <head>      <!-- BEGIN META --> 	  <meta charset="utf-8">      <meta name="viewport" content="width=device-width, initial-scale=1.0">      <meta name="description" content="">      <meta name="author" content="Olive Enterprise">	  <!-- END META -->           <!-- BEGIN SHORTCUT ICON -->	  <link rel="shortcut icon" href="img/favicon.ico">	  <!-- END SHORTCUT ICON -->      <title>Form Validation</title>	  <!-- BEGIN STYLESHEET-->		<link href="css/bootstrap.min.css" rel="stylesheet"><!-- BOOTSTRAP CSS -->		<link href="css/bootstrap-reset.css" rel="stylesheet"><!-- BOOTSTRAP CSS -->		<link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet"><!-- FONT AWESOME ICON STYLESHEET -->		<link href="css/style.css" rel="stylesheet"><!-- THEME BASIC CSS -->		<link href="css/style-responsive.css" rel="stylesheet"><!-- THEME BASIC RESPONSIVE  CSS -->      <!--[if lt IE 9]>      <script src="js/html5shiv.js"></script>      <script src="js/respond.min.js"></script>      <![endif]-->	  <!-- END STYLESHEET-->   </head>   <body>            <section class="wrapper">			   <!-- BEGIN ROW  -->               <div class="row">                  <div class="col-md-12">                     <section class="panel">                        <header class="panel-heading">                           <span class="label label-primary">派车收入录入</span>                           <span class="tools pull-right">                           <a href="javascript:;" class="fa fa-chevron-down"></a>                           <a href="javascript:;" class="fa fa-times"></a>                           </span>                        </header>                        <div class="panel-body">                           <div class="form">                              <form class="cmxform form-horizontal tasi-form" id="signupForm" method="get" action="form_validation.html">                                 <div class="form-group ">								 <label for="firstname" class="control-label col-md-1">进出箱场地</label>                                    <div class="col-md-3"> <input class=" form-control" id="firstname" name="firstname" type="text">                                    </div>								                                     <label for="firstname" class="control-label col-md-1">到达公司</label>                                    <div class="col-md-3">                                       <input class=" form-control" id="firstname" name="firstname" type="text">                                    </div>									                                    <label for="password" class="control-label col-md-1">箱号</label>                                    <div class="col-md-3">                                       <input class="form-control " id="password" name="password" type="password">                                    </div>                                 </div>                                 <div class="form-group ">                                    <label for="lastname" class="control-label col-md-1">收货人</label>                                    <div class="col-md-1">                                       <input class=" form-control" id="lastname" name="lastname" type="text">                                    </div>									  <label for="username" class="control-label col-md-1">送货地址</label>                                    <div class="col-md-3">                                       <input class="form-control " id="username" name="username" type="text">                                    </div>									                              <label for="lastname" class="control-label col-md-1">电话</label>                                    <div class="col-md-2">                                       <input class=" form-control" id="lastname" name="lastname" type="text">                                    </div>									  <label for="username" class="control-label col-md-1">付款人</label>                                    <div class="col-md-2">                                       <input class="form-control " id="username" name="username" type="text">                                    </div>                                 </div>                                 <div class="form-group ">                                                                      <label for="lastname" class=	"control-label col-md-1">站到门费用</label>                                    <div class="col-md-2">                                       <input class=" form-control" id="lastname" name="lastname" type="text">                                    </div>									  <label for="username" class="control-label col-md-1">站到站费</label>                                    <div class="col-md-2">                                       <input class="form-control " id="username" name="username" type="text">                                    </div>									                                                                      <label for="lastname" class=	"control-label col-md-1">代收铁运费</label>                                    <div class="col-md-2">                                       <input class=" form-control" id="lastname" name="lastname" type="text">                                    </div>									  <label for="username" class="control-label col-md-1">超期杂费</label>                                    <div class="col-md-2">                                       <input class="form-control " id="username" name="username" type="text">                                    </div>                                 </div>                                 <div class="form-group ">                                    <label for="lastname" class=	"control-label col-md-1">派车单号</label>                                    <div class="col-md-2">                                       <input class=" form-control" id="lastname" name="lastname" type="text">                                    </div>                                    <label for="lastname" class=	"control-label col-md-1">派送日期</label>                                    <div class="col-md-2">                                       <input class=" form-control" id="lastname" name="lastname" type="text">                                    </div>									 	<label for="username" class="control-label col-md-1">驾驶员</label>                                    <div class="col-md-2">                                       <input class="form-control " id="username" name="username" type="text">									</div>									   <label for="username" class="control-label col-md-1">集卡号</label>                                    <div class="col-md-2">                                       <input class="form-control " id="username" name="username" type="text">                                    </div>								 </div>                                 <div class="form-group ">                                    <label for="lastname" class=	"control-label col-md-1">进出箱场地</label>                                    <div class="col-md-5">                                       <input class=" form-control" id="lastname" name="lastname" type="text">                                    </div>									  <label for="username" class="control-label col-md-1">票货类型</label>                                    <div class="col-md-5">                                       <input class="form-control " id="username" name="username" type="text">                                    </div>                                 </div>								  <div class="form-group ">                                    <label for="lastname" class=	"control-label col-md-1">备注</label>                                    <div class="col-md-11">                                       <textarea class="form-control " id="ccomment" name="comment" required=""></textarea>                                    </div>                                 </div>                                                                  <div class="form-group">                                    <div class="col-md-offset-2 col-md-10">                                       <button class="btn btn-primary" type="submit">录入</button>                                       <button class="btn btn-default" type="button">取消</button>                                    </div>                                 </div>                              </form>                           </div>                        </div>                     </section>                  </div>               </div>			   <!-- END ROW  -->            </section>			<!-- END WRAPPER  -->		<script src="js/jquery.js" ></script><!-- BASIC JS LIABRARY -->		<script src="js/bootstrap.min.js" ></script><!-- BOOTSTRAP JS  -->		<script src="js/jquery.dcjqaccordion.2.7.js"></script><!-- ACCORDING JS -->		<script src="js/jquery.scrollTo.min.js" ></script><!-- SCROLLTO JS  -->		<script src="js/jquery.nicescroll.js" > </script><!-- NICESCROLL JS  -->		<script src="js/respond.min.js" ></script><!-- RESPOND JS  -->		<script src="js/jquery.validate.min.js"></script><!-- VALIDATE JS  -->		<script src="js/common-scripts.js" ></script><!-- BASIC COMMON JS  -->		<script src="js/form-validation-script.js" ></script><!-- FORM VALIDATION SCRIPT JS  -->	  <!-- END JS -->   </body></html>