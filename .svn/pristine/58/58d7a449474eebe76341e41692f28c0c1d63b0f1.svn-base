<%@page import="vlog.vo.OrpVo"%>
<%@page import="vlog.vo.orpNoVo"%>
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
  <link rel="stylesheet" href="../css/orpDetail.css" type="text/css">
  <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gothic+A1&family=Noto+Sans+KR&display=swap" rel="stylesheet">
<title>공지사항 상세</title>
<style type="text/css">
*{
	font-family: 'Noto Sans KR', sans-serif;
		background: #FFF0F0;
}
  body{
		background: #FFF0F0;
}
#rhdd{
	padding : 30px 0px 30px 50px;
  	border-top : 0.5px solid black;
  	border-bottom: 0.5px solid gray;
  	font-size: 38px;
  	background: #F7F2FF;

}
#woawoa{
  	padding : 20px 0px 30px 50px;
  	border-bottom: 0.5px solid black;
  	font-size : 24px;

}
  .btn{
  	margin-left : 40px;
  }
</style>

<script type="text/javascript">
</script>
</head>
<body>
<%
	orpNoVo notice = (orpNoVo)request.getAttribute("notice");
	String cont = notice.getOnotice_cont();
	cont = cont.replaceAll("\r", "").replaceAll("\n", "<br>");
	OrpVo login = (OrpVo)session.getAttribute("loginOrp"); //로그인한 보육원
	OrpVo orp = (OrpVo)session.getAttribute("orp"); //선택한 보육원
%>

<div>
	<p id="rhdd"><%=notice.getOnotice_title() %></p>
</div>

<div>
	<p id="woawoa"><%=cont %></p>
</div>
<%
	if(login != null){
		if(login.getOrp_no().equals(orp.getOrp_no())){
%>
	<form action="<%=request.getContextPath() %>/orpDetail/onUpdate.jsp" method="post" target="detail">
		<button type="submit" class="btn btn-outline-danger">수정하기</button>
	</form>
<%
		}
	}
%>
</body>
</html>