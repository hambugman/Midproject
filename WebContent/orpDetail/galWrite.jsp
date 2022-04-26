<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>갤러리 글 작성</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../css/orpDetail.css" type="text/css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gothic+A1&family=Noto+Sans+KR&display=swap" rel="stylesheet">
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

<div class="container">
  <form action="<%=request.getContextPath() %>/galInsert.do" id="cr_form" method="post" enctype="multipart/form-data" onsubmit="return f_submit()">
  <h2>갤러리 글 쓰기</h2>
  <button type="submit" class="btn btn-outline-danger" id="register">등록</button>
  <br><br>
    <div class="form-group">
      <input type="text" class="form-control" id="gallery_title" name="gallery_title" placeholder="제목을 입력하세요">
    </div>
    <div class="form-group">
      <textarea rows="20" class="form-control" id="gallery_cont" name="gallery_cont" placeholder="내용을 입력하세요"></textarea>
    </div>
 
<div class="container mt-3">
    <div class="custom-file mb-3">
      <input type="file" class="custom-file-input" id="customFile" name="filename" multiple>
      <label class="custom-file-label" for="customFile">사진을 선택하세요</label>
    </div>
</div>

 </form>
</div>

<script>
function f_submit(){
	var v_gallery_title= document.querySelector("#gallery_title").value;
	var v_gallery_cont= document.querySelector("#gallery_cont").value;
	var v_qstr = "gallery_title="+v_gallery_title + "&gallery_cont="+v_gallery_cont;
	var v_form = document.querySelector("#cr_form")
	v_form.action = v_form.action + "?"+v_qstr; 
	return true;
}
// Add the following code if you want the name of the file appear on select
$(".custom-file-input").on("change", function() {
  var fileName = $(this).val().split("\\").pop();
  $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
});
</script>


</body>
</html>