<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../js/comboard.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/Vlog/css/main.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Yeon+Sung&display=swap" rel="stylesheet">
<style type="text/css">
body{
font-family: 'Yeon Sung', cursive;
text-align: center;
white-space: pre-wrap;
}
h2{
margin-bottom: 30px;
}
div{
	padding : 10px;
}
#flower{
	width : 350px;
	height: 400px;
	position: absolute;
/* 	z-index: -1; */
	left : 42%;
	top:1px;
}
</style>
</head>
<body>
<div>
<h1>ðėŽėīíļ ėę°ð</h1>
<img id='flower' src = "<%=request.getContextPath() %>/images/ę―.png">
<br><br><br>
<img src = "<%=request.getContextPath() %>/images/intro.jpg" alt = "ėę°.jpg">
</div>
</body>
</html>