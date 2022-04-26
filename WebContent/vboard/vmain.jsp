<%@page import="vlog.vo.VolunteerBoardVO"%>
<%@page import="vlog.service.VBoardServiceImpl"%>
<%@page import="vlog.service.IVBoardService"%>
<%@page import="vlog.vo.CommonVO"%>
<%@page import="vlog.vo.StudentVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="../js/vboard.js"></script>
  
<style>

body {
  margin: 10px;
  margin-left : 30px;
}
.p1{
  width : 80%;
  padding : 5px;
  margin : 3px;
  float : left;
}
.p2{
  width : 17%;
  padding : 5px;
  margin : 2px;
  float : right ; 
}
.p3{
  clear : both;
}
input[name=reply] {
  height : 40px;
  vertical-align: top;
}
.pager{
  width : 100px;
  float : left;
  margin :5px;
  margin-left : 5%;
}

.repl{
  border : 1px solid gray;
  background : #f1f2fa;
  margin : 1px;
  padding : 5px;
}
#modifyform{
   display : none
}
label{
  display : inline-block;
  width : 60px;
  height : 30px;
}
#writeModal, #modifyModal{
  display : none;
}
#write{
	text-align: center;
}
<%
	CommonVO comvo=(CommonVO)session.getAttribute("loginCommon");
if(!comvo.getGen_id().equals("admin")){
%>
.vdel{
	display : none;
}
<% } %>
</style>

<script>

currentPage = 1;
reply = { } //객체 선언  - 속성과 메소드를 동적으로 추가 해서 사용 
//reply.name
$(function(){
	
	listPage(currentPage);
	//이벤트 
	$('#list').on('click', '.action', function(){
		 idx = $(this).attr('idx');
		 name = $(this).attr('name');
		 if(name=="modify"){
			 //alert(idx + "번째 글을 수정합니다");
			//글수정 -modal창 출력 
			$('#modifyModal').modal('show');
			
			//list 화면에서 수정할 내용을  가져오기 
			panel = $(this).parents('.panel');
			title = $(panel).find('a').text(); //제목
			p3 = $(panel).find(".p3").html(); //내용 - <br>태그가 포함 
			text = p3.replace(/<br>/g, "\n");
			//modal창에 수정할 내용 출력 
			$('#modifyModal input[name=vboard_title]').val(title);
			$('#modifyModal textarea').val(text);
			$('#modifyModal input[name=vboard_no]').val(idx);
			
			//글내용들을 수정 입력 한 후 확인 버튼 클릭 
			
		 }else if(name== "delete"){
			 
			 deleteBoard();//db삭제 - 후 다시 리스트 출력
			 
		 }else if(name=="reply"){
			 <% CommonVO vo =(CommonVO)session.getAttribute("loginCommon"); //logincommon으로 바꿔야함.%>
			 text =  $(this).prev().val();
			 console.log(text);
			 
			 //mame, text 
			 reply.gen_id = "<%=vo.getGen_id()%>"
			 reply.vboard_no = idx;
			 reply.rv_cont = text;
			 
			 //서버로 전송 $.ajax({})
			 replyInsert(this);//댓글저장 - 등록버튼객체
			
		 }else if(name == "list"){
			 //alert(idx + "번째의 내용과 댓글을 출력합니다");
			 replyList(this);
			 
			 
			 //조회수 증가 - class =in 인 검색 
			 vclass=  $(this).parents('.panel').find('.in').attr('class');
			 console.log(vclass);
			 
			 if( typeof vclass == 'undefined'){
				 updateHit(this);
				 //db에서 조회수를 수정하기 위해서는 idx가 필요 
				 //this->클릭한 제목 
				 //클릭한 제목 을 기준으로 해당글의 조회수를 화면에서 수정하기 위해서 
			 }
			 
			 
		 }else if(name == "r_modify"){
			 //alert(idx + "번째 댓글을 수정합니다");
			 
			 //alert($(this).parents(".repl").find('.p3').text());
			 //alert($(this).parent().next().text());
			 
			 //원래 내용 - 수정할 내용 가져오기
			 oldtext = $(this).parent().next().html().trim();
			 
			 //내용을 줄바꿈(\n) 하여 수정창(modifyform) 에  textarea에  출력
			 newtext =  oldtext.replace(/<br>/g, "\n");
			 $('#modifyform textarea').val(newtext);
			 
			 //댓글내용이 있는 p3을 내용을 지우기 
			 $(this).parents(".repl").find('.p3').empty();
			 
			 //댓글 수정폼 p3에  보이기  
			 $(this).parents(".repl").find('.p3').append($('#modifyform'));
			 $('#modifyform').show();
			 	
			 
		 }else if(name == "r_delete"){
// 			 alert(idx + "번째 댓글을 삭제합니다");
			 
			 //db삭제(idx가 필요)  - 후 - 해당 댓글만 화면에서 제거 
			 deleteReply(this);
			//$(this).parents('.repl').remove();
			 
			
			 
		 }
	})
	
	//페이지번호  리스트 이벤트 
	$('#pageList').on('click', '.paging', function(){
		currentPage =   $(this).text().trim();
		listPage(currentPage);
	})
	//next이벤트 
	$('#pageList').on('click', '.next', function(){
		 currentPage =   parseInt($('.paging').last().text().trim()) + 1;
		 listPage(currentPage);
	})
	//previous 이벤트
	$('#pageList').on('click', '.prev', function(){
		 currentPage =   parseInt($('.paging').first().text().trim()) - 1;
		 listPage(currentPage);
	})
	
	
	//댓글수정창에서 취소버튼 클릭 
	$('#btnreset').on('click', function(){
		//p3 부분을 검색 - 원래 내용이 있었던 자리 
		p3tag =  $('#modifyform').parent();
			
		//-ㅡ modifyform 을 다시 body로 append
		$('body').append($('#modifyform'));
		$('#modifyform').hide();
		
		//원래내용 을 원래자리로 출력 
		
		$(p3tag).html(oldtext);
	})
	
	//댓글수정창에서 확인버튼 클릭 
	$('#btnok').on('click', function(){
		//textarea 에서 수정한 내용을 가져오기  -\r\n -> <br>
		 oldtext = $('#modifyform textarea').val();	
		 newtext = oldtext.replace(/\r/g, "").replace(/\n/g, "<br>");
		
		//p3 부분을 검색 - 원래 내용이 있었던 자리 
		p3tag =  $('#modifyform').parent();
		 
		//수정폼닫기
		$('#modifyform').appendTo($('body'));
		$('#modifyform').hide();
	
		//수정내용을 원래자리p3으로 보내기 
		$(p3tag).html(newtext);
		
		//db수정을 위해 ajax처리 하기 - oldtext, renum = idx
		reply.rv_cont = oldtext;
		reply.rv_no = idx;
		updateReply();
		
	})
	
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
		saveBoard();
		
	})
	
	//글 수정폼에서 수정후 확인버튼 클릭 
	$('#mod').on('click', function(){
		
		//모달창에 입력한 내용을 가져온다 
		/* a=  $('#modifyModal input[name=subject]').val();
		b = $('#modifyModal input[name=writer]').val();
		c= $('#modifyModal input[name=mail]').val();
		d= $('#modifyModal textarea').val();
		e = $('#modifyModal input[name=num]').val();
		fdata = {"subject" : a,
				"writer" : b, 
				"mail" : c , 
				"content": d, 
				"num" : e}
		 */
		fdata = $('#modifyModal form').serializeArray();
		console.log(fdata);
		//서버로 전송 - ajax
		modifyBoard();
		
	})
	
	
	
	
})//$function 
</script>

</head>
<body>

<div id="modifyform" >
<textarea rows="5" cols="50"></textarea>
<input type="button" value="확인" id="btnok">
<input type="button"  value="취소" id="btnreset">
</div>


   <h2>봉사활동 후기 게시판 </h2>
   <br><br>
     <div id='write' class="alert alert-warning">
 ✎                새 글을 작성해 주세요!                 ✎
</div>
   <div id="list"></div>
   <div id="pageList"></div>
   
   
 <!-- 글쓰기 폼 Modal -->
<div id="writeModal" class="modal fade" role="dialog">
  <div class="modal-dialog modal-lg">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">봉사활동 후기 작성</h4>
      </div>
      <div class="modal-body">
        <form>
          <label>제목</label> <input class="intxt" type="text"  name="vboard_title"><br>
          <label>내용</label><br>
          <textarea  class="intxt" name="vboard_cont" rows="20" cols="100"></textarea>
          <br>
          <input type="button" value="전송" id="send">
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>  
   
   
   
   
 <!-- 글 수정 폼 Modal -->
<div id="modifyModal" class="modal fade" role="dialog">
  <div class="modal-dialog modal-lg" >

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">봉사활동 후기 작성</h4>
      </div>
      <div class="modal-body">
        <form>
          <label>제목</label> <input class="intxt" type="text"  name="vboard_title"><br>
          <input type="hidden"  name="vboard_no">
          <label>내용</label><br>
          <textarea  class="intxt" name="vboard_cont" rows="20" cols="100"></textarea>
          <br>
          <input type="button" value="확인" id="mod">
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
















