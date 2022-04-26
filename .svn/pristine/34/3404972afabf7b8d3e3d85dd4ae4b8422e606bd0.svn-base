<%@page import="com.sun.xml.internal.bind.v2.runtime.Location"%>
<%@page import="vlog.vo.StudentVO"%>
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
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="../js/comboard.js"></script>
<link rel="stylesheet" href="/Vlog/css/main.css">
<style type="text/css">
#login{
	width : 90%;
	height: 600px;
	border: 1px solid black;
	text-align: center;
}
.form-control{
	width : 400px;
	
}
hr{
	color : blue;
}
label{
	text-align: left;
}
</style>

<script type="text/javascript">
	$(function(){
	
		
		
	})

</script>
</head>
<body>
<br><br>
<div class="container mt-3">
  <h2>구성원 로그인</h2>
  <br>
  <h5>로그인 하시면 Vlog의 다양한 서비스를 이용하실 수 있습니다.</h5>
  <br>
  
	<% StudentVO stdvo = (StudentVO)session.getAttribute("loginStd");
		if(stdvo==null){
	
	%>
  <form action="/Vlog/Login.do" method="post" target ="_top">
    <div class="mb-3 mt-3">
      <input type="id" class="form-control" id="id" placeholder="아이디" name="id">
    </div>
    <div class="mb-3">
      <input type="password" class="form-control" id="pass" placeholder="Enter password" name="pass">
    </div>
    <div class="form-check mb-3">
      <label class="form-check-label">
        <input class="form-check-input" type="checkbox" name="remember"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;아이디 저장
      </label>
    </div>
    <button type="submit" class="btn btn-primary">로그인</button>
  </form>
  <% } else { %>
	<h2> <%=stdvo.getStd_name() %>님 반갑습니다.</h2><br>
	<a href="<%=request.getContextPath() %>/LogOut.do">로그아웃</a>
<% } %>
</div>

</body>
</html>