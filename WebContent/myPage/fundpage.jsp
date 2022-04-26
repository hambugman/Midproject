<%@page import="vlog.vo.OrpVo"%>
<%@page import="vlog.vo.CommonVO"%>
<%@page import="java.util.List"%>
<%@page import="java.nio.channels.SeekableByteChannel"%>
<%@page import="vlog.vo.StudentVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
body{
	background-color: #FFF0F0;
}

button{
	width: 350px;
	height: 50px;
	font-weight: bold;
	background-color: #FFDCDC;
	color: black;
	font-size: 19px;
	border: none;
}

#content{
	margin-left :200px;
	text-align: center;
}

</style>
</head>
<body>
<%
StudentVO svo = (StudentVO)session.getAttribute("loginStd");	//구성원
CommonVO comvo = (CommonVO)session.getAttribute("loginCommon");	//일반회원
OrpVo orpvo = (OrpVo)session.getAttribute("loginOrp");

if(svo!=null){		//구성원 로그인
%>
<br><br>
<div id='content'>
<a href="<%=request.getContextPath()%>/fund/fundapply.jsp"><button>펀딩 올리미 신청 ></button></a>
<a href="<%=request.getContextPath()%>/Studentselect"><button>뒤로 가기 ></button></a>
</div>
<%
}
%>


<%
if(comvo!=null){ //일반회원 로그인
%>
<div id='content'>
<a href="<%=request.getContextPath()%>/homepage/mainmain.jsp"><button>내가한 펀딩확인(미구현) ></button></a>
<a href="<%=request.getContextPath()%>/Commonselect"><button>뒤로 가기 ></button></a>
</div>
<%
}
 %> 



<%
if(orpvo!=null){	//관리자로 로그인했을시
%>
<br><br>
<div id='content'>
<a href="<%=request.getContextPath()%>/fund/managerFundmain.jsp"><button>펀딩리스트관리하기(등록/삭제) ></button></a>
<a href="<%=request.getContextPath()%>/fund/olimmain.jsp"><button>펀딩신청확인 ></button></a>
<a href="<%=request.getContextPath()%>/myPage/orp.jsp"><button>뒤로 가기 ></button></a>
</div>
<%
}
%>

</body>
</html>