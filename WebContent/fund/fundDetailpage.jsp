<%@page import="vlog.vo.CommonVO"%>
<%@page import="vlog.vo.StudentVO"%>
<%@page import="java.util.List"%>
<%@page import="vlog.vo.FundVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="../js/fund.js"></script>
<title>Insert title here</title>
<style>
#wrap{
	width: 1200px;
	height: 1000px;
	margin: 0px auto;
}
#list{
/* 	border: 2px solid green; */
	width: 1000px;
	height: 800px;
	margin: 0px auto;
	text-align: center;
}
table{
	text-align: center;
}
.bold{
	font-weight: bold;
}


</style>

<script type="text/javascript">
	$(function(){
		$('.list').on('click',function(){
			location.href="<%=request.getContextPath()%>/FundList.do"		
		})
		$('.fund').on('click',function(){
			location.href="<%=request.getContextPath()%>/fund/fundpay.jsp"
		})
// 		$('.fund').on('click',function(){
// 			var fun_money = $('#pay option:selected').val()
// 			alert("fundmoney는 : "+fun_money)
<%-- 			location.href="<%=request.getContextPath()%>/fund/Fundpay.do?fun_money="+fun_money; --%>
// 		})
	})
</script>
</head>
<body>
<%
CommonVO comvo = (CommonVO)session.getAttribute("loginCommon");
List<FundVO> list = (List<FundVO>)request.getAttribute("funddetail"); 
FundVO vo = list.get(0);%>
<div id="wrap">
<div id="list" class="well">
<form method="post" action="fundpay.jsp">
<div id="content">
<table class="table">
	<tr>
		<td class='bold'>제목</td>
		<td colspan="3"><%=vo.getFun_name() %></td>
		<td class=bold>날짜</td>
		<td colspan="3"><%=vo.getFun_date() %></td>	
	<tr>
		
	<tr>
		<td class='bold'>목표일</td>
		<td colspan="3"><%=vo.getFun_due() %></td>
		<td class='bold'>목표금액</td>
		<td colspan="3"><%=vo.getFun_goal() %></td>
	</tr>
	<tr>
		<td class='bold' colspan="8">내용</td>
	</tr>
	<tr>
		<td colspan="8" style="width: 700px;"><pre><%=vo.getFun_cont()%></pre></td>
	</tr>
</table>
</div>
<div>
<%if(comvo!=null){ %>
<input type="button" value="후원하기" class='btn-default fund'>
<%}%>
<input type="button" value="목록으로 돌아가기" class='btn-default list'>
</div>
</form>
</div>
</div>


</body>
</html>