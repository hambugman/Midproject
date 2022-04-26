<%@page import="java.util.List"%>
<%@page import="vlog.vo.CommonVO"%>
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
<script src="<%=request.getContextPath() %>/js/crystal.js"></script>
<title>회원 마이페이지</title>
<style>

 #writeModal{
   display: none;
  }
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
		//글쓰기폼 
		$('#writeModal').modal('show');
		
	})
	//글쓰기 후 전송버튼 
	$('#send').on('click', function(){
		
		fdata =    $('#writeModal form').serializeArray();
		console.log(fdata);
		
		//서버로 전송
		comCrystal();
		
		
		
	
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
          <label>비밀번호</label><br> <input class="intxt" type="text"  name="gen_pass"><br>
          <label>전화번호</label><br><input class="intxt" type="text" name="gen_tel"><br>
          <label>메일</label><br><input class="intxt" type="text" name="gen_mail"><br>
          <input type="button" value="수정" id="send">
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>  


<%
	CommonVO comvo = (CommonVO) session.getAttribute("loginCommon"); //일반회원
	List<CommonVO> common = (List<CommonVO>) request.getAttribute("commonselect");
%>

<br><br><hr>
<div>
<ul class="nav nav-tabs">
  <li><a href="<%=request.getContextPath()%>/shareJoinIdSelect" target="ifr">나눔</a></li>
  <li><a href="<%=request.getContextPath()%>/myPage/fundpage.jsp" target="ifr">펀딩</a></li>
  <li><a href="<%=request.getContextPath()%>/comVolunList.do" target="ifr">봉사</a></li>
</ul>
</div>


<% 
	String name,addr,bir,mail,tel;
	if (comvo != null) {
		if (common != null) {
			for (int i = 0; i < common.size(); i++) {
				if (comvo.getGen_id().equals(common.get(i).getGen_id())) {
					name=common.get(i).getGen_name();
					addr=common.get(i).getGen_addr();
					bir=common.get(i).getGen_bir();
					mail=common.get(i).getGen_mail();
					tel=common.get(i).getGen_tel();
%>
<hr><br><br>

<form>
<fieldset>
<legend>내 정보</legend>
<br>
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