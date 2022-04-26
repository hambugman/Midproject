<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>펀딩글 작성 (관리자용)</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="../js/fund.js"></script>
<script>
$(function(){
	$('#send').on('click',function(){
	if($('#ftitle').val()==''||$('#ftitle').val().length<5){
		alert("펀딩명은 5자 이상 입력");
		return false;
	}else{
		if($('#fprod').val()==''||$('#fprod').val().length<5){
			alert("펀딩물품은 5자 이상 입력");
			return false;
		}else{
			if($('#fcont').val()==''||$('#fcont').val().length<50){
				alert("설명글은 50자 이상 입력");
				return false;
			}else{
<%-- 				location.href="<%=request.getContextPath()%>/fund/managerFundmain.jsp" --%>
				}
			}
		}
	})
})
</script>
<style>
	textarea{
		resize: none;
	}
	.modal-content{
		width: 1500px;
		border: 2px solid red;
	}
	h2{
		text-align: center;
	}
</style>
<script type="text/javascript">

</script>

</head>
<body>



	<div class="container" role="dialog">
  <div class="dialog">
    <!-- Modal content-->
    <div class="content">
      <div class="header">
      </div>
      <div class="body">
		  <br><br>
		  <form method="post" action="<%=request.getContextPath()%>/insertFund.do" enctype="multipart/form-data">
           	<input id="send" type="submit" class="btn btn-outline-success" style="float:right" value="펀딩목록에 올리기">
		      <label>펀딩명</label><input type="text" class="form-control" name="fun_name" placeholder="펀딩명">
		      <label>등록보육원</label><input type="text" class="form-control" name="orp_no" placeholder="등록보육원">
		      <label>설명내용</label><textarea cols="70" rows="18" class="form-control" name="fun_cont" placeholder="펀딩올림에 올라온 내용을 작성하세요"></textarea>
		      <label>목표금액</label><input class="form-control" type="text" name="fun_goal">
		      <label>목표날짜</label><input class="form-control" type="date" name="fun_due">
		  	    
			<div class="container mt-3">
			    <div class="custom-file mb-3">
			      <input type="file" class="custom-file-input" id="fundfile" name="fileno">
			      <label class="custom-file-label" for="customFile">사진을 선택하세요</label>
			    </div>
			</div>
			    </form>
	      </div>
	    </div>
	  </div>
	</div>


<script>
// 파일추가
$(".custom-file-input").on("change", function() {
  var fileName = $(this).val().split("\\").pop();
  $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
});
</script>
	
	

</body>
</html>



