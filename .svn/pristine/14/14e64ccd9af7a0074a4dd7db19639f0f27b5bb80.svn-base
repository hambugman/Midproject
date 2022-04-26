<%@page import="vlog.vo.OrpVo"%>
<%@page import="vlog.vo.orpNoVo"%>
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
  <link rel="stylesheet" href="../css/orpDetail.css" type="text/css">
  <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gothic+A1&family=Noto+Sans+KR&display=swap" rel="stylesheet">
<title>Insert title here</title>
<style type="text/css">
*{
	font-family: 'Noto Sans KR', sans-serif;
		background: #FFF0F0;
}
body{
		background: #FFF0F0;
}
	h3{
	text-align: center;
	font-size: 1.5em;
}
.ansl{
	width : 40px;
	height : 40px;
}
.tdd:link, .tdd:visited, .tdd:active{
	text-decoration: none;
	color: black;
}
#notice{
	width : 1000px;
}
table{
	margin : 30px 0px 30px 30px;
}
.aa{
	width:45px;
}
.bb{
	font-size: 22px;
}
.cc{
	width:5px;
}
.dd{
	width:150px;
}
.btn{
	margin-left: 40px;
	margin-top: 10px;
}
</style>
<script type="text/javascript">
$(function(){
	$('.bb').on('click', '.rhdwl', function(){
		idx = $(this).attr('idx');
		location.href='/Vlog/oNoticeRead.do?idx='+idx;
	})
})
</script>
</head>
<body>
<%
	List<orpNoVo> list = (List<orpNoVo>)request.getAttribute("list");
	OrpVo login = (OrpVo)session.getAttribute("loginOrp"); //보육원관리자
	OrpVo orp = (OrpVo)session.getAttribute("orp"); //선택한 보육원
%>
<%
	if(login != null){
		if(login.getOrp_no().equals(orp.getOrp_no())){
%>
<form action="<%=request.getContextPath() %>/orpDetail/onWrite.jsp" method="post" target="detail">
	<button type="submit" class="btn btn-outline-danger">공지 작성</button>
</form>
<%
		}
	}
%>


<div id="notice">
	<table class="table">
		<%
		if(list.size() != 0){
			for(int i = 0; i < list.size(); i++){
				orpNoVo vo = list.get(i);
				
		%>
			<tr>
				<td class="aa">
				  	<img class="ansl" src="/Vlog/images/공지.png" alt="[공지]" />
				</td>
				<td class="bb">
				  <a idx="<%=vo.getOnotice_no() %>" class="rhdwl tdd" href="#">
				  	<%=vo.getOnotice_title() %>
				  </a>
				</td>
				<td class="cc">
					<img src="https://ssl.nexon.com/s2/game/maplestory/renewal/common/sub_date_new.png" alt="시계 아이콘" />
				</td>
				<td class="dd">
					<%=vo.getOnotice_date().substring(0, 10) %>                                 
				</td>
			</tr>
		<%
			}
		} else{
			
		%>
			<br>
			<br>
			<br>
			<br>
			<br>
			<h3>아직 등록된 공지사항이 없습니다.</h3>	
		<%
		}
		%>
		<%%>
		<%%>
	</table>
</div>


</body>
</html>