<%@page import="vlog.vo.CommunityVO"%>
<%@page import="vlog.vo.StudentVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="../js/comboard.js"></script>
  <link rel="stylesheet" href="/Vlog/css/main.css">
<style type="text/css">
<%
	StudentVO stdvo=(StudentVO)session.getAttribute("loginStd");
	
	if(!stdvo.getStd_id().equals("admin")){
%>
.crystal{
	display: none;
}
<% }%>
#newwrite{
	text-align: center;
	font-size : 18px;
}
#fundmodal{
	display: none;
	position: absolute;
	margin-right : 500px;
}
.modal-content{
	width: 1100px; 
}

.submit{
	text-align: center;
	width: 700px;
	margin: auto;
}
#guide{
	text-align: center;
}
.container{
	margin : 20px;
}
h4{
	margin : 20px;
}
.p4{
	margin : 20px;
}
#hit{
	margin-left: 800px;
}
#dele{
	float: right;
	margin-left: 30px;
}
</style>
<script type="text/javascript">
reply = { };
currentPage = 1;
<%
	StudentVO vo =(StudentVO)session.getAttribute("loginStd");
	%>
$(function(){
	communitylist(currentPage);
	
	$('#newwrite').on('click',function(){
// 		alert('글작성 모달 띄우기');
		
		$('#fundModal').modal('show');
		
	})
	//신청글 작성 후 DB에 저장할 수 있도록
	$('#register').on('click',function(){
		cdata = $('#submitform').serializeArray();
		console.log(cdata);
		
		insertCom();
		
		$('#fundModal').modal('hide');
	})
	
	//댓글 출력
	$(document).on('click','.panel-com',function(){
		idxvalue=$(this).attr('idx');
		idx=$(this).attr('idx');
		$.ajax({
			url : '<%=request.getContextPath()%>/DetailBoard.do',
			data : {'idxvalue' : idxvalue, 'idx' : idx},
			dataType : 'json',
			type : 'post',
			success : function(res){                       
				
				code= '<div class="container">                         ';
				code+='  <div class="panel panel-default">             ';
				code+='    <div class="panel-heading"><h4>'+res.title+'</h4><p>'+res.id+'</p><p>'+res.date+'<span id="hit">조회수 : '+res.hit+'</span></p></div> ';
				code+='    <div class="panel-body">'+res.cont+'</div> ';
				code+='   <hr> <h4> <댓글> </h4> ';
			    code += '         <p class="p4">                                                      ';
				code += '           <textarea rows="" cols="100"></textarea>                          ';
				code += '           <input idx="' + res.num + '" type="button" value="등록 " name="reply" class="action">     ';
				code += '         </p>                                                                ';
				code+='  </div>                                        ';
				code+='</div>                                          ';
				$('body').html(code);
			}
		})
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

		
	})
	
	
	$(document).on('click','#dele',function(){
		idx = $(this).parent().attr('idx');
// 		alert(idx +" 번째 게시물을 삭제합니다.");
		deleteBoard(idx)
		
	})
	
	//댓글 등록 버튼 클릭 시 
	$(document).on('click','.p4 input[name=reply]',function(){
		text =  $(this).prev().val();
		idx = $(this).attr('idx');
		 console.log(text);
		 
		 
		 reply.name = '익명';
		 reply.bonum = idx;
		 reply.cont = text;
		 
		 replyInsert(this);
		 $(this).prev().val("");
		 
	})
	
	$(document).on('click','.p4 .p2 input[name=r_delete]',function(){
		var idx=$(this).attr('idx');
// 		alert(idx + "번째 댓글을 삭제합니다");
		deleteReply(this,idx);
	})
	
		$(document).on('click', '.p4 .p2 input[name=r_modify]',function(){
			alert('자신이 한 일에 책임을 다하는 올바른 사회인이 됩시다.');
			
	})
	
	
	
})
</script>
</head>
<body>
<div class="container">
  <h2>자유 게시판</h2><br>
  <div id='newwrite' class="alert alert-warning">
 ✎                새 글을 작성해 주세요!                 ✎
</div>
  <div class="panel-group">
<!--     <div class="panel panel-default"> -->
<!--       <div class="panel-heading">Panel with panel-default class</div> 이걸 페이징하고 같이 넣어 줘야함. -->
<!--       <div class="panel-body">Panel Content</div> -->
<!--     </div> -->
   </div>
  </div>
   <div id="pageList"> </div>
  
  <div id="fundModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body">
       
           <h2>새 글 작성</h2>
 			
		  <br><br>
		  <form id=submitform>
		    <div class="form-group">
		      <label>제목입력</label><input type="text" class="form-control" id="title" name="title" placeholder="제목을 입력하세요">
		    </div>
		    <div class="form-group">
		      <label>내용</label><textarea rows="20" class="form-control" id="cont" name="cont" placeholder="내용을 입력하세요"></textarea>
		    </div>
		</form>	    
		<div class="container mt-3">
		    <button style="float:left" type="submit" class="btn btn-outline-success" id="register">작성 완료</button>
		</div>
      </div>
    </div>
  </div>
</div> 
  
 
</body>
</html>