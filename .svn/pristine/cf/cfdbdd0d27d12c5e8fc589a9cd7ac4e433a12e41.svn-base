<%@page import="vlog.vo.OrpVo"%>
<%@page import="vlog.vo.FileVO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Enumeration"%>
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
<title>보육원 갤러리</title>

<style>
*{
	font-family: 'Noto Sans KR', sans-serif;
}
body{
		background: #FFF0F0;
}
div{
	float: left;
	width : 300px;
	height : 250px;
	margin : 35px;
	margin-bottom: 70px; 
}
img{
	width : 300px;
	height : 250px;
	border-radius: 10px;
}
h4{
	text-align: center;
	color : #3c3c3c;
	font-size : 24px;
	padding-top: 3px;
}
a{
	margin-bottom: 300px;
}
p{
	display: none;
}
h3{
	font-size: 1.5em;
	margin-left: 400px;
}
.btn{
	margin-left: 40px;
	margin-top: 10px;
}

</style>

<script>
$(function(){
	
	$('.detail').on('click', '.action', function(){
		idx = $(this).attr('idx');
		location.href='/Vlog/oneGallery.do?num=' + idx;
		/* $.ajax({
			url : '/Vlog/oneGallery.do',
			data : {"num" : idx},
			type : 'post',
			success : function(res){
				
			},
			error : function(xhr){
				alert(xhr.status);
			},
			dataType : 'json'
		}) */
	})
})
</script>

<%
	List<GalleryVo> galList = (List<GalleryVo>)request.getAttribute("gallery");
	List<FileVO> fileList = (List<FileVO>)request.getAttribute("file");
	OrpVo login = (OrpVo)session.getAttribute("loginOrp"); //보육원관리자
	OrpVo orp = (OrpVo)session.getAttribute("orp"); //선택한 보육원
	
	request.setAttribute("galList", galList);
	request.setAttribute("fileList", fileList);
%>
</head>
<body>
<%
	if(login != null){
		if(login.getOrp_no().equals(orp.getOrp_no())){
%>
	<form action="<%=request.getContextPath() %>/orpDetail/galWrite.jsp" method="post">
		<button type="submit" class="btn btn-outline-danger">글쓰기</button>
	</form>
<%
		}
	}
%>

<%
	if(galList.size() !=0){
		a :for(int i = 0; i < galList.size(); i++){
%>		

<div class="detail">
	<%
	b: for(int j = 0; j < fileList.size(); j++){
		if(galList.get(i).getGallery_no() == fileList.get(j).getBoard_no()){
			int galNum = galList.get(i).getGallery_no();
			String file = fileList.get(j).getFilepath();
	%>
	<a idx="<%=galNum %>" class="action" href="#">
	<img src="<%=request.getContextPath() %>/galleryImage.do?fileName=<%=file%>">
	</a>
	<h4><%=galList.get(i).getGallery_title() %></h4>
	<%
		break b;
		}
	}
	%>
	
</div>

<%
		}
	} else{
%>
	<br>
	<br>
	<br>
	<br>
	<br>
	<h3>아직 등록한 사진이 없습니다.</h3>		
<%
	}
%>


</body>
</html>