<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="../js/crystal.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/Vlog/css/main.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gaegu&display=swap" rel="stylesheet">
<title>Insert title here</title>

<style type="text/css">

</style>

<script type="text/javascript">
$(function(){
	
	 
	//글쓰기 이벤트 
	$('#write').on('click', function(){
		//글쓰기폼 
		$('#writeModal').modal('show');
		
	})
	//글쓰기 후 전송버튼 
	$('#send').on('click', function(){
		
		fdata =    $('#writeModal form').serializeArray();
		console.log(fdata);
		
		//서버로 전송
		stdCrystal();
		
	
	})
})
</script>

</head>
<body>

	<input  id="write" type="button" value="회원정보 수정"><br><br>
 <!-- 글쓰기 폼 Modal -->
<div id="writeModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">회원정보 수정</h4>
      </div>
      <div class="modal-body">
        <form>
          <label>비밀번호</label> <input class="intxt" type="text"  name="std_pass"><br>
          <label>이름</label> <input class="intxt" type="text" name="std_name"><br>
          <label>전화번호</label><input class="intxt" type="text" name="std_tel"><br>
          <label>메일</label><input class="intxt" type="text" name="std_mail"><br>
          <input type="button" value="전송" id="send">
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>  
   

</body>
</html>