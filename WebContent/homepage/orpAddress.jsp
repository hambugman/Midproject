<%@page import="vlog.vo.OrpVo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gothic+A1&family=Noto+Sans+KR&display=swap" rel="stylesheet">
<title>보육원 연락처</title>
<style>
*{
	font-family: 'Noto Sans KR', sans-serif;
	background: #FFF0F0;
}
body{
		background: #FFF0F0;
}
table{
	margin-left: 1.3%;
	margin-top: 2%;
	font-size: 1.2em;
}
td{
	padding: 7px;
}
th{
	padding: 7px;
	text-align: center;
}
#ttop{
	font-size: 2em;
}
.ccen{
	text-align: center;
}

</style>
</head>
<body>
<script>
$(function(){
	$('.orpp').on('click', function(){
		no = $(this).attr('name');
		location.href='/Vlog/orpInfo.do?no='+no;
	})
})
</script>
<%
	//orpList세션 가져오기
	List<OrpVo> orpList = (List<OrpVo>)session.getAttribute("orpList");
%>
<div id="address" class="container">
	<table class="table">
		<tr>
			<th colspan="4" id="ttop">보육원 연락처</th>
		</tr>
		<tr>
			<th>이  름</th>
			<th>주  소</th>
			<th class="ccen">전화번호</th>
			<th class="ccen">상세페이지</th>
		</tr>
		<% 
			if(orpList.size() != 0){
				for(int i = 0; i < orpList.size(); i++){
					OrpVo vo = orpList.get(i);
		%>
			<tr>
				<td><%=vo.getOrp_name() %></td>
				<td><%=vo.getOrp_addr() %></td>
				<td class="ccen"><%=vo.getOrp_tel() %></td>
				<td class="ccen"><a class="orpp" href="#" name="<%=vo.getOrp_no()%>">상세페이지</a></td>
			</tr>
		<%
				}
			}else{
		%>
			<tr>
				<td colspan="4">등록된 보육원이 없습니다.</td>
			</tr>
		<% 
			}
		%>
		<% %>
	</table>
</div>

</body>
</html>