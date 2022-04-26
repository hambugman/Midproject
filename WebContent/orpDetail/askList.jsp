<%@page import="vlog.vo.CommonVO"%>
<%@page import="vlog.vo.askVo"%>
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
<script type="text/javascript">
$(function(){
	$('.bb').on('click', '.ansdml', function(){
		idx = $(this).attr('idx');
		location.href='/Vlog/askRead.do?idx='+idx;
	})
})
</script>
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
#ask{
	width: 1000px;
}
.btn{
	margin-left: 40px;
	margin-top: 10px;
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
	width : 100px;
}
.dd{
	width:5px;
}
.ee{
	width:150px;
}
</style>
</head>
<body>
<%
	List<askVo> list = (List<askVo>)request.getAttribute("list");
	CommonVO comvo = (CommonVO)session.getAttribute("loginCommon"); //일반회원
%>
<%
	if(comvo != null){
		
%>
<form action="<%=request.getContextPath() %>/orpDetail/askWrite.jsp" method="post" target="detail">
	<button type="submit" class="btn btn-outline-danger">문의글 작성</button>
</form>
<%
	}
%>

<div id="ask">
	<table class="table">
		<%
		if(list.size() != 0){
			for(int i=0; i < list.size(); i++){
				askVo vo = list.get(i);
		%>
			<tr>
				<td class="aa">
				   <img class="ansl" src="/Vlog/images/문의.png" alt="[문의]" />
				</td>
				<td class="bb">
				  <a idx="<%=vo.getAsk_no() %>" class="ansdml tdd" href="#">
				  <%=vo.getAsk_title() %>
				  </a>
				</td>
				<td class="cc">
						<dd><%=vo.getGen_id() %></dd>
				</td>
				<td class="dd">
					<img src="https://ssl.nexon.com/s2/game/maplestory/renewal/common/sub_date_new.png" alt="시계 아이콘" />
				</td>
				<td class="ee">
					<%=vo.getAsk_date().substring(0, 10) %>
				</td>
				</div>
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
			<h3>아직 등록된 문의사항이 없습니다.</h3>		
		<%
		}
		%>
	</table>
</div>

</body>
</html>