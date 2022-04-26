/**
 * 
 */
var  comidcheck = function(){
	//id정규식 
	
	idreg = /^[a-zA-Z][a-zA-Z0-9]{4,12}$/
	if( !(idreg.test(idvalue))){
		 alert("아이디는 영어 대/소문자 숫자 포함 4~12자이어야 합니다.");
		 return false;
	}
	
	return true;
}

var comregcheck = function(){
	//이름
	namevalue = $('#name').val().trim();
	
	//공백체크
	if(namevalue.length < 1){
		alert("이름입력하세요");
		return false;
	}
	//길이체크 
	if(namevalue.length < 2  || namevalue.length > 5){
		alert("이름 2~5사이");
		return false;
	}
	//정규식 
	namereg = /^[가-힣]{2,5}$/
	if(!(namereg.test(namevalue)))	{
		alert("이름 형식오류");
		return false;
	}
	
	//비밀번호  - 공벡, 길이(4~10), 정규식-
	
	
	
	//이메일 - 공백 , 정규식 
	
	
	
	//전화번호  - 공백, 정규식 
	
	
	
	
	
	//모두 통과하면 
  return true;
	
}
var  stdidcheck = function(){
	//id정규식 
	
	idreg = /^[a-zA-Z][a-zA-Z0-9]{4,12}$/
		if( !(idreg.test(idvalue))){
			alert("아이디는 영어 대/소문자 숫자 포함 4~12자이어야 합니다.");
			return false;
		}
	
	return true;
}

var stdregcheck = function(){
	//이름
	namevalue = $('#name').val().trim();
	
	//공백체크
	if(namevalue.length < 1){
		alert("이름입력하세요");
		return false;
	}
	//길이체크 
	if(namevalue.length < 2  || namevalue.length > 5){
		alert("이름 2~5글자사이");
		return false;
	}
	//정규식 
	namereg = /^[가-힣]{2,5}$/
		if(!(namereg.test(namevalue)))	{
			alert("이름 형식오류");
			return false;
		}
	
	//비밀번호  - 공벡, 길이(4~10), 정규식-
	//이메일 - 공백 , 정규식 
	//전화번호  - 공벡 , 정규식 
	
	
	//모두 통과하면 
	return true;
	
}


function comjoinform_check() {
	  //변수에 담아주기
	  var pwd = document.getElementById("pass");
	  var uname = document.getElementById("name");
	  var mobile = document.getElementById("hp");
	  var email_id = document.getElementById("mail");
	  var addr = document.getElementById("orp");


	  if (pwd.value == "") {
	    alert("비밀번호를 입력하세요.");
	    pwd.focus();
	    return false;
	  };

	  //비밀번호 영문자+숫자+특수조합(8~25자리 입력) 정규식
	  var pwdCheck = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}$/;

	  if (!pwdCheck.test(pwd.value)) {
	    alert("비밀번호는 영문자+숫자+특수문자 조합으로 8~25자리 사용해야 합니다.");
	    pwd.focus();
	    return false;
	  };

	  var reg = /^[0-9]+/g; //숫자만 입력하는 정규식

	  if (!reg.test(mobile.value)) {
	    alert("전화번호는 숫자만 입력할 수 있습니다.");
	    mobile.focus();
	    return false;
	  }

	  if (email_id.value == "") {
	    alert("이메일 주소를 입력하세요.");
	    email_id.focus();
	    return false;
	  }
	  
	  if (addr.value == "") {
		  alert("주소를 입력하세요.");
		  email_id.focus();
		  return false;
	  }
	  
	 return true;
	}

function stdjoinform_check() {
	//변수에 담아주기
	var pwd = document.getElementById("pass");
	var uname = document.getElementById("name");
	var mobile = document.getElementById("hp");
	var email_id = document.getElementById("mail");
	var addr = document.getElementById("orp");
	
	
	if (pwd.value == "") {
		alert("비밀번호를 입력하세요.");
		pwd.focus();
		return false;
	};
	
	//비밀번호 영문자+숫자+특수조합(8~25자리 입력) 정규식
	var pwdCheck = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}$/;
	
	if (!pwdCheck.test(pwd.value)) {
		alert("비밀번호는 영문자+숫자+특수문자 조합으로 8~25자리 사용해야 합니다.");
		pwd.focus();
		return false;
	};
	
	var reg = /^[0-9]+/g; //숫자만 입력하는 정규식
	
	if (!reg.test(mobile.value)) {
		alert("전화번호는 숫자만 입력할 수 있습니다.");
		mobile.focus();
		return false;
	}
	
	if (email_id.value == "") {
		alert("이메일 주소를 입력하세요.");
		email_id.focus();
		return false;
	}
	
	if (addr.value == "") {
		alert("주소를 입력하세요.");
		email_id.focus();
		return false;
	}
	
	return true;
}













