<%@page import="vlog.vo.CommonVO"%>
<%@page import="java.util.List"%>
<%@page import="vlog.vo.arVo"%>
<%@page import="vlog.vo.OrpVo"%>
<%@page import="vlog.vo.askVo"%>
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
<title>문의사항 상세</title>
<style type="text/css">
*{
	font-family: 'Noto Sans KR', sans-serif;
		background: #FFF0F0;
}
  body{
		background: #FFF0F0;
}
  .dkdlel{
  	text-align: right;
  	background: #F7F2FF;
  	padding-right: 80px;
  }
  #dfff{
  	padding : 30px 0px 30px 50px;
  	border-top : 0.5px solid black;
  	border-bottom: 0.5px solid gray;
  	background: #F7F2FF;
  }
  #ajsl{
  	background: #F7F2FF;
   	font-size: 38px;
  }
  #sodyd{
    padding : 20px 0px 30px 50px;
  	border-bottom: 0.5px solid black;
  	font-size : 24px;
  }
  #ekkkk{
  	padding : 10px 0px 0px 30px;
  	font-size: 18px;
  }
  .tkrwp{
  	padding : 20px 0px 30px 50px;
  	border-bottom: 0.5px solid black;
  	font-size : 24px;
  }
    .btn{
  	margin-left : 40px;
  }
  #shekq{
  	padding-left: 30px;
  }
</style>
</head>
<body>
<script>
$(function(){
	$(document).on('click', '.gkfn', function(){
		idx = $(this).attr('idx');
		location.href='/Vlog/arDetail.do?idx='+idx;
	})
})
</script>

<%
//jsp에서는 session이 자동으로 생성되기때문에
//HttpSession session = request.getSession();을 선언하지 않아도 됨.(서블릿에서는 해야함)
	askVo ask = (askVo)session.getAttribute("ask");
	
	OrpVo orp = (OrpVo)session.getAttribute("orp");
	OrpVo login = (OrpVo)session.getAttribute("loginOrp");
	CommonVO com = (CommonVO)session.getAttribute("loginCommon");
	List<arVo> arList = (List<arVo>)session.getAttribute("askRepl");
	String cont = ask.getAsk_cont();
	cont = cont.replaceAll("\r", "").replaceAll("\n", "<br>");
	String genId = ask.getGen_id(); //문의사항 쓴 아이디
%>

<div id="dfff">
	<p id="ajsl"><%=ask.getAsk_title() %></p>
	<p class="dkdlel"><%=ask.getGen_id() %></p>
</div>

<div>
	<p id="sodyd"><%=cont %></p>
</div>
<hr>

<div class="qRepl">
	<p id="ekkkk">↳답변</p>
	<%
		if(arList.size() != 0){
			for(int i = 0; i < arList.size(); i++){
				arVo vo = arList.get(i);
	%>
	<div class="ekq">
		<p class="tkrwp"><%=vo.getRa_cont().replaceAll("\r", "").replaceAll("\n", "<br>") %></p>
	</div>
	<%
				if(login != null){
					if(login.getOrp_no().equals(orp.getOrp_no())){
	%>
		<form action="<%=request.getContextPath() %>/orpDetail/arUpdate.jsp" method="post" target="detail">
			<button type="submit" class="btn btn-outline-danger gkfn">답변수정</button>
		</form>
	<% 
					}
				}
	%>
	<%
			}
		}else{
	%>
	
	<p id="shekq">답변이 없습니다.</p>
	<% 
		}
	%>
</div>

<%
	if(login != null){
		if(login.getOrp_no().equals(orp.getOrp_no())){
			if(arList.size() < 1){
			
%>
	<form action="<%=request.getContextPath() %>/orpDetail/arInsert.jsp" method="post" target="detail">
		<button type="submit" class="btn btn-outline-danger">답변하기</button>
	</form>
<%
			}
		}
	}
%>
<%
	if(com != null){
		if(genId.equals(com.getGen_id())){
%>
	<form action="<%=request.getContextPath() %>/orpDetail/askUpdate.jsp" method="post" target="detail">
		<button type="submit" class="btn btn-outline-danger">수정하기</button>
	</form>
<%
		}
	}
%>

</body>
</html>