<%@page import="vlog.vo.OrpVo"%>
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
<link rel="stylesheet" href="/Vlog/css/main.css">
<title>회원 마이페이지</title>
<style>

button{
    margin-top : 30px;

	cursor: pointer;
	margin-right: 10px;
    background: #F57878;
    border-radius: 40px;
    border : 2px solid white;
	color : white;

}
button:hover {
	
   background: #FFE6E6;
   color : black;
   
}
 #writeModal{
   display: none;
  }
  .nww{
	margin-top: 20px;
	margin-left: 40px;
	font-size: 28px;
}
.ddi{
	margin-left: 40px;
	font-size: 20px;
}
</style>
<script type="text/javascript">

$(function(){
	
	 
	//글쓰기 이벤트 
	$('#change').on('click', function(){
		//글쓰기폼 
		$('#writeModal').modal('show');
		
	})
	//글쓰기 후 전송버튼 
	$('#send').on('click', function(){
		
		fdata =    $('#writeModal form').serializeArray();
		console.log(fdata);
		
		//서버로 전송
		orpCrystal();
		
	
	})
	
	$('#back').on('click',function(){
		
		location.href="homepage/mainmain.jsp";
		
	})
})
</script>
</head>
<body>
<script>
$(document).ready(function(){
	$('.orpp').on('click', function(){
		no = $(this).attr('name');
		location.href='/Vlog/orpInfo.do?no='+no;
	})
})
</script>
<%
	OrpVo vo = (OrpVo)session.getAttribute("loginOrp"); // 관리자회원
%>
<div>
<button id="change">회원정보수정</button>
<button id="back">뒤로돌아가기</button>

</div>

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
          <label>비밀번호</label><br> <input class="intxt" type="text"  name="orp_pass"><br>
          <input type="button" value="수정" id="send">
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>  


<br><br><hr>
<div>
<ul class="nav nav-tabs">
  <li><a href="<%=request.getContextPath()%>/myPage/fundpage.jsp" target="ifr">펀딩</a></li>
  <li><a href="<%=request.getContextPath()%>/orpVolunList.do" target="ifr">봉사</a></li>
  <li><a href="#" name="<%=vo.getOrp_no()%>" class="orpp">내 보육원</a></li>
</ul>
</div>
<hr>

	<div id="info">
		<p class="nww">보육원 정보</p>
		<p class="ddi"><%=vo.getOrp_name() %></p>
		<p class="ddi"><%=vo.getOrp_addr() %></p>
		<p class="ddi"><%=vo.getOrp_tel() %></p>
	</div>

</body>

</html>