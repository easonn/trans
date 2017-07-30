<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page language="java" import="org.app.pojo.Sainput"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
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
				<col width="95" />
				<col width="83" />
				<col width="92" />
				<col width="72" />
				<col width="94" />
				<col width="72" />
				<col width="105" />
				<col width="86" />
				<col width="107" />
				<tr height="19">
					<td colspan="9" x:str="x:str" height="19" width="794">       成都源通物流有限公司配送货物签收单              派车单编号：00000</td>
				</tr>
				<tr height="19">
					<td x:str="x:str" height="19" width="95">发站</td>
					<td x:str="x:str" height="19" width="83">到站</td>
					<td x:str="x:str" height="19" width="92">发货单位</td>
					<td x:str="x:str" height="19" width="72">品名</td>
					<td x:str="x:str" height="19" width="94">票号</td>
					<td x:str="x:str" height="19" width="72">箱型号</td>
					<td x:str="x:str" height="19" width="105">箱号</td>
					<td x:str="x:str" height="19" width="86">封号</td>
					<td x:str="x:str" height="19" width="107">出箱场地</td>
				</tr>
				<tr height="19">
					<td rowspan="2" height="38" width="95"></td>
					<td rowspan="2" height="38" width="83"></td>
					<td rowspan="2" height="38" width="92"></td>
					<td rowspan="2" height="38" width="72"></td>
					<td rowspan="2" height="38" width="94"></td>
					<td rowspan="2" height="38" width="72"></td>
					<td height="19" width="105"></td>
					<td height="19" width="86"></td>
					<td rowspan="2" height="38" width="107"></td>
				</tr>
				<tr height="19">
					<td height="19" width="105"></td>
					<td height="19" width="86"></td>
				</tr>
				<tr height="19">
					<td colspan="2" x:str="x:str" height="19" width="190">收（发）货单位</td>
					<td colspan="3" x:str="x:str" height="19" width="256">收（发）货地址</td>
					<td colspan="2" x:str="x:str" height="19" width="144">电话</td>
					<td colspan="2" x:str="x:str" height="19" width="172">代收款</td>
				</tr>
				<tr height="19">
					<td colspan="2" height="19" width="190"></td>
					<td colspan="3" height="19" width="256"></td>
					<td height="19" width="72"></td>
					<td height="19" width="105"></td>
					<td colspan="2" height="19" width="172"></td>
				</tr>
				<tr height="19">
					<td colspan="2" rowspan="2" x:str="x:str" height="38" width="190">备注</td>
					<td colspan="7" rowspan="2" height="38" width="613"></td>
				</tr>
				<tr height="19">
				</tr>
				<tr height="19">
					<td colspan="2" x:str="x:str" height="19" width="190">派车日期</td>
					<td colspan="3" x:str="x:str" height="19" width="256">驾驶员           集卡号</td>
					<td x:str="x:str" height="19" width="72">挂车号</td>
					<td rowspan="4" x:str="x:str" height="76" width="105">收发货签字</td>
					<td colspan="2" rowspan="2" height="38" width="172"></td>
				</tr>
				<tr height="19">
					<td colspan="2" height="19" width="190"></td>
					<td colspan="2" height="19" width="184"></td>
					<td height="19" width="94"></td>
					<td height="19" width="72"></td>
				</tr>
				<tr height="19">
					<td colspan="2" x:str="x:str" height="19" width="190">调度货物查询</td>
					<td colspan="2" x:num="17302804542" height="19" width="184">17302804542</td>
					<td colspan="2" x:str="x:str" height="19" width="188">028-83682836</td>
					<td colspan="2" rowspan="2" x:str="x:str" height="38" width="172">年   月    日</td>
				</tr>
				<tr height="19">
					<td colspan="2" x:str="x:str" height="19" width="190">负责人</td>
					<td colspan="2" x:num="17302804542" height="19" width="184">17302804542</td>
					<td colspan="2" x:str="x:str" height="19" width="188">028-83682836</td>
				</tr>
				<tr height="19">
					<td x:str="x:str" height="19" width="95">开户名</td>
					<td colspan="4" x:str="x:str" height="19" width="330">中国建设银行青白江支行</td>
					<td colspan="4" x:str="x:str" height="19" width="335">6217  0038  1000  2623  992</td>
				</tr>
				<tr height="19">
					<td x:str="x:str" height="19" width="95">陈家华</td>
					<td colspan="4" x:str="x:str" height="19" width="330">中国农业银行股份有限公司成都青龙支行</td>
					<td colspan="4" x:str="x:str" height="19" width="335">6228  4504  6000  6421  715</td>
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