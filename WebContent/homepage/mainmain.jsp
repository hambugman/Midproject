<%@page import="vlog.vo.OrpVo"%>
<%@page import="vlog.vo.CommonVO"%>
<%@page import="vlog.vo.ShareVO"%>
<%@page import="vlog.vo.FileVO"%>
<%@page import="java.util.List"%>
<%@page import="vlog.vo.StudentVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../js/comboard.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/Vlog/css/main.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gaegu&display=swap" rel="stylesheet">
<style type="text/css">
.crystal{
display: none;

}

img{
	float :left;
	width: 15%;
	height: 120px;
	margin-left: 20px;
	border: 2px dashed #CC6666;
	padding : 10px;
	margin-bottom: 5px;
}
#free{
	width : 100%;
	height: 100%;
}
.p4{
	margin : 20px;
}
h4{
	margin : 20px;
}
.repl{
	border : 1px solid black;
	margin :5px; 
}
.p2{
	position: relative;
	left: 80%;
}



button {
   cursor: pointer;
   margin-right: 10px;
   border-radius: 50px;
   width :150px;
   height :35px;
   border : 2px solid #993333;
   font-weight: bold;
   background: #FFF0F0;
   color: #993333;

}
button:hover {
	
   text-decoration-line : none;
   background: #CC6666;
   color:#993333;
}
#nanumBtn,#fundBtn{
	float: right;
	margin-top: 15px;
	text-decoration-line : none;
	background: #FFF0F0;
	margin-right: 20px;
	width: 30px;
	height: 30px;
	border-radius: 30px;
	
	
}
#nanumBtn:hover{
   background: #CC6666;
   color:#993333;
}
#fundBtn:hover{
   background: #CC6666;
   color:#993333;
}
a{
   color :#7E4218;

}
#besttitle{
	margin-left: 35%;
}
h2{
	margin-left : 15%;
	font-family: 'Gaegu', cursive;
}

img {
	margin-top:20px;
	wigth: 100px;
	height: 220px;
	border-radius : 10%;
	
}
#miri{
	margin-top:15px;
	margin-left: 20px;
}
#modifyform{
	display: none;
}

</style>
<script type="text/javascript">
reply = { };
currentPage = 1;

comlist();
bestcomlist();
mainNanum();
mainFund();
<%
StudentVO vo = (StudentVO)session.getAttribute("loginStd");  
CommonVO comvo = (CommonVO)session.getAttribute("loginCommon");
OrpVo orpvo = (OrpVo)session.getAttribute("loginOrp");
%>

$(function(){
	//???????????? ????????? ??? ?????? ???????????? ??????????????? ?????????
	$(document).on('click','#free tr',function(){
	<%
	if(comvo!=null){
		//??????????????? ????????? ?????? ???
	%>
		alert('??????????????? ????????????.');
	<% 
	}else if(vo!=null){
	%>
		idxvalue=$(this).attr('idx');
		idx=$(this).attr('idx');
		alert('????????? idx : ' +idx);
		$.ajax({
			url : '<%=request.getContextPath()%>/DetailBoard.do',
			data : {'idxvalue' : idxvalue, 'idx' : idx},
			dataType : 'json',
			type : 'post',
			success : function(res){                                   
				code= '<div class="container">                         ';
				code+='  <div class="panel panel-default">             ';
				code+='    <div class="panel-heading"><h4>'+res.title+'</h4><p>'+res.id+'</p><p>'+res.date+'<span id="spanhit">????????? : '+res.hit+'</span></p></div> ';
				code+='    <div class="panel-body">'+res.cont+'</div> ';
				code+='   <hr> <h4> <??????> </h4> ';
			    code += '         <p class="p4">                                                      ';
				code += '           <textarea rows="" cols="100"></textarea>                          ';
				code += '           <input idx="' + res.num + '" type="button" value="?????? " name="reply" class="action">     ';
				code += '         </p>                                                                ';
				code+='  </div>                                        ';
				code+='</div>                                          ';
				$('body').html(code);
			}
		})
		
		//??????list ????????? ?????????
		replyList(this);
		
	<% } %>
	})
	
	$(document).on('click','.p4 input[name=reply]',function(){
		text =  $(this).prev().val();
		 console.log(text);
		 reply.name = '??????';
		 reply.bonum = idx;
		 reply.cont = text;
		 
		 replyInsert(this);
		 $(this).prev().val("");
	})
	
	$(document).on('click','.p4 .p2 input[name=r_delete]',function(){
		var idx=$(this).attr('idx');
// 		alert(idx + "?????? ????????? ???????????????");
		deleteReply(this,idx);
	})
	
	$(document).on('click', '.p4 .p2 input[name=r_modify]',function(){
		alert('????????? ??? ?????? ????????? ????????? ????????? ???????????? ?????????.');
	})
	
	
})

function start(stb){

	//???????????? ???????????? ??????
	eb=stb;
	stb.style.display = "none";
	
	firstimg = document.getElementsByTagName('img'); 
	for(i=0; i<firstimg.length ;i++){
		firstimg[i].style.border = "none";
	}
		
	parent = document.getElementById('turn');
	
	idx = setInterval(function(){
		child = parent.firstChild;
		parent.removeChild(child);
		parent.appendChild(child);
	},1000)	
}

</script>

</head>
<body>

<section id="main">
     <article id="article1">
        <iframe src="<%=request.getContextPath() %>/banner/banneriframe.jsp" name="ifr" scrolling = "no">
        </iframe>
     </article>
</section>
<br><h2>??????????????? <span id='besttitle'>????????? ?????????</span></h2>
<br>
<div id="leftboard">
	
</div>

<div id="rightboard">
	<table id='best' border="1">
		
	</table>
</div>


<div id = "funding">
<!-- 	append??? ????????? ???????????? ????????? -->
<button type="button" id="miri">???????????????</button>
<button id="fundBtn"><a href="<%=request.getContextPath() %>/fund/fundmain.jsp">+</a></button>
<div class="box">
<div id="fund">

</div>
</div>
</div>



<div id = "nanum">


<button id="nanumBtn" ><a href="<%=request.getContextPath() %>/sharePage/sharemain.jsp" >+</a></button>
<!-- 	append??? ????????? ???????????? -->

<button type="button" id="miri" >???????????????</button>
<!-- onclick="start(this)" -->
<div class="box">
<div id="turn">

</div>
 
</div>


</div>





</body>
</html>