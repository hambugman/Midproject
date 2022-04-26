<%@page import="vlog.vo.FoVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<style>
#wrap{
	width: 1200px;
	height: 1000px;
	margin: 0px auto;
}

#list{
	width: 1000px;
	height: 800px;
	margin: 0px auto;
	text-align: center;
}
table{
	text-align: center;
	border: 2px solid;
}
#content{
	margin-top: 100px;
}
.bold{
	font-weight: bold;
	width: 100px;
}
</style>

</head>
<body>
<%List<FoVO> folist= (List<FoVO>)request.getAttribute("olimdetail"); 
FoVO fovo= folist.get(0);%>
<div id="wrap">
<div id="list" class="well">
<div id="content">
<table class="table">
	<tr>
		<td  class=bold>펀딩명</td>
		<td  id='title'><%=fovo.getFo_title() %></td>
		<td class=bold>신청자ID</td>
		<td><%=fovo.getStd_id() %></td>	
	<tr>
	<tr>
		<td class=bold>펀딩제품</td>
		<td><%=fovo.getFo_rprod() %></td>
		<td class=bold>작성일</td>
		<td><pre><%=fovo.getFo_date()%></pre></td>
	</tr>
	<tr>
		<td class=bold>설명</td>
		<td colspan="3"><pre><%=fovo.getFo_cont()%></pre></td>
	
	</tr>

</table>
</div>
<div>
<a href="javascript:history.back()"><button>목록으로 돌아가기</button>
</div>
</div>
</div>


</body>
</html>