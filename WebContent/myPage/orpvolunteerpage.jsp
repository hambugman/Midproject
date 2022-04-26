<%@page import="vlog.vo.jjimVo"%>
<%@page import="vlog.vo.CommonVO"%>
<%@page import="vlog.vo.OrpVo"%>
<%@page import="vlog.vo.volunVo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gothic+A1&family=Noto+Sans+KR&display=swap" rel="stylesheet">
<title>보육원 봉사활동 확인</title>
<style>
*{
	font-family: 'Noto Sans KR', sans-serif;
}
body{
	background: #FFF0F0;
	margin: 20px 0px 0px 30px;
}
.nww{
	margin-top: 20px;
	font-size: 28px;
}
.qhddd{
	font-size: 28px;
	margin-top: 40px;
}
table{
	font-size: 1.2em;
}
th{
	padding: 7px;
	text-align: center;
}
td{
	padding: 7px 14px;
	text-align: center;
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

</style>
</head>
<body>
<%
	//세션에서 로그인한 계정 불러오기
	OrpVo login = (OrpVo)session.getAttribute("loginOrp"); //보육원로그인
	CommonVO com = (CommonVO)session.getAttribute("loginCommon");
	//세션에서  불러오기
	List<volunVo> orpList = (List<volunVo>)session.getAttribute("volunOrp"); //보육원 봉사활동 내역
	List<volunVo> volunList = (List<volunVo>)session.getAttribute("volunList"); //일반회원 봉사활동 내역
	List<jjimVo> jjimList = (List<jjimVo>)session.getAttribute("jjimList"); //일반회원 관심보육원 내역
%>
<%
	if(login != null){ //보육원 로그인 상태
%>
<div>
	<button><a href="../myPage/orp.jsp">마이페이지 목록으로 돌아가기</a></button>
	<div id="volun">
		<p class="qhddd">봉사활동 신청 내역</p>
		<table class="table">
			<tr>
				<th>아이디</th>
				<th>이름</th>
				<th>봉사활동 날짜</th>
				<th>신청 날짜</th>
			</tr>
			<%
				if(orpList.size() != 0){
					for(int i = 0; i < orpList.size(); i++){
						volunVo vo = orpList.get(i);
			%>
			<tr>
				<td><%=vo.getGen_id() %></td>
				<td><%=vo.getGen_name() %></td>
				<td><%=vo.getVolun_date().substring(0,10) %></td>
				<td><%=vo.getVolun_push().substring(0,10) %></td>
			</tr>
			<% 
					}
				} else{
			%>
				<tr>
					<td colspan="4">
						아직 봉사활동을 신청한 사람이 없습니다.
					</td>
				</tr>
			<% 
				}
			%>
		</table>
	</div>
</div>
<%
	} else if(com != null){ //일반회원 로그인 상태
%>

<div>
<button><a href="<%=request.getContextPath()%>/Commonselect">마이페이지 목록으로 돌아가기</a></button>
	<div id="jjim">
		<p class="nww">관심 보육원</p>

<%
			if(jjimList.size() != 0){
				for(int i = 0; i < jjimList.size(); i++){
					jjimVo jjim = jjimList.get(i);
%>
		<ul>
			<li><%=jjim.getOrp_name() %></li>
		</ul>
<%
				}
			}else{
%>
		<h5>아직 관심보육원이 없습니다.</h5>
<%
			}
%>
	</div>
	<div id="volunCom">
		<p class="qhddd">봉사활동 신청내역</p>
		<table class="table">
			<tr>
				<th>보육원</th>
				<th>봉사활동 날짜</th>
				<th>신청 날짜</th>
			</tr>
<%
		if(volunList.size() != 0){
			for(int i =0; i < volunList.size(); i++){
				volunVo vol = volunList.get(i);
%>
			<tr>
				<td><%= vol.getOrp_name() %></td>
				<td><%= vol.getVolun_date().substring(0, 10) %></td>
				<td><%= vol.getVolun_push().substring(0, 10) %></td>
			</tr>
<%
			}
		} else {
%>
			<tr>
				<td colspan="3">
					아직 신청한 봉사활동이 없습니다.
				</td>
			</tr>
<%
		}
%>
		</table>
	</div>
</div>

<% 
	}
%>


</body>
</html>