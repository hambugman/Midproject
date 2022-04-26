<%@page import="vlog.vo.CommonVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style type="text/css">
body{
	background-color: #FFF0F0;
}

h1{
	text-align: center;
}
img{
	width: 700px;
	height: 300px;

}

#wrap{
	width: 1200px;
	margin: 80px auto;
	text-align: center;
}
.table{
	margin:0px auto;
}
th{
	font-size:larger;
	color: white;
	background: #FFBF00;
	height: 40px;
}
.input{
	font-weight: bold;
}
.table td{
	margin:0px auto;
	width: 200px; 
	height: 70px;
	text-align: center;
	border-radius: 100%;
}
</style>
</head>
<body>
<header></header>
<div id="wrap">
<div id="content">
<img src="<%=request.getContextPath()%>/images/감사.png">
<table class="table">
	<tr>
		<th colspan='5'>결제 확인</th>
	</tr>
	<tr>
		<td class=input>이름</td>
		<td colspan='4'><%=request.getAttribute("Name") %></td>
	</tr>
	<tr>
		<td class=input>휴대번호</td>
		<td colspan='2'><%=request.getAttribute("Tel")%></td>
		<td class=input>이메일</td>	
		<td colspan='2'><%=request.getAttribute("Email") %></td>
	</tr>
	
	<tr>
		<td class=input>결제방식(입금은행)</td>
		<td colspan='2'><%=request.getAttribute("Allbank")%>으로 입금해주세요☜</td>
		<td class=input>금액</td>	
		<td colspan='2'><%=request.getAttribute("Fundmoney") %>원</td>
	</tr>
	
	<tr>
		<td colspan='3' rowspan="5" class=input>계좌 안내</td>
		<td colspan='3'>국민은행 (132-23-6933-232 예금주:Vlog)</td>
	</tr>
	<tr>
		<td colspan='3'>농협 (453023-52-542191 예금주:Vlog)</td>
	</tr>
	<tr>
		<td colspan='3'>우리(1002-147-542191 예금주:Vlog)</td>
	</tr>
	<tr>
		<td colspan="3">신한(232-28-699432 예금주:Vlog)</td>
	</tr>
	<tr>
		<td colspan="3">하나(132-699433-242 예금주:Vlog)</td>
	</tr>

</table><br>
	<div><a href='<%=request.getContextPath()%>/homepage/mainmain.jsp'><button id="tolist" class='btn btn-warning' style="color: white;">확인</button></a></div>
</div>
</div>



</body>
</html>