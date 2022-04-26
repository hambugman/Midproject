<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
      <script src="../js/jquery.serializejson.min.js"></script>
  <script src="../js/regcheck.js"></script>
 <style type="text/css">
 .form-group{
	clear: both;
	margin-bottom: 40px;
}
.form-control{
	width : 400px;
}
#id{
	float: left;
}
.btn-success{
	width : 300px;
	height: 60px;
}
#idspan{
	font-style : bold;
	color : green;
}
 </style>
 <script type="text/javascript">
 $(function(){
	  $('#idbtn').on('click',function(){
	  		idvalue=$('#id').val().trim();
	  		
	  		if(idvalue.length<1){
	  			alert('아이디를 입력해라 인간');
	  			return false;
	  		}
	  		
	  		//서버로 전송하기
	  		$.ajax({
	  			url : "/Vlog/CheckId.do",
	  			type : "get",
	  			data : {"id" : idvalue}, //data : "id=" + idvalue, 도 가능
	  			success : function(res){
	  				str = "&nbsp;&nbsp;&nbsp;"+res.check;
	  				$('#idspan').html(str);
	  			},
	  			error : function(xhr){
// 	  				alert("상태 : " + xhr.status); //200 :jsp 오류/ 404 :jsp,url경로 오류/ 500 : 이클립스 콘솔창보기
	  			},
	  			dataType : 'json'
	  		})
	  		
	  	})
			
			//가입 - 저장하기
			$('#send').on('click',function(){
				
				if(!stdidcheck()){
					return false;
				}
				if(!stdregcheck()){
					return false;
				}
				if(!stdjoinform_check()){
					return false;
				}
				
			//입력한 모든 값을 가져오기 - 정규식 체크 > 서버로 보내기
			console.log($('form').serialize());
			console.log($('form').serializeArray());
			console.log($('form').serializeJSON());
			
			$.ajax({
				url : "/Vlog/StdSign.do",
				data : $('form').serializeArray(),
				type :"post",
				success :function(res){
					str = '회원가입 '+res.sw;
					alert(str);
				},
				error : function(xhr){
					alert('회원가입 감사합니다 ! 환영합니다~');
				},
				dataType : 'json'
				
			})
			
			
			})
			
	})
 
 </script>
</head>
<body>
<br><br>
<h2>구성원 회원</h2>
<br><br>
<div class="container">
  <form class="needs-validation" novalidate action="/Vlog/StdSign.do" method="post" target='_top'> 
   
    <div class="form-group">
      <label for="id"></label>
      <input type="text" class="form-control" id="id" placeholder="아이디 입력하세욤" name="std_id" required>
      <button type="button" id='idbtn' class="btn btn-danger btn-sm">중복검사</button><span id='idspan'></span>
      <div class="valid-feedback">확인</div>
      <div class="invalid-feedback">입력해주세요</div>
    </div>
    <div class="form-group">
      <input type="password" class="form-control" id="pass" placeholder="비밀번호 입력" name="std_pass" required>
      <div class="valid-feedback">확인</div>
      <div class="invalid-feedback">입력해주세요</div>
    </div>
    <div class="form-group">
      <input type="text" class="form-control" id="name" placeholder="이름 입력" name="std_name" required>
      <div class="valid-feedback">확인</div>
      <div class="invalid-feedback">입력해주세요</div>
    </div>
    <div class="form-group">
      <input type="date" class="form-control" id="bir" placeholder="생일 입력" name="std_bir" required>
      <div class="valid-feedback">확인</div>
      <div class="invalid-feedback">입력해주세요</div>
    </div>
    <div class="form-group">
      <input type="text" class="form-control" id="hp" placeholder="휴대폰번호 입력" name="std_tel" required>
      <div class="valid-feedback">확인</div>
      <div class="invalid-feedback">입력해주세요</div>
    </div>
    <div class="form-group">
      <input type="text" class="form-control" id="mail" placeholder="메일주소 입력" name="std_mail" required>
      <div class="valid-feedback">확인</div>
      <div class="invalid-feedback">입력해주세요</div>
    </div>
    <div class="form-group">
      <input type="text" class="form-control" id="orp" placeholder="지역입력 (2글자 ex)대전, 경북, 전남)" name="std_location" required>
      <div class="valid-feedback">확인</div>
      <div class="invalid-feedback">입력해주세요</div>
    </div>
    


   
    <div class="form-group form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="checkbox" name="remember" required>&nbsp;&nbsp;&nbsp;&nbsp; 이거 체크하면 ... 너의 개인정보는 내거야 하하핫
        <div class="valid-feedback">확인</div>
        <div class="invalid-feedback">Check this checkbox to continue.</div><br><br>
        <button type='submit' id='send' class="btn btn-success">회원가입</button>
      </label>
      
    </div>
  </form>
</div>

<script>
// Disable form submissions if there are invalid fields
(function() {
  'use strict';
  window.addEventListener('load', function() {
    // Get the forms we want to add validation styles to
    var forms = document.getElementsByClassName('needs-validation');
    // Loop over them and prevent submission
    var validation = Array.prototype.filter.call(forms, function(form) {
      form.addEventListener('submit', function(event) {
        if (form.checkValidity() === false) {
          event.preventDefault();
          event.stopPropagation();
        }
        form.classList.add('was-validated');
      }, false);
    });
  }, false);
})();
</script>


</body>
</html>