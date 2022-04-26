<%@page import="vlog.vo.SharejoinVO"%>
<%@page import="java.util.List"%>
<%@page import="vlog.vo.CommonVO"%>
<%@page import="vlog.vo.StudentVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="/Vlog/css/main.css">
<script src="../js/crystal.js"></script>
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
    margin-left: 50px;

}
button:hover {
	
   background: #FFE6E6;
	color : black;

}

 #writeModal{
   display: none;
  }
#send{
	width : 70px;
	height: 40px;
}
label{
 margin-right: 40px;
 
}

td{
   padding: 10px;
}

a{
    margin-left: 50px;

}
fieldset{
   color: black;
   border: 2px solid #CC3333;
   margin-left: 50px;
   margin-top: 30px;
   width: 500px;
}
legend{
 margin-left: 50px;
 margin-bottom: 10px;
 font-size: 15px;
 width: 50px;
}

</style>

<script type="text/javascript">

$(function(){
	
	//글쓰기 이벤트 
	$('#change').on('click', function(){
		
		$('#writeModal').modal('show');
		
	})
	
	
	//글쓰기 후 전송버튼 
	$('#send').on('click', function(){
		
		fdata =    $('#writeModal form').serializeArray();
		console.log(fdata);
		
		//서버로 전송
		stdCrystal();
		
	
	})
	$('#back').on('click',function(){
	
	location.href="homepage/mainmain.jsp";
	
  })
})

</script>
</head>

<body>


<div>
<button id="change">회원정보수정</button>
<button id="back">뒤로돌아가기</button>


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
          <label>비밀번호</label><br><input class="intxt" type="text"  name="std_pass"><br>
          <label>이름</label><br><input class="intxt" type="text" name="std_name"><br>
          <label>전화번호</label><br><input class="intxt" type="text" name="std_tel"><br>
          <label>메일</label><br><input class="intxt" type="text" name="std_mail"><br>
          <br>
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


<ul class="nav nav-tabs">
  <li><a href="<%=request.getContextPath()%>/ShareJoin" target="ifr">나눔</a></li>
  <li><a href="<%=request.getContextPath()%>/myPage/fundpage.jsp" target="ifr">펀딩</a></li>
</ul>



<%
	StudentVO svo = (StudentVO)session.getAttribute("loginStd"); //구성원 
	List<StudentVO> student = (List<StudentVO>) request.getAttribute("studentselect");
%>

<% 
	String name,addr,bir,mail,tel;
	if (svo != null) {
		if (student != null) {
			for (int i = 0; i < student.size(); i++) {
				if (svo.getStd_id().equals(student.get(i).getStd_id())) {
					name=student.get(i).getStd_name();
					addr=student.get(i).getStd_location();
					bir=student.get(i).getStd_bir();
					mail=student.get(i).getStd_mail();
					tel=student.get(i).getStd_tel();
%>

<hr><br><br>

<form>
<fieldset>
<legend>내 정보</legend>
<table>
<tr><td>회원  이름 : <%=name%></td> </tr>
<tr><td>회원   주소 : <%=addr%></td> </tr>
<tr><td>회원  생일 : <%=bir%></td></tr>
<tr><td>회원  메일 : <%=mail%></td> </tr>
<tr><td>회원전화번호 : <%=tel%></td> </tr>

</table>
</fieldset>
</form>
<%
				break;
	}
			}
		}
	}
%>

</body>
</html>