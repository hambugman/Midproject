<%@page import="vlog.vo.GalleryVo"%>
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
<title>갤러리 수정하기</title>
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
	GalleryVo vo = (GalleryVo)session.getAttribute("gallery");

	String title = vo.getGallery_title();
	String cont = vo.getGallery_cont();
%>

<div class="container" >
  <form action="<%=request.getContextPath() %>/galUpdate.do" method="post" target="detail">
  <h2>갤러리 글쓰기</h2>
  <button type="submit" class="btn btn-outline-danger" id="register">수정</button>
  <br><br>
    <div class="form-group">
      <input type="text" class="form-control" id="gTitle" name="gTitle" value="<%=title %>">
    </div>
    <div class="form-group">
      <textarea rows="20" class="form-control" id="gCont" name="gCont"><%=cont %></textarea>
    </div>
 
 </form>
</div>

</body>
</html>