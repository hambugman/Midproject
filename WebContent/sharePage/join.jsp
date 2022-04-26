<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나눔 참여 페이지</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  
<style type="text/css">
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

<script>

</script>

</head>

<body>

<div class="container">
  <form action="<%=request.getContextPath() %>/sharePage/InsertNanum.do" method="post"
        enctype="multipart/form-data">
  <h2>나눔 참여하기</h2>
  <button type="submit" class="btn btn-outline-success" class="nanumbtn" id="register">등록</button>
  <br><br>
    <div class="form-group">
      <input type="text" class="form-control" id="title" name="share_title" placeholder="제목을 입력하세요">
    </div>
    <div class="form-group">
      <textarea rows="20" class="form-control" id="cont" name="share_cont" placeholder="내용을 입력하세요"></textarea>
    </div>
 
<div class="container mt-3">
    <div class="custom-file mb-3">
      <input type="file" class="custom-file-input" id="customFile" name="fileno" >
      <label class="custom-file-label" for="customFile">사진을 선택하세요</label>
    </div>
</div>

 </form>
</div>

<script>
// Add the following code if you want the name of the file appear on select
$(".custom-file-input").on("change", function() {
  var fileName = $(this).val().split("\\").pop();
  $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
});
</script>


</body>
</html>