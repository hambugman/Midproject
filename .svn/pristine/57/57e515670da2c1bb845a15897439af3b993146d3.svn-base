<%@page import="vlog.controller.orpVolunList"%>
<%@page import="vlog.vo.OrpVo"%>
<%@page import="vlog.vo.FileVO"%>
<%@page import="vlog.vo.GalleryVo"%>
<%@page import="java.util.List"%>
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
  <style>
  *{
	font-family: 'Noto Sans KR', sans-serif;
}
  body{
		background: #FFF0F0;
}

  /* Make the image fully responsive */
  .carousel-inner img {
    width: 100%;
    height: 100%;
  }
  .carousel{
  	display: inline-block;
  	width : 50%;
  	margin: 2% 0% 2% 25%;
  }
  #rof{
  	padding : 30px 0px 30px 50px;
  	border-top : 0.5px solid black;
  	border-bottom: 0.5px solid gray;
  	font-size: 38px;
  	background: #F7F2FF;
  }
  #sody{
  	padding : 20px 0px 30px 50px;
  	border-top : 0.5px solid gray;
  	border-bottom: 0.5px solid black;
  	font-size : 24px;
  }
  .btn{
  	margin-left : 40px;
  }
  </style>
<title>detailGallery</title>
<%
	OrpVo login = (OrpVo)session.getAttribute("loginOrp"); //로그인한 보육원
	OrpVo orp = (OrpVo)session.getAttribute("orp"); //선택한 보육원
	List<FileVO> file = (List<FileVO>)request.getAttribute("file");
	GalleryVo gallery = (GalleryVo)request.getAttribute("gallery");
	String title = gallery.getGallery_title();
	String cont = gallery.getGallery_cont();
	cont = cont.replaceAll("\r", "").replaceAll("\n", "<br>");
%>
</head>
<body>

<div>
	<p id="rof"><%=title %></p>
</div>

<div id="demo" class="carousel slide" data-ride="carousel">

  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
  <%
  	if(file.size() >= 2){
  		for(int i = 0; i < file.size() -1; i++){
  %>
  			
    <li data-target="#demo" data-slide-to="<%=i+1%>"></li>
  <%	
  		}
	}
  %> 
  </ul>
  
  <!-- The slideshow -->
  <div class="carousel-inner">
  
    <div class="carousel-item active">
      <img src="<%=request.getContextPath() %>/galleryImage.do?fileName=<%=file.get(0).getFilepath()%>" 
      		style="width : 100%; height : 400px;">
    </div>
  <%
  	if(file.size() >= 2){
  		for(int i = 1; i < file.size(); i++){
  			String path = file.get(i).getFilepath();
  			
  %>
  	
    <div class="carousel-item">
      <img src="<%=request.getContextPath() %>/galleryImage.do?fileName=<%=path%>" 
      		style="width : 100%; height : 400px;">
    </div>
  
  <%
	  	}
  	}
  %>
    
    
  </div>
  
  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>

<div>
	<p id="sody"><%=cont %></p>
</div>
<%
	if(login != null){
		if(login.getOrp_no().equals(orp.getOrp_no())){
%>
	<form action="<%=request.getContextPath() %>/orpDetail/galUpdate.jsp" method="post" target="detail">
		<button type="submit" class="btn btn-outline-danger">수정하기</button>
	</form>
<%
		}
	}
%>
</body>
</html>