<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="kr">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

  <script src="../js/jquery.serializejson.min.js"></script>
  <script src="../js/regcheck.js"></script>

<style>
.ziptr:hover{
  background: lime;
}
</style>

<script>
 $(function(){
	 /* 아이디 중복검사  */
	 $('#idbtn').on('click', function(){
		  idvalue =  $('#id').val().trim();
		  
		  if(idvalue.length  < 1){
			  alert("id를 입력하세요");
			  return false;
		  }
		  
		  if(idvalue.length <4 || idvalue.length > 12){
			  alert("id는 4~12 사이");
			  return false;
		  }
		  
		  //정규식 체크 - idcheck()호출 
		  if(!idcheck())  return false ;
		  
		  //정규식 체크 통과하면 서버로 전송하기 
		  $.ajax({
			url : '/jqpro/CheckId.do',
			data : {"id" : idvalue},   // data : "id=" + idvalue,
			type : 'get',
			success : function(res){
				$('#spanid').html(res.sw).css('color','red');
			}, 
			error : function(xhr){
// 				alert("상태 :"  + xhr.status);  //404, 500, 200
			},
			dataType : 'json'
		  })
	 })
	 
	
	 $('#zipbtn').on('click', function(){
		 window.open("zipsearch.jsp", "우편번호찾기", "width=500 height=400");
	 })
	 
	 
	 /* 우편번호 검색 -modal */
	 /* modal창에서 검색버튼 클릭시 */
	 $('#but').on('click', function(){
		 dongvalue =   $('#dong').val().trim();
		 console.log(dongvalue);
		 
		 if(dongvalue.length <1 ){
			 alert("입력하세요");
			 return false;
		 }
		 
		 //서버로 전송하기 
		 $.ajax({
			 url : "<%= request.getContextPath() %>/ZipSearch.do",
			 data : {"dong" : dongvalue},
			 type : 'post',
			 success : function(res){
				 str = "<table>"
				 str += "<tr><td>우편번호</td>";
				 str += "<td>주소</td><td>번지</td></tr>"
				 $.each(res, function(i, v){
					
					 str += "<tr class='ziptr'><td>" + res[i].zipcode + "</td>";
					 str += "<td>" + v.addr + "</td><td>" + v.bunji + "</td></tr>"
					 
				 })
				 str += "</table>";
				 
				 $('#result').html(str);
			 },
			 error : function(xhr){
// 				 alert("상태 : " + xhr.status)
			 },
			 dataType : 'json'
		 })
	})
	 
	$(document).on('click','.ziptr', function(){
		 zip =  $('td:eq(0)', this).text();
		 addr = $('td:eq(1)', this).text();
		 console.log(zip, addr);
		 
		 $('#zip').val(zip);
		 $('#add1').val(addr);
		 
		 //실행결과 지우기 
		 //$('#dong').val("");
		// $('#result').empty();
		 
		$('#myModal').modal('hide');
	})
	
	//모달닫는 이벤트  - 실행결과 지우기 
	 $("#myModal").on('hide.bs.modal', function(){
		  //실행결과 지우기 
		  $('#dong').val("");
		  $('#result').empty();
	 });
	 
	 
	 /* 가입 - 저장하기  */
	 $('form').on('submit', function(){
		 //alert("submit");
		 
		console.log( $('form').serialize());
		console.log( $('form').serializeArray());
		console.log($('form').serializeJSON())  ;
		
		if(!regcheck()) return false;
		
	  //각 항목에 대한 정규식이 통과되면 서버로 전송 
		$.ajax({
			url : '/jqpro/Insert.do',
			data : $('form').serializeArray(),
			type : 'post',
			success : function(res){
				
			},
			error : function(xhr){
// 				alert("상태 : " + xhr.status);
			},
			dataType : 'json'
		})
	 })
	 
 }) //$(function())
</script>



</head>
<body>

<div class="container">
  <h2>Horizontal form</h2>
  <form class="form-horizontal" onsubmit="return false;" >
  
  
     <div class="form-group">
      <label class="control-label col-sm-2" for="id">아이디</label>
      <div class="col-sm-2">
        <input type="text" class="form-control" id="id" placeholder="Enter id" name="mem_id">
      </div>
      <button id="idbtn" type="button"  class="btn btn-danger btn-sm">중복검사</button>
      <span id="spanid"></span>
    </div>
  
   <div class="form-group">
      <label class="control-label col-sm-2" for="name">이름</label>
      <div class="col-sm-2">
        <input type="text" class="form-control" id="name" placeholder="Enter name" name="mem_name">
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="bir">생년월일</label>
      <div class="col-sm-2">
        <input type="date" class="form-control" id="bir" placeholder="Enter bir" name="mem_bir">
      </div>
    </div>
  
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">이메일</label>
      <div class="col-sm-2">
        <input type="text" class="form-control" id="email" placeholder="Enter email" name="mem_mail">
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="hp">전화번호</label>
      <div class="col-sm-2">
        <input type="text" class="form-control" id="hp" placeholder="Enter hp" name="mem_hp">
      </div>
    </div>
    
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">비밀번호</label>
      <div class="col-sm-2">          
        <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="mem_pass">
      </div>
    </div>
    
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="zip">우편번호</label>
      <div class="col-sm-2">
        <input type="text" class="form-control" id="zip" placeholder="Enter zip" name="mem_zip">
      </div>
      <button id="zipbtn" type="button" class="btn btn-danger btn-sm">번호검색window</button>
      <button data-toggle="modal" data-target="#myModal" type="button" class="btn btn-danger btn-sm">번호검색modal</button>
    </div>

    <div class="form-group">
      <label class="control-label col-sm-2" for="add1">주소</label>
      <div class="col-sm-5">
        <input type="text" class="form-control" id="add1" placeholder="Enter add1" name="mem_add1">
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="add2">상세주소</label>
      <div class="col-sm-5">
        <input type="text" class="form-control" id="add2" placeholder="Enter add2" name="mem_add2">
      </div>
    </div>
    
    
   
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-primary btn-lg">Submit</button>
      </div>
    </div>
  </form>
</div>


 <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog" >
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Modal Header</h4>
        </div>
        <div class="modal-body">
          	<h3>찾는 동이름을 입력하세요</h3>
			 <input type="text"  name="dong"  id="dong">
			 <button type="button" id="but">검색</button>
			 <br><br>
			 <div id="result"></div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>




</body>
</html>










