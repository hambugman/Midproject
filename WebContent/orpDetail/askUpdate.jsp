<%@page import="vlog.vo.askVo"%>
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
<title>문의사항 수정하기</title>
<style type="text/css">
*{
	font-family: 'Noto Sans KR', sans-serif;
		background: #FFF0F0;
}
body{
		background: #FFF0F0;
}
h2{
	margin-top: 20px;
	display: inline-block;
	float : left;
}
#register{
	float: right;
	margin-top: 20px;
}
</style>
</head>
<body>
<%
	askVo vo = (askVo)session.getAttribute("ask");

	String title = vo.getAsk_title();
	String cont = vo.getAsk_cont();
%>

<div class="container" >
  <form action="<%=request.getContextPath() %>/askUpdate.do" method="post" target="detail">
  <h2>문의사항 글쓰기</h2>
  <button type="submit" class="btn btn-outline-danger" id="register">수정</button>
  <br><br>
    <div class="form-group">
      <input type="text" class="form-control" id="aTitle" name="aTitle" value="<%=title %>">
    </div>
    <div class="form-group">
      <textarea rows="20" class="form-control" id="aCont" name="aCont"><%=cont %></textarea>
    </div>
 
 </form>
</div>

</body>
</html>