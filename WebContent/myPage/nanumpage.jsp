<%@page import="vlog.vo.ShareVO"%>
<%@page import="vlog.vo.CommonVO"%>
<%@page import="vlog.vo.SharejoinVO"%>
<%@page import="java.util.List"%>
<%@page import="vlog.vo.StudentVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
button{
	width: 350px;
	height: 50px;
	font-weight: bold;
	background-color: #FFDCDC;
	color: black;
	font-size: 19px;
	border: none;
}
</style>
</head>

<body>
<% 
StudentVO svo = (StudentVO)session.getAttribute("loginStd"); //구성원 
List<SharejoinVO> sjoinlist=(List<SharejoinVO>)request.getAttribute("joinlist");

CommonVO comvo = (CommonVO)session.getAttribute("loginCommon"); //일반회원
List<ShareVO> cjoinlist=(List<ShareVO>)request.getAttribute("comnanumjoinlist"); //일반회원들의 나눔신청내역을 불러오기 위해서 

if(svo!=null){  //구성원으로 로그인 되어있을경우 
%>

<form id="nanum">
<button><a href="<%=request.getContextPath()%>/Studentselect">마이페이지 목록으로 돌아가기</a></button>
<fieldset>
  <legend>나눔</legend>
<%
int count=0; //나눔신청횟수를 세는 변수 

	if (sjoinlist != null) {
		for (int i = 0; i <sjoinlist.size() ; i++) {
			if(svo.getStd_id().equals(sjoinlist.get(i).getStd_id())){
				
				count++;
			}
		}
	}

%>

<p>나눔참여횟수 : <%=count%></p>
</fieldset>

</form>


<%
}

if(comvo!=null){
%>

<form >
<button><a href="<%=request.getContextPath()%>/Commonselect">마이페이지 목록으로 돌아가기</a></button>
<fieldset>
  <legend>나눔</legend>
  
<%
int joincount=0; //나눔신청횟수를 세는 변수 

	if (cjoinlist != null) {
		for (int i = 0; i <cjoinlist.size() ; i++) {
			if(comvo.getGen_id().equals(cjoinlist.get(i).getGen_id())){
				
				joincount++;
			}
		}
	}

%>

<p>나눔 게시글 올린횟수 : <%=joincount %>
</fieldset>
</form>


<%
}
%>

</body>
</html>