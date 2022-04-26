<%@page import="java.util.List"%>
<%@page import="vlog.vo.FoVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>펀딩올림리스트(보육원관리자용)</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
body{
	background-color: #FFF0F0;
}
h1{
	text-align: center
}
img{
	width: 230px;
	height: 230px; 
}
#infinity{
/* 	border:2px solid green; */
	margin-left:20px;
	display: inline-block;
	padding-bottom: 20px;
	padding-top: 20px;
}
#container{
/* 	border: 4px solid red; */
	margin: 0px auto;
	width: 1225px;
}

#list{
/* 	border: 2px solid blue; */
	margin: 0px auto;
	height: 70%;
}

#content{
	text-align:center;
	width: 230px;
}

#d1{
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
}
#fo_no{
	display: none;
}
.btn-success{
	margin: 20px;
}

</style>


<script type="text/javascript"> 
$(function(){
	$(document).on('click','.openBtn',function(){
		var fo_no=$(this).parent().find('#fo_no').text();
// 		alert("올림번호는 : "+fo_no);
		location.href="<%=request.getContextPath()%>/fundDetailolim.do?fo_no="+fo_no;
	});
});
 </script>
</head>	


<body>
<%List<FoVO>list= (List<FoVO>)request.getAttribute("folist");%>


<div id='container'>
<a href="<%=request.getContextPath()%>/myPage/orp.jsp"><button class='btn btn-success'>마이페이지로</button></a>
<div id='list'>
<%for(int i=0; i<list.size(); i++){ %>
<div id=infinity class="alert alert-success">
	   <div id="content">
			<div>
			<div id='fo_no'><%=list.get(i).getFo_no()%></div>
			<div id=d1><span style="font-weight: bold;">펀딩명 : </span><%=list.get(i).getFo_title() %></div>
			<div id=d1><span style="font-weight: bold;">펀딩상품 : </span><%=list.get(i).getFo_rprod() %></div>
			<div id=d1><span style="font-weight: bold;">신청자 : </span><%=list.get(i).getStd_id() %></div>
			<hr>
			<div id=d1><%=list.get(i).getFo_cont()%></div>
			<div id=d1><span style="font-weight: bold;">작성일 : </span><%=list.get(i).getFo_date() %></div>
			</div>
			
			<button class="openBtn">상세보기</button>
	  </div><!--content-->
	  
</div><!--infinity-->

			
<%}%>
</div><!-- list -->
</div>


</body>
</html>