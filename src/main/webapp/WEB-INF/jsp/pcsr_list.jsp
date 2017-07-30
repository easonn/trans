<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
	  <link rel="shortcut icon" href="img/favicon.ico">
	  <!-- END SHORTCUT ICON -->
      <title>Editable Table</title>
	  
	  <!-- BEGIN STYLESHEET --> 
      <link href="css/bootstrap.min.css" rel="stylesheet"><!-- BOOTSTRAP CSS -->
      <link href="css/bootstrap-reset.css" rel="stylesheet"><!-- BOOTSTRAP CSS -->
      <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet"><!-- FONT AWESOME ICON STYLESHEET -->
      <link rel="stylesheet" href="assets/data-tables/DT_bootstrap.css"><!-- DATATABLE CSS -->
      <link href="css/style.css" rel="stylesheet"><!-- THEME BASIC CSS -->
      <link href="css/style-responsive.css" rel="stylesheet"><!-- THEME BASIC RESPONSIVE  CSS -->
      <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
      <![endif]-->
	  <!-- END STYLESHEET --> 
   </head>
   <body>
            <section class="wrapper site-min-height">
              <section class="panel">
                <header class="panel-heading">
                  <span class="label label-primary">派车收入清单</span>
                  <div class="btn-group pull-right">
                              <button class="btn btn-primary dropdown-toggle"  onClick="window.open('csfdzPrint.html')" data-toggle="dropdown">打印预览</i>
                              </button>
                           </div>
                </header>
                  <div class="panel-body">
                    <div class="adv-table editable-table ">


                        <div class="space15"></div>
                        <table class="table table-striped table-hover table-bordered" id="editable-sample">
                           <thead>
                              <tr><th></th>
                                 <th class="hidden-phone">发站</th>
                                 <th class="hidden-phone">到站</th>
                                 <th class="hidden-phone">发货单位</th>
                                 <th>票号</th>
                                 <th>品名</th>
								 <th class="hidden-phone">箱型号</th>
                                 <th>出箱场地</th>
                                 <th>驾驶员</th>
								 <th>代收款</th>
								 <th>派发日期</th>
								 <th>收获单位</th>
                              </tr>
                           </thead>
                           <tbody>
                             <tr class="">
							                                  <td><a class="" href="javascript:;"><span class="label label-success"  onClick="window.open('pcsrdzdPrint.html')">打印</span></a></td>
                                 <td class="hidden-phone">成都</td>
                                 <td class="hidden-phone">成都</td>
								                                  <td class="hidden-phone">xxxx</td>
                                 <td class="center hidden-phone">111111</td>
                                 <td>123456</td>
								 <td>xxxxx</td>
								 <td>1</td>
								 <td>xxxx</td>
                                 <td>500</td>
								 <td>2017-06-08</td>
								 <td>xxxx</td>
                              </tr><tr class="">
							                                  <td><a class="" href="javascript:;"><span class="label label-success"  onClick="window.open('pcsrdzdPrint.html')">打印</span></a></td>
                                 <td class="hidden-phone">成都</td>
                                 <td class="hidden-phone">成都</td>
								                                  <td class="hidden-phone">xxxx</td>
                                 <td class="center hidden-phone">111111</td>
                                 <td>123456</td>
								 <td>xxxxx</td>
								 <td>1</td>
								 <td>xxxx</td>
                                 <td>500</td>
								 <td>2017-06-08</td>
								 <td>xxxx</td>
                              </tr><tr class="">
							                                  <td><a class="" href="javascript:;"><span class="label label-success"  onClick="window.open('pcsrdzdPrint.html')">打印</span></a></td>
                                 <td class="hidden-phone">成都</td>
                                 <td class="hidden-phone">成都</td>
								                                  <td class="hidden-phone">xxxx</td>
                                 <td class="center hidden-phone">111111</td>
                                 <td>123456</td>
								 <td>xxxxx</td>
								 <td>1</td>
								 <td>xxxx</td>
                                 <td>500</td>
								 <td>2017-06-08</td>
								 <td>xxxx</td>
                              </tr><tr class="">
							                                  <td><a class="" href="javascript:;"><span class="label label-success"  onClick="window.open('pcsrdzdPrint.html')">打印</span></a></td>
                                 <td class="hidden-phone">成都</td>
                                 <td class="hidden-phone">成都</td>
								                                  <td class="hidden-phone">xxxx</td>
                                 <td class="center hidden-phone">111111</td>
                                 <td>123456</td>
								 <td>xxxxx</td>
								 <td>1</td>
								 <td>xxxx</td>
                                 <td>500</td>
								 <td>2017-06-08</td>
								 <td>xxxx</td>
                              </tr><tr class="">
							                                  <td><a class="" href="javascript:;"><span class="label label-success"  onClick="window.open('pcsrdzdPrint.html')">打印</span></a></td>
                                 <td class="hidden-phone">成都</td>
                                 <td class="hidden-phone">成都</td>
								                                  <td class="hidden-phone">xxxx</td>
                                 <td class="center hidden-phone">111111</td>
                                 <td>123456</td>
								 <td>xxxxx</td>
								 <td>1</td>
								 <td>xxxx</td>
                                 <td>500</td>
								 <td>2017-06-08</td>
								 <td>xxxx</td>
                              </tr><tr class="">
							                                  <td><a class="" href="javascript:;"><span class="label label-success"  onClick="window.open('pcsrdzdPrint.html')">打印</span></a></td>
                                 <td class="hidden-phone">成都</td>
                                 <td class="hidden-phone">成都</td>
								                                  <td class="hidden-phone">xxxx</td>
                                 <td class="center hidden-phone">111111</td>
                                 <td>123456</td>
								 <td>xxxxx</td>
								 <td>1</td>
								 <td>xxxx</td>
                                 <td>500</td>
								 <td>2017-06-08</td>
								 <td>xxxx</td>
                              </tr><tr class="">
							                                  <td><a class="" href="javascript:;"><span class="label label-success"  onClick="window.open('pcsrdzdPrint.html')">打印</span></a></td>
                                 <td class="hidden-phone">成都</td>
                                 <td class="hidden-phone">成都</td>
								                                  <td class="hidden-phone">xxxx</td>
                                 <td class="center hidden-phone">111111</td>
                                 <td>123456</td>
								 <td>xxxxx</td>
								 <td>1</td>
								 <td>xxxx</td>
                                 <td>500</td>
								 <td>2017-06-08</td>
								 <td>xxxx</td>
                              </tr><tr class="">
							                                  <td><a class="" href="javascript:;"><span class="label label-success"  onClick="window.open('pcsrdzdPrint.html')">打印</span></a></td>
                                 <td class="hidden-phone">成都</td>
                                 <td class="hidden-phone">成都</td>
								                                  <td class="hidden-phone">xxxx</td>
                                 <td class="center hidden-phone">111111</td>
                                 <td>123456</td>
								 <td>xxxxx</td>
								 <td>1</td>
								 <td>xxxx</td>
                                 <td>500</td>
								 <td>2017-06-08</td>
								 <td>xxxx</td>
                              </tr><tr class="">
							                                  <td><a class="" href="javascript:;"><span class="label label-success"  onClick="window.open('pcsrdzdPrint.html')">打印</span></a></td>
                                 <td class="hidden-phone">成都</td>
                                 <td class="hidden-phone">成都</td>
								                                  <td class="hidden-phone">xxxx</td>
                                 <td class="center hidden-phone">111111</td>
                                 <td>123456</td>
								 <td>xxxxx</td>
								 <td>1</td>
								 <td>xxxx</td>
                                 <td>500</td>
								 <td>2017-06-08</td>
								 <td>xxxx</td>
                              </tr><tr class="">
							                                  <td><a class="" href="javascript:;"><span class="label label-success"  onClick="window.open('pcsrdzdPrint.html')">打印</span></a></td>
                                 <td class="hidden-phone">成都</td>
                                 <td class="hidden-phone">成都</td>
								                                  <td class="hidden-phone">xxxx</td>
                                 <td class="center hidden-phone">111111</td>
                                 <td>123456</td>
								 <td>xxxxx</td>
								 <td>1</td>
								 <td>xxxx</td>
                                 <td>500</td>
								 <td>2017-06-08</td>
								 <td>xxxx</td>
                              </tr><tr class="">
							                                  <td><a class="" href="javascript:;"><span class="label label-success"  onClick="window.open('pcsrdzdPrint.html')">打印</span></a></td>
                                 <td class="hidden-phone">成都</td>
                                 <td class="hidden-phone">成都</td>
								                                  <td class="hidden-phone">xxxx</td>
                                 <td class="center hidden-phone">111111</td>
                                 <td>123456</td>
								 <td>xxxxx</td>
								 <td>1</td>
								 <td>xxxx</td>
                                 <td>500</td>
								 <td>2017-06-08</td>
								 <td>xxxx</td>
                              </tr><tr class="">
							                                  <td><a class="" href="javascript:;"><span class="label label-success"  onClick="window.open('pcsrdzdPrint.html')">打印</span></a></td>
                                 <td class="hidden-phone">成都</td>
                                 <td class="hidden-phone">成都</td>
								                                  <td class="hidden-phone">xxxx</td>
                                 <td class="center hidden-phone">111111</td>
                                 <td>123456</td>
								 <td>xxxxx</td>
								 <td>1</td>
								 <td>xxxx</td>
                                 <td>500</td>
								 <td>2017-06-08</td>
								 <td>xxxx</td>
                              </tr><tr class="">
							                                  <td><a class="" href="javascript:;"><span class="label label-success"  onClick="window.open('pcsrdzdPrint.html')">打印</span></a></td>
                                 <td class="hidden-phone">成都</td>
                                 <td class="hidden-phone">成都</td>
								                                  <td class="hidden-phone">xxxx</td>
                                 <td class="center hidden-phone">111111</td>
                                 <td>123456</td>
								 <td>xxxxx</td>
								 <td>1</td>
								 <td>xxxx</td>
                                 <td>500</td>
								 <td>2017-06-08</td>
								 <td>xxxx</td>
                              </tr><tr class="">
							                                  <td><a class="" href="javascript:;"><span class="label label-success"  onClick="window.open('pcsrdzdPrint.html')">打印</span></a></td>
                                 <td class="hidden-phone">成都</td>
                                 <td class="hidden-phone">成都</td>
								                                  <td class="hidden-phone">xxxx</td>
                                 <td class="center hidden-phone">111111</td>
                                 <td>123456</td>
								 <td>xxxxx</td>
								 <td>1</td>
								 <td>xxxx</td>
                                 <td>500</td>
								 <td>2017-06-08</td>
								 <td>xxxx</td>
                              </tr><tr class="">
							                                  <td><a class="" href="javascript:;"><span class="label label-success"  onClick="window.open('pcsrdzdPrint.html')">打印</span></a></td>
                                 <td class="hidden-phone">成都</td>
                                 <td class="hidden-phone">成都</td>
								                                  <td class="hidden-phone">xxxx</td>
                                 <td class="center hidden-phone">111111</td>
                                 <td>123456</td>
								 <td>xxxxx</td>
								 <td>1</td>
								 <td>xxxx</td>
                                 <td>500</td>
								 <td>2017-06-08</td>
								 <td>xxxx</td>
                              </tr><tr class="">
							                                  <td><a class="" href="javascript:;"><span class="label label-success"  onClick="window.open('pcsrdzdPrint.html')">打印</span></a></td>
                                 <td class="hidden-phone">成都</td>
                                 <td class="hidden-phone">成都</td>
								                                  <td class="hidden-phone">xxxx</td>
                                 <td class="center hidden-phone">111111</td>
                                 <td>123456</td>
								 <td>xxxxx</td>
								 <td>1</td>
								 <td>xxxx</td>
                                 <td>500</td>
								 <td>2017-06-08</td>
								 <td>xxxx</td>
                              </tr><tr class="">
							                                  <td><a class="" href="javascript:;"><span class="label label-success"  onClick="window.open('pcsrdzdPrint.html')">打印</span></a></td>
                                 <td class="hidden-phone">成都</td>
                                 <td class="hidden-phone">成都</td>
								                                  <td class="hidden-phone">xxxx</td>
                                 <td class="center hidden-phone">111111</td>
                                 <td>123456</td>
								 <td>xxxxx</td>
								 <td>1</td>
								 <td>xxxx</td>
                                 <td>500</td>
								 <td>2017-06-08</td>
								 <td>xxxx</td>
                              </tr><tr class="">
							                                  <td><a class="" href="javascript:;"><span class="label label-success"  onClick="window.open('pcsrdzdPrint.html')">打印</span></a></td>
                                 <td class="hidden-phone">成都</td>
                                 <td class="hidden-phone">成都</td>
								                                  <td class="hidden-phone">xxxx</td>
                                 <td class="center hidden-phone">111111</td>
                                 <td>123456</td>
								 <td>xxxxx</td>
								 <td>1</td>
								 <td>xxxx</td>
                                 <td>500</td>
								 <td>2017-06-08</td>
								 <td>xxxx</td>
                              </tr><tr class="">
							                                  <td><a class="" href="javascript:;"><span class="label label-success"  onClick="window.open('pcsrdzdPrint.html')">打印</span></a></td>
                                 <td class="hidden-phone">成都</td>
                                 <td class="hidden-phone">成都</td>
								                                  <td class="hidden-phone">xxxx</td>
                                 <td class="center hidden-phone">111111</td>
                                 <td>123456</td>
								 <td>xxxxx</td>
								 <td>1</td>
								 <td>xxxx</td>
                                 <td>500</td>
								 <td>2017-06-08</td>
								 <td>xxxx</td>
                              </tr><tr class="">
							                                  <td><a class="" href="javascript:;"><span class="label label-success"  onClick="window.open('pcsrdzdPrint.html')">打印</span></a></td>
                                 <td class="hidden-phone">成都</td>
                                 <td class="hidden-phone">成都</td>
								                                  <td class="hidden-phone">xxxx</td>
                                 <td class="center hidden-phone">111111</td>
                                 <td>123456</td>
								 <td>xxxxx</td>
								 <td>1</td>
								 <td>xxxx</td>
                                 <td>500</td>
								 <td>2017-06-08</td>
								 <td>xxxx</td>
                              </tr><tr class="">
							                                  <td><a class="" href="javascript:;"><span class="label label-success"  onClick="window.open('pcsrdzdPrint.html')">打印</span></a></td>
                                 <td class="hidden-phone">成都</td>
                                 <td class="hidden-phone">成都</td>
								                                  <td class="hidden-phone">xxxx</td>
                                 <td class="center hidden-phone">111111</td>
                                 <td>123456</td>
								 <td>xxxxx</td>
								 <td>1</td>
								 <td>xxxx</td>
                                 <td>500</td>
								 <td>2017-06-08</td>
								 <td>xxxx</td>
                              </tr><tr class="">
							                                  <td><a class="" href="javascript:;"><span class="label label-success"  onClick="window.open('pcsrdzdPrint.html')">打印</span></a></td>
                                 <td class="hidden-phone">成都</td>
                                 <td class="hidden-phone">成都</td>
								                                  <td class="hidden-phone">xxxx</td>
                                 <td class="center hidden-phone">111111</td>
                                 <td>123456</td>
								 <td>xxxxx</td>
								 <td>1</td>
								 <td>xxxx</td>
                                 <td>500</td>
								 <td>2017-06-08</td>
								 <td>xxxx</td>
                              </tr><tr class="">
							                                  <td><a class="" href="javascript:;"><span class="label label-success"  onClick="window.open('pcsrdzdPrint.html')">打印</span></a></td>
                                 <td class="hidden-phone">成都</td>
                                 <td class="hidden-phone">成都</td>
								                                  <td class="hidden-phone">xxxx</td>
                                 <td class="center hidden-phone">111111</td>
                                 <td>123456</td>
								 <td>xxxxx</td>
								 <td>1</td>
								 <td>xxxx</td>
                                 <td>500</td>
								 <td>2017-06-08</td>
								 <td>xxxx</td>
                              </tr><tr class="">
							                                  <td><a class="" href="javascript:;"><span class="label label-success"  onClick="window.open('pcsrdzdPrint.html')">打印</span></a></td>
                                 <td class="hidden-phone">成都</td>
                                 <td class="hidden-phone">成都</td>
								                                  <td class="hidden-phone">xxxx</td>
                                 <td class="center hidden-phone">111111</td>
                                 <td>123456</td>
								 <td>xxxxx</td>
								 <td>1</td>
								 <td>xxxx</td>
                                 <td>500</td>
								 <td>2017-06-08</td>
								 <td>xxxx</td>
                              </tr><tr class="">
							                                  <td><a class="" href="javascript:;"><span class="label label-success"  onClick="window.open('pcsrdzdPrint.html')">打印</span></a></td>
                                 <td class="hidden-phone">成都</td>
                                 <td class="hidden-phone">成都</td>
								                                  <td class="hidden-phone">xxxx</td>
                                 <td class="center hidden-phone">111111</td>
                                 <td>123456</td>
								 <td>xxxxx</td>
								 <td>1</td>
								 <td>xxxx</td>
                                 <td>500</td>
								 <td>2017-06-08</td>
								 <td>xxxx</td>
                              </tr><tr class="">
							                                  <td><a class="" href="javascript:;"><span class="label label-success"  onClick="window.open('pcsrdzdPrint.html')">打印</span></a></td>
                                 <td class="hidden-phone">成都</td>
                                 <td class="hidden-phone">成都</td>
								                                  <td class="hidden-phone">xxxx</td>
                                 <td class="center hidden-phone">111111</td>
                                 <td>123456</td>
								 <td>xxxxx</td>
								 <td>1</td>
								 <td>xxxx</td>
                                 <td>500</td>
								 <td>2017-06-08</td>
								 <td>xxxx</td>
                              </tr><tr class="">
							                                  <td><a class="" href="javascript:;"><span class="label label-success"  onClick="window.open('pcsrdzdPrint.html')">打印</span></a></td>
                                 <td class="hidden-phone">成都</td>
                                 <td class="hidden-phone">成都</td>
								                                  <td class="hidden-phone">xxxx</td>
                                 <td class="center hidden-phone">111111</td>
                                 <td>123456</td>
								 <td>xxxxx</td>
								 <td>1</td>
								 <td>xxxx</td>
                                 <td>500</td>
								 <td>2017-06-08</td>
								 <td>xxxx</td>
                              </tr>
                           </tbody>
                        </table>
                     </div>
                  </div>
               </section>
            </section>

<!-- BEGIN JS --> 	  
		<script src="js/jquery-1.8.3.min.js" ></script><!-- BASIC JS LIABRARY 1.8.3 -->
		<script src="js/bootstrap.min.js" ></script><!-- BOOTSTRAP JS  -->
		<script src="js/jquery.dcjqaccordion.2.7.js"></script><!-- ACCORDING JS -->
		<script src="js/jquery.scrollTo.min.js" ></script><!-- SCROLLTO JS  -->
		<script src="js/jquery.nicescroll.js" > </script><!-- NICESCROLL JS  -->
		<script src="assets/data-tables/jquery.dataTables.js"></script><!-- DATATABLE JS  -->
		<script src="assets/data-tables/DT_bootstrap.js"></script><!-- DATATABLE JS  -->
		<script src="js/respond.min.js" ></script><!-- RESPOND JS  -->
		<script src="js/common-scripts.js" ></script><!-- BASIC COMMON JS  -->
		<script src="js/editable-table.js" ></script><!-- EDITABLE TABLE JS  -->
      <script >
	     <!-- EDITABLE TABLE FUNCTION  -->
         jQuery(document).ready(function() {
             EditableTable.init();
         });
      </script>
	  <script type="text/javascript">
$(function() {
    var all_checked = false;
    $(":checkbox").click(function() {
        var table = $(this).parents("table");
        if($(this).attr("id") === "all") {
            table.find(":checkbox").prop("checked", !all_checked);
            all_checked = !all_checked;
        }
        else {
            table.find(":checkbox[id!=all]").each(function (i) {
                if(!$(this).is(":checked")) {
                    table.find("#all").prop("checked", false);
                    all_checked = false;
                    return false;
                }
                $("#all").prop("checked", true);
                all_checked = true;
            });
        }
    });
});
</script>
	  <!-- END JS --> 
   </body>
</html>