<%@ page contentType="text/html;charset=UTF-8" language="java"%>
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
			<table width="718" height="779" border="2"
				style="border-collapse: collapse;">
				<col width="72">
				<col width="72">
				<col width="72">
				<col width="72">
				<col width="72">
				<col width="72">
				<col width="72">
				<col width="72">
				<col width="72">
				<col width="92">
				<col width="72">
				<col width="90">
				<col width="72">
				<col width="72">
				<tr height="19">
					<td x:str height="19" width="72">序号</td>
					<td x:str height="19" width="72">发站</td>
					<td x:str height="19" width="72">到站</td>
					<td x:str height="19" width="72">到达日期</td>
					<td x:str height="19" width="72">票号</td>
					<td x:str height="19" width="72">品名</td>
					<td x:str height="19" width="72">数量</td>
					<td x:str height="19" width="72">重量</td>
					<td x:str height="19" width="72">发票金额</td>
					<td x:str height="19" width="92">收付款项目</td>
					<td x:str height="19" width="72">收款单价</td>
					<td x:str height="19" width="90">应收款</td>
					<td x:str height="19" width="72">付款单价</td>
					<td x:str height="19" width="72">应付款</td>
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