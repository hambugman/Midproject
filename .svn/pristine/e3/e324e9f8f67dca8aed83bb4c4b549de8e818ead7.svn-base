<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>펀딩올림창으로</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<style>

#fundmodal{
	display: none;
}
.modal-content{
	width: 1100px; 
}

.toOlim{
	text-align: center;
	width: 700px;
	margin: auto;
}
#guide{
	text-align: center;
}
</style>

<script type="text/javascript">
$(function(){
	$('#submition').on('click',function(){
	if(!$('#checkbox').prop("checked")){
		alert("신청글 숙지하시고 체크를 해주세요");
		return false;
	}else{
		location.href="<%=request.getContextPath()%>/fund/fundolim.jsp"
		}
	})
})
</script>
</head>
<body>


<div id="container">

<div style="text-align: center;">
</div>
<div id = 'guide'>
<img alt="펀딩에 대한 안내" src="../images/guide1.png" style="width:500px,height:700px" >
</div>

<div class = "toOlim">
<input type="checkbox" id="checkbox">다음과 같은 안내를 모두 숙지하였으며 펀딩을 신청하겠습니다.<br>
<button id="submition" type="button" class="btn btn-outline-success btn-lg">펀딩신청하기</button>
</div>

</div><!--/container -->



<!-- <div id="fundModal" class="modal fade" role="dialog"> -->
<!--   <div class="modal-dialog"> -->

<!--     Modal content -->
<!--     <div class="modal-content"> -->
<!--       <div class="modal-header"> -->
<!--         <button type="button" class="close" data-dismiss="modal">&times;</button> -->
<!--       </div> -->
<!--       <div class="modal-body"> -->
       
<!--            <h2>펀딩 신청</h2> -->
<!--  			<button style="float:right" type="submit" class="btn btn-outline-success" id="register">펀딩신청완료</button> -->
<!-- 		  <br><br> -->
<!-- 		  <form id=submitform> -->
<!-- 		    <div class="form-group"> -->
<!-- 		      <label>펀딩명</label><input type="text" class="form-control" id="fundname" name="fundname" placeholder="제목을 입력하세요"> -->
<!-- 		    </div> -->
<!-- 		    <div class="form-group"> -->
<!-- 		      <label>펀딩목표일</label><input type="date" class="form-control" id="duedate" name="duedate">펀딩목표날짜 -->
<!-- 		    </div> -->
<!-- 		    <div class="form-group"> -->
<!-- 		      <label>목표금액</label><input type="text" class="form-control" id="duemoney" name="duemoney" placeholder="펀딩에 대한 금액을 입력하세요">펀딩목표금액 -->
<!-- 		    </div> -->
<!-- 		    <div class="form-group"> -->
<!-- 		      <label>설명</label><textarea rows="20" class="form-control" id="cont" name="cont" placeholder="내용을 입력하세요"></textarea> -->
<!-- 		    </div> -->
<!-- 		</form>	     -->
<!-- 		<div class="container mt-3"> -->
<!-- 		    <div class="custom-file mb-3"> -->
<!-- 		      <input type="file" class="custom-file-input" id="customFile" name="filename" multiple> -->
<!-- 		      <label class="custom-file-label" for="customFile">사진을 선택하세요</label> -->
<!-- 		    </div> -->
<!-- 		</div> -->
       
<!--       </div> -->
<!--     </div> -->
<!--   </div> -->
<!-- </div>   -->


</body>
</html>
