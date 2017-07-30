<%@page import="java.text.SimpleDateFormat"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page language="java" import="org.app.pojo.Bill"%>
<%@ page language="java" import="java.text.SimpleDateFormat"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<title>成都源通物流</title>

<!-- BEGIN STYLESHEET -->
<link href="/css/bootstrap.min.css" rel="stylesheet">
<!-- BOOTSTRAP CSS -->
<link href="/css/bootstrap-reset.css" rel="stylesheet">
<!-- BOOTSTRAP CSS -->
<link href="/assets/font-awesome//css/font-awesome.css" rel="stylesheet">
<!-- FONT AWESOME ICON STYLESHEET -->
<link rel="stylesheet" href="/assets/data-tables/DT_bootstrap.css">
<!-- DATATABLE CSS -->
<link href="/css/style.css" rel="stylesheet">
<!-- THEME BASIC CSS -->
<link href="/css/style-responsive.css" rel="stylesheet">
<!-- THEME BASIC RESPONSIVE  CSS -->
<!--[if lt IE 9]>
      <script src="/js/html5shiv.js"></script>
      <script src="/js/respond.min.js"></script>
      <![endif]-->
<!-- END STYLESHEET -->
</head>
<body>
	<section class="wrapper site-min-height">
		<section class="panel">
			<header class="panel-heading">
				<span class="label label-primary">发票付款对账单</span>
				<div class="btn-group pull-right">
					<button class="btn btn-primary dropdown-toggle" onClick="fprint()"
						data-toggle="dropdown">
						打印预览</i>
					</button>
				</div>
			</header>
			<div class="panel-body">
				<div class="adv-table editable-table ">


					<div class="space15"></div>
					<table class="table table-striped table-hover table-bordered"
						id="editable-sample">
						<thead>
							<tr>
								<th><input type="checkbox" name="all" id="all" /> 全选</th>
								<th class="hidden-phone">开票日期</th>
								<th class="hidden-phone">交票日期</th>
								<th class="hidden-phone">票号</th>
								<th>抵扣单位</th>
								<th>款面金额</th>
								<th class="hidden-phone">付发票点</th>
								<th>付票款</th>
								<th>编辑</th>
								<th>删除</th>
							</tr>
						</thead>
						</tbody>
						<c:forEach items="${billfList}" var="bill" varStatus="status">
							<c:if test="${(status.count%2)==0}">
								<tr class="odd">
							</c:if>
							<td><input name="items" value="${bill.getId()}"
								type="checkbox" /></td>
							<td class="hidden-phone"><fmt:formatDate type="date"
									value="${bill.getBillDate()}" /></td>
							<td class="hidden-phone"><fmt:formatDate type="date"
									value="${bill.getSettleDate()}" /></td>
							<td class="hidden-phone"><c:out value="${bill.getBillNo()}"></c:out></td>
							<td class="hidden-phone"><c:out
									value="${bill.getDeductionsCorp()}"></c:out></td>
							<td class="hidden-phone"><c:out value="${bill.getPrice()}"></c:out></td>
							<td class="hidden-phone"><c:out
									value="${bill.getBillPoint()}"></c:out></td>
							<td class="hidden-phone"><c:out
									value="${bill.getBillPrice()}"></c:out></td>
							<td><a class="" href="/bill/edit?id=${bill.getId() }"><span
									class="label label-success">编辑</span></a></td>
							<td><a class="delete"
								href="/bill/delete?id=${bill.getId() }&flag=F"><span
									class="label label-danger">删除</span></a></td>
							</tr>
						</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</section>
	</section>

	<!-- BEGIN JS -->
	<script src="/js/jquery-1.8.3.min.js"></script>
	<!-- BASIC JS LIABRARY 1.8.3 -->
	<script src="/js/bootstrap.min.js"></script>
	<!-- BOOTSTRAP JS  -->
	<script src="/js/jquery.dcjqaccordion.2.7.js"></script>
	<!-- ACCORDING JS -->
	<script src="/js/jquery.scrollTo.min.js"></script>
	<!-- SCROLLTO JS  -->
	<script src="/js/jquery.nicescroll.js">
		
	</script>
	<!-- NICESCROLL JS  -->
	<script src="/assets/data-tables/jquery.dataTables.js"></script>
	<!-- DATATABLE JS  -->
	<script src="/assets/data-tables/DT_bootstrap.js"></script>
	<!-- DATATABLE JS  -->
	<script src="/js/respond.min.js"></script>
	<!-- RESPOND JS  -->
	<script src="/js/common-scripts.js"></script>
	<!-- BASIC COMMON JS  -->
	<script src="/js/editable-table.js"></script>
	<!-- EDITABLE TABLE JS  -->
	<script>
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
				if ($(this).attr("id") === "all") {
					table.find(":checkbox").prop("checked", !all_checked);
					all_checked = !all_checked;
				} else {
					table.find(":checkbox[id!=all]").each(function(i) {
						if (!$(this).is(":checked")) {
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
		function fprint() {
			text = "";
			i = 0;
			$("input[name=items]").each(function() {
				if ($(this).attr("checked")) {
					i++;
					text += $(this).val() + ",";
				}
			});
			if (i == 0) {
				alert("请选择需要打印的发票!");
				return;
			} else {
				window.open('/bill/bill_f_print?billIdList=' + text);
			}
		}
	</script>
	<!-- END JS -->
</body>
</html>