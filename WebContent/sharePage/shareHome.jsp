<%@page import="vlog.vo.StudentVO"%>
<%@page import="vlog.vo.SharejoinVO"%>
<%@page import="vlog.vo.CommonVO"%>
<%@page import="vlog.vo.ApplyVO"%>
<%@page import="vlog.vo.FileVO"%>
<%@page import="java.util.List"%>
<%@page import="vlog.vo.ShareVO"%>
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
<title>나눔리스트</title>
<style>

div{
    margin-top :10px;
	float :left;
	width : 17.5%;
	height : 400px;
	margin-left : 35px;
	margin-bottom: 40px; 
	border : 3px dotted #F08A8A;
	text-align: center;
}
img{
	margin-top:20px;
	width : 280px;
	height : 230px;
}
h4{
	margin-left :50px;
    width : 200px;
	margin-top : 20px;
	
}
#btn1{
	float :none;
	margin-top:20px; 
	margin-left: 50px;
	border: 3px dashed #F57878;
	
	color: #B24040;
}

#btn1:hover {
	
   background: #FFE6E6;
   	color :#B24040;
}
button{
	cursor: pointer;
	margin-right: 10px;
    background: #F57878;
    border-radius: 100px;
    border : 2px solid white;
    color :white;

}
button:hover {
	
   background: #FFE6E6;
   color : black;
}

.modal{
	position: fixed;
	top : 0;
	left : 0;
	width : 100%;
	height : 100%;
	display: flex;
	justify-content: center;
	align-items: center;
	
}

.modal .bg{
	width: 100%;
	height: 100%;
	background-color: rgba(0,0,0,0.6);
}
.modalBox{
	position: absolute;
	background-color: #fff;
	width: 430px;
	height: 230px;
	padding: 15px;
}
.modalBox button{

	display: block;
	width: 80px;
 	margin: 0 auto; 
	
}
.hidden{
	display: none;
}
.openBtn{
	margin-top: 15px;
}
h3{
	margin-left: 10px;
	color:#D7A35D;
}
</style>

<%
 List<ShareVO> shareList = (List<ShareVO>)request.getAttribute("nanum");
 List<FileVO> fileList=(List<FileVO>)request.getAttribute("file");
 List<ApplyVO> applist=(List<ApplyVO>)request.getAttribute("applist");
 
 List<SharejoinVO> sharejoinList=(List<SharejoinVO>)request.getAttribute("sharejoin");
 %>
<script type="text/javascript">
$(function(){
	$('.apply').on('click','.action',function(){
		
		idx=$(this).attr('idx');
		location.href='/Vlog/NanumApply.do?share_no='+idx;
	})
})
</script>
</head>

<body>
<%
  CommonVO comvo = (CommonVO)session.getAttribute("loginCommon"); //일반회원
  StudentVO vo = (StudentVO)session.getAttribute("loginStd"); //구성원 
%>
	
	<%
	if(comvo!=null){
	%>
	<form action="<%=request.getContextPath() %>/sharePage/join.jsp" method="post" >
		<button id="btn1" type="submit"class="btn btn-outline-success">나눔참여하기</button>
	</form><br><br>
	<%
	}
	%>

	
<%
	for(int i = 0; i < shareList.size(); i++){
		int shareNo=shareList.get(i).getShare_no();
%>	

<div class="apply">
	<%
	 for(int j = 0; j < fileList.size(); j++){
		if(shareList.get(i).getShare_no() == fileList.get(j).getBoard_no()){
			String file = fileList.get(j).getFilepath();
			
		%>
	
			<img src="<%=request.getContextPath()%>/images/imageView.do?fileName=<%=file%>">	
		<%
			
		}
	}
	%>
	<h4><%=shareList.get(i).getShare_title()%></h4>
	
	<%

	boolean sameflag = false;
	if(applist!=null){
		for(int j=0; j<applist.size(); j++){
			if(shareList.get(i).getShare_no()==applist.get(j).getShare_no()){
				sameflag = true;
			}
		}
	}
	%>
	
	<button id="b1" class="openBtn">상세정보 보기</button>
	<%
	if(sameflag){
	%>
	<span>신청 완료</span>
	<%	
	}else{
		boolean sameflag2 = false;
		if(sharejoinList!=null){
			for(int j=0; j<sharejoinList.size(); j++){
				//out.println(shareList.get(i).getShare_no()+ ", " + sharejoinList.get(j).getShare_no() + "<br>");
				if(shareList.get(i).getShare_no()==sharejoinList.get(j).getShare_no()){
					sameflag2 = true;
				}
			}
		}
		
		if(sameflag2){
			%>
			<span>신청 마감</span>
			<%	
			
		}else{
			
			%>
			<button idx="<%=shareNo%>" class="action" href="#">나눔 신청하기</button>
			<%	
		}
	}

	%>
	
	
	
	<div class="modal hidden">
	  <div class="bg"></div>
	    <div class="modalBox">
	      <p><%=shareList.get(i).getShare_cont()%></p>
	        <button class="closeBtn">닫기</button>
	    </div>
	</div>

</div>

<%
		}
%>
<script>
$(function(){
	$(".openBtn").on("click", function(){
		$(this).parent().find(".modal").removeClass("hidden");
	});
	$(".closeBtn").on("click", function(){
		$(this).parents(".modal").addClass("hidden");
	});
	$(".bg").on("click", function(){
		$(".modal").addClass("hidden");
	});
	
});



// for (int s=0; s<sharejoinList.size(); s++){
// 	if(sharejoinList.get(s).getShare_no()!=0 ){
// 	%>
// 	<p>나눔 마감</p>	
// 	}else{	
	

</script>
</body>
</html>
