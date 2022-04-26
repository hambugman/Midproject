<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>펀딩올림</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script>
$(function(){
	$('#send').on('click',function(){
	if($('#ftitle').val()==''||$('#ftitle').val().length<5){
		alert("펀딩명은 5자 이상 입력하세요");
		return false;
	}else{
		if($('#fprod').val()==''||$('#fprod').val().length<5){
			alert("펀딩물품은 5자 이상 입력하세요");
			return false;
		}else{
			if($('#fcont').val()==''||$('#fcont').val().length<50){
				alert("설명글은 50자 이상 상세히 적어주세요");
				return false;
			}else{
				location.href="<%=request.getContextPath()%>/fund/fundlist.jsp"
				alert("올림 신청이 완료되었습니다!")
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
		  
		  <form id="submitform" method="get" action="<%=request.getContextPath()%>/FundOlim.do">
           	<input id="send" type="submit" class="btn btn-outline-success" style="float:right" value="신청하기">
		      <label>펀딩명</label><input type="text" class="form-control" id="ftitle" name="ftitle" placeholder="제목을 입력하세요">
		      <label>펀딩물품명</label><input type="text" class="form-control" id="fprod" name="fprod" placeholder="물품을 입력하세요">
		      <label>설명내용</label><textarea cols="70" rows="18" class="form-control" id="fcont" name="fcont" placeholder="목표일과 목표날짜등을 100자이상 상세히 적어주세요"></textarea>
		  </form>	    
			<div class="container mt-3">
			    <div class="custom-file mb-3">
			      <input type="file" class="custom-file-input" id="fundfile" name="fundfile" multiple>
			      <label class="custom-file-label" for="customFile">사진을 선택하세요</label>
			    </div>
			</div>
	      </div>
	    </div>
	  </div>
	</div>


	
	
	

</body>
</html>


