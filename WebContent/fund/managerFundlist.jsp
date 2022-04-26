<%@page import="vlog.vo.FileVO"%>
<%@page import="javax.swing.ListModel"%>
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
	width: 270px;
	height: 40px;
	font-weight: bold;
	border-radius: 70%;
}

#title{
	text-align: center;
	width: 540px;
	font-size: x-large;
	font-weight: bold;
}
img{
	width: 280px;
	height: 230px; 
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
		location.href="<%=request.getContextPath()%>/fundDetailpage2.do?fun_no="+fun_no;
	});
	
	//펀딩 작성 jsp 으로 넘어가기
	$('#insertBtn').on('click',function(){
		location.href="<%=request.getContextPath()%>/fund/fundinsert.jsp"			
	})
	
	
	
	
	
});
</script>

</head>
<body>

<% List<FundVO> list =(List<FundVO>)request.getAttribute("fundlist");
   List<FileVO> fileList=(List<FileVO>)request.getAttribute("file");
%>
<div id='container'>
<div id='title' class='alert alert-warning'>펀딩글 관리</div>
<button type="button" id="insertBtn" class='btn btn-warning'>관리자용 펀딩글 작성하기</button>
<a href="javascript:history.back();"><button type="button" class='btn btn-warning'>뒤로 가기</button></a>
<div id='list'>
<%for(int i=0; i<list.size(); i++){ %>
<div id=infinity class='alert alert-warning'>
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
			<span style="font-weight: bold;">목표 :</span><%=list.get(i).getFun_goal()%>원<br>
			<span style="font-weight: bold;" ><%=list.get(i).getFun_due()%>일까지</span><br>
			</div><br><br>
			<div class="progress">
			<div class="progress-bar" role="progressbar" aria-valuenow="70"
			aria-valuemin="0" aria-valuemax="100" style="width:50%">
			50%
				</div>
    		</div>
    		<br>
	    	<input type="button" class="btn btn-warning openBtn" style="color: white" value="상세정보 보기">
	
	</div>
</div>
<%}%>
</div><!-- list -->
</div><!-- container -->



</body>
</html>