<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page language="java" import="org.app.pojo.Summary"%>
<%@ page language="java" import="java.text.SimpleDateFormat"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function preview(oper) {
		if (oper < 10) {
			bdhtml = window.document.body.innerHTML; //获取当前页的html代码
			sprnstr = "<!--startprint" + oper + "-->"; //设置打印开始区域
			eprnstr = "<!--endprint" + oper + "-->"; //设置打印结束区域 
			prnhtml = bdhtml.substring(bdhtml.indexOf(sprnstr) + 18); //从开始代码向后取html
			prnhtml = prnhtml.substring(0, prnhtml.indexOf(eprnstr));//从结束代码向前取html
			window.document.body.innerHTML = prnhtml;
			window.print();
			window.document.body.innerHTML = bdhtml;
		} else {
			window.print();
		}
	}

	function xx() {
		window.print();
	}
</script>
</head>
<body>

	 
	<!--startprint1-->
	<!--打印内容开始-->
	<div id=sty>
		<center>
			<table width="1018" border="2" style="border-collapse: collapse;">

				<tr height="19">
					<td x:str height="19" width="72">序号</td>
					<td x:str height="19" width="172">箱号</td>
					<td x:str height="19" width="172">收货人</td>
					<td x:str height="19" width="172">送货地址</td>
					<td x:str height="19" width="172">派送日期</td>
					<td x:str height="19" width="100">驾驶员</td>
					<td x:str height="19" width="72">收款单位</td>
					<td x:str height="19" width="72">应收款</td>
				</tr>

				<c:forEach items="${summaryPrintList}" var="summary" varStatus="status">
                    <tr height="19">
                        <td><c:out value="${status.count}"></c:out></td>
						<td><c:out value="${summary.getCntrNo()}"></c:out></td>
						<td><c:out value="${summary.getConsignee()}"></c:out></td>
						<td><c:out value="${summary.getShipaddress()}"></c:out></td>
						<td><fmt:formatDate type="date"
								value="${summary.getSendDate()}" /></td>
						<td><c:out value="${summary.getTruckDriver()}"></c:out></td>
						<td><c:out value="${summary.getSendCorp()}"></c:out></td>
						<td><c:out value="${summary.getActReceivable()}"></c:out></td>
					</tr>
				</c:forEach>


				<tr height="19">
					<td height="19"></td>
					<td height="19"></td>
					<td height="19"></td>
					<td height="19"></td>
					<td height="19"></td>
					<td height="19"></td>
					<td height="19"></td>
					<td height="19"></td>
				</tr>
				<tr height="19">
					<td height="19"></td>
					<td height="19"></td>
					<td height="19"></td>
					<td height="19"></td>
					<td height="19"></td>
					<td height="19"></td>
					<td height="19"></td>
					<td height="19"></td>
				</tr>
				<tr height="19">
					<td height="19"></td>
					<td height="19"></td>
					<td height="19"></td>
					<td height="19"></td>
					<td height="19"></td>
					<td height="19"></td>
					<td height="19"></td>
					<td height="19"></td>
				</tr>
				<tr height="19">
					<td height="19"></td>
					<td height="19"></td>
					<td height="19"></td>
					<td height="19"></td>
					<td height="19"></td>
					<td height="19"></td>
					<td height="19"></td>
					<td height="19"></td>
				</tr>
				<tr height="19">
					<td height="19"></td>
					<td height="19"></td>
					<td height="19"></td>
					<td height="19"></td>
					<td height="19"></td>
					<td height="19"></td>
					<td height="19"></td>
					<td height="19"></td>
				</tr>
				<tr height="19">
					<td height="19"></td>
					<td height="19"></td>
					<td height="19"></td>
					<td height="19"></td>
					<td height="19"></td>
					<td height="19"></td>
					<td height="19"></td>
					<td height="19"></td>
				</tr>
			</table>

		</center>
	</div>
	<!--打印内容结束-->
	<!--endprint1-->
	<br />
	<br />
	<br />
	<center>
		<input type=button name='button_export' title='打印' onclick=preview(1)
			value=打印>
		<!--<input type="button" value="打印整个网页" onClick="xx()">-->
	</center>
</body>
</html>