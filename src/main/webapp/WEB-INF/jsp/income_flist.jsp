<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page language="java" import="org.app.pojo.Sainput"%>
<%@ page language="java" import="org.app.pojo.Income"%>
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
<title>Editable Table</title>

<!-- BEGIN STYLESHEET -->
<link href="/css/bootstrap.min.css" rel="stylesheet">
<!-- BOOTSTRAP CSS -->
<link href="/css/bootstrap-reset.css" rel="stylesheet">
<!-- BOOTSTRAP CSS -->
<link href="/assets/font-awesome/css/font-awesome.css" rel="stylesheet">
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
				<span class="label label-primary">派车到货收入清单</span>
				<div class="btn-group pull-right">
					<button class="btn btn-primary dropdown-toggle" onClick="sprint()"
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
								<th>箱号</th>
								<th>派车单号</th>
								<th>进出箱场地</th>
								<th>收货人</th>
								<th>电话</th>
								<th>站到站费用</th>
								<th>站到门费用</th>
								<th>代收铁运费</th>
								<th>超期杂费</th>
								<th>代收铁运费</th>
								<th>付款人</th>
								<th>派发日期</th>
								<th>驾驶员</th>
								<th>汇总</th>
								<th>编辑</th>
								<th>删除</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${incomefList}" var="income" varStatus="status">
								<c:if test="${(status.count%2)==0}">
									<tr class="odd">
								</c:if>

								<td><input name="items" value="${income.getId()}"
									type="checkbox" /></td>

								<td><c:out value="${income.getSainput().getCntrNo()}" /></td>
								<td><c:out value="${income.getStrcukNo()}" /></td>
								<td><c:out value="${income.getSainput().getCntrPlace()}" /></td>
								<td><c:out value="${income.getConsignee()}" /></td>
								<td><c:out value="${income.getCorpPhone()}" /></td>
								<td><c:out value="${income.getStgCost()}" /></td>
								<td><c:out value="${income.getStsCost()}" /></td>
								<td><c:out value="${income.getSainput().getCntrPlace()}" /></td>
								<td><c:out value="${income.getTransExp()}" /></td>
								<td><c:out value="${income.getIncidentalExp()}" /></td>
								<td><c:out value="${income.getCorpPayer()}"></c:out></td>
								<td><fmt:formatDate type="date"
										value="${income.getSendDate()}" /></td>
								<td><c:out value="${income.getTruckDriver()}"></c:out></td>


								<td><c:choose>
										<c:when test="${income.getSummaryState().equals('N')}">
											<a class="" href="/summary/insert?id=${income.getId() }"><span
												class="label label-danger">未汇总</span></a>
										</c:when>
										<c:otherwise>
											<a class="" href="/income/edit?id=${sainput.getId() }"><span
												class="label label-success"><b>已汇总</b></span></a>
										</c:otherwise>
									</c:choose></td>
								<td><a class="" href="/income/edit?id=${income.getId() }"><span
										class="label label-success">编辑</span></a></td>
								<td><a id="delete" class="delete"
									href="/income/delete?id=${income.getId() }&flag=S"><span
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
		function sprint() {
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
				window.open('/summary/summary_s_print?summaryIdList=' + text);
			}
		};
	</script>
	<!-- END JS -->
</body>
</html>