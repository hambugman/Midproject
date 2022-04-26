<%@page import="java.util.ArrayList"%>
<%@page import="vlog.vo.FileVO"%>
<%@page import="vlog.vo.FundDetailVO"%>
<%@page import="vlog.vo.FundVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>
body{
	background-color: #FFF0F0;
}

button{
	border: none;
	margin-left: 20px;
	width: 130px;
	height: 60px;
}
img{
	width: 280px;
	height: 230px; 
}
.modal-content{
	width: 500px; 
	height: 500px;
}
#infinity{
/* 	border:2px solid green; */
	height:550px;
	margin-left:20px;
	margin-top: 20px;
	display: inline-block;
}
#container{
	margin: 20px auto;
	width: 1450px;
}
#list{
/*  	border: 2px solid blue;  */
	height: 70%;
}
#d1{
	display: none;
}
#d2{
	white-space:nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
	padding: 7px;
}
#content{
	text-align:center;
	width: 270px;
}
</style>

<script type="text/javascript">
$(function(){
	$(document).on('click','.openBtn',function(){
		var fun_no = $(this).parent().find('#d1').text();
// 		alert("fun_no는 : "+fun_no)
		location.href="<%=request.getContextPath()%>/fundDetailpage.do?fun_no="+fun_no;
	});
});
</script>

</head>
<body>


<% List<FundVO> list =(List<FundVO>)request.getAttribute("fundlist");
   List<FileVO> fileList=(List<FileVO>)request.getAttribute("file");
   int numbers[] = new int[]{52,86,76,83,25,90,62,12,33,66};
   %>

<div id='container'>
<button type="button" class="btn btn-outline-danger" data-toggle="modal" data-target="#myModal">펀딩게시판은?</button>
<div id='list'>
<%for(int i=0; i<list.size(); i++){ %>
<div id=infinity class='alert alert-danger'>
	<%
	 for(int j = 0; j < fileList.size(); j++){
		if(list.get(i).getFun_no() == fileList.get(j).getBoard_no()){
			String file = fileList.get(j).getFilepath();
	%>
	<img src="<%=request.getContextPath()%>/images/imageView.do?fileName=<%=file%>">
	<%
		}
	}
	%>
		<div id="content">
			<div id='d1' style="font-weight: bold;"><%=list.get(i).getFun_no()%></div>
			<div id='d2' style="font-weight: bold;"><%=list.get(i).getFun_name() %></div>
			<div id='d2' style="font-weight: bold;"><%=list.get(i).getFun_cont() %></div>
			<div><span style="font-weight: bold;">현재모금한 사람수: </span></div>
			<div>
			<span style="font-weight: bold;">목표 : </span><%=list.get(i).getFun_goal()%>원<br>
			<span style="font-weight: bold;" ><%=list.get(i).getFun_due()%>일까지</span><br>
			</div><br><br>
			<div class="progress">
			<div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="70"
			aria-valuemin="0" aria-valuemax="100" style="width:<%=numbers[i]%>%">
			<%=numbers[i] %>%
			</div>
    		</div>
    		<br>
	    	<input type="button" class="btn btn-danger openBtn" style="color: white" value="상세정보 보기">
	
	</div>
</div>
<%}%>
</div><!-- list -->
</div><!-- container -->










  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title"style="text-align: center;">펀딩게시판은?</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
          <pre>
 펀딩게시판은 모금을 통해 
힘든 이웃과 보육원 친구들에게 
힘이 될수 있는 것들을 나누고자 하는 곳입니다.
          
 펀딩후원은 일반회원 자격으로서 
참여가능하십니다.원하신다면 
회원가입 ▶ 일반회원가입후 이용하세요!

 펀딩 신청은 구성원분이 
관리자분에게신청하실수 있습니다. 
신청을 원하신다면 구성원 로그인후
마이페이지 ▶ 펀딩신청으로 가능하십니다.
          	</pre>
          
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>



</body>
</html>