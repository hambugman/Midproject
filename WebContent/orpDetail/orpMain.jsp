<%@page import="java.math.BigDecimal"%>
<%@page import="vlog.vo.jjimVo"%>
<%@page import="java.util.List"%>
<%@page import="vlog.vo.CommonVO"%>
<%@page import="vlog.vo.OrpVo"%>
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
 <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
 <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
 <link rel="stylesheet" href="../css/orpDetail.css" type="text/css">
 <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gothic+A1&family=Noto+Sans+KR&display=swap" rel="stylesheet">

<title>보육원 상세페이지</title>
<style>
*{
	font-family: 'Noto Sans KR', sans-serif;
}
body{
	background: #FFF0F0;
}
h1{
	float : left;
	margin-left : 42%;
	margin-right : 50px;
}
.orpInfo{
	margin-left: 50px;
	text-align: right;
	padding-right: 80px;
}
.addd{
	margin-top : 50px;
	margin-bottom: 5px;
}
#ul1{
	list-style-type: none;
	margin-left : 9.3%;
	
}
.li1{
	float: left;
	text-align: center;
	letter-spacing: 5px;
	background-color: #F2EAFF;
	margin: 12px 10px;
	padding: 10px;
	font-size: 1.4em;
	width : 200px;
	
  position: relative;
  display: inline-block;
  border : 3px double #E0CEFF;
  padding : 3px;
  border-radius: 10px;
}
.li2{
	float: left;
	text-align: center;
	letter-spacing: 5px;
	margin: 12px 10px;
	padding: 10px;
	font-size: 1.4em;
	width : 200px;
	
  position: relative;
  display: inline-block;
  padding : 3px;
}
section{
	clear: both;
	margin-left : 10%;
	width : 86%;
	height : 900px;
	/* border : 1px solid blue; */
}
section iframe{
	width : 100%;
	height : 900px;
	border : none;
	/* border : 1px solid green; */
}
article{
	width : 99%;
	height : auto;
	/* border : 1px solid red; */
}
.Wla{
	margin-left : 450px;
	display: inline-block;
	float : left;
}
.qhdtk{
	display: inline-block;
	float: left;
}
.gkxm{
	width : 40px;
	height : 35px;
}
.a1:link, .a1:visited, .a1:active{
	text-decoration: none;
	color: black;
}
.heart{
	padding-top: 15px;
}
/*datepicer 버튼 롤오버 시 손가락 모양 표시*/
.ui-datepicker-trigger{cursor: pointer;}
/*datepicer input 롤오버 시 손가락 모양 표시*/
.hasDatepicker{cursor: pointer;}
</style>
<%
	OrpVo vo =(OrpVo) session.getAttribute("orp");
	
	//세션에 보육원 정보 저장
	CommonVO comvo = (CommonVO)session.getAttribute("loginCommon"); //일반회원
	Object ono = session.getAttribute("jjimYN"); //찜목록있는지 확인
%>
<script>
    $(document).ready(function(){
    	if(<%=ono != null%>){
            /*웹페이지 열었을 때*/
            $("#img2").show();
            $("#img1").hide();
    	} else{
            $("#img1").show();
            $("#img2").hide();
    	}
 
            /*img1을 클릭했을 때 img2를 보여줌*/
            $("#img1").on('click', function(){
                $("#img1").hide();
                $("#img2").show();
                $.ajax({
                	url : '/Vlog/addJjim.do',
                	type : 'post',
                	error : function(xhr){
//                 		alert(xhr.status);
                	},
                	dataType : 'json'
                })
            });
 
            /*img2를 클릭했을 때 img1을 보여줌*/
            $("#img2").on('click', function(){
                $("#img1").show();
                $("#img2").hide();
                $.ajax({
                	url : '/Vlog/deleteJjim.do',
                	type : 'post',
                	error : function(xhr){
//                 		alert(xhr.status);
                	},
                	dataType : 'json'
                })
            });
            
            //봉사활동 신청버튼
            $('#applyV').on('click', function(){
    			$('#myModal').modal('show');
            })
            
            //봉사활동 신청 모달 폼
            $('#send').on('click', function(){
            	date = $('#datepicker').val();
				
            	$.ajax({
            		url:'/Vlog/volunAdd.do',
            		data : {"date" : date},
            		type : 'post',
            		success : function(res){
            			//새로고침
            			location.reload();
            		},
            		error : function(xhr){
//             			alert(xhr.status);
            		},
            		dataType : 'json'
            	})
            })
        });
</script>
</head>
<body>

<header>
	<h1><%=vo.getOrp_name() %></h1>
	<p class="orpInfo addd"><%=vo.getOrp_addr() %></p>
	<p class="orpInfo tell"><%=vo.getOrp_tel() %></p>

</header>
<br>
<nav>
	<ul id="ul1">
		<li class="li1"><a class="a1" href="<%=request.getContextPath() %>/galList.do" target="detail">갤러리</a></li>
		<li class="li1"><a class="a1" href="<%=request.getContextPath() %>/orpNoticeList.do" target="detail">공지사항</a></li>
		<li class="li1"><a class="a1" href="<%=request.getContextPath() %>/askList.do" target="detail">문의게시판</a></li>
		<li class="li1"><a class="a1" href="<%=request.getContextPath() %>/locationOrp.do" target="detail">위치</a></li>
	<%
		if(comvo != null){
	%>
  <!-- Button to Open the Modal -->
  		<li class="li2">
	<button type="button" id="applyV" class="btn btn-outline-danger" data-toggle="modal" data-target="#myModal" onclick='window.open("images/vvvvvolun.png", "_blank", "width=900 height=1000 left=470");'>
   		 봉사활동 신청
  	</button>
  	</li>
		<li class="heart">
			<img class="gkxm" id="img1" src="/Vlog/images/회색하트.png">
			<img class="gkxm" id="img2" src="/Vlog/images/빨간하트.png">
 		</li>
	<%
			}
	%>
	</ul>
</nav>

<section id="main">

	<article id="article">
		<iframe id="orpIfr" src="<%=request.getContextPath() %>/galList.do" name="detail"></iframe>
	</article>
</section>

<!-- 봉사활동 신청 모달 -->
<div class="container">
  <!-- The Modal -->
  <div class="modal" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">봉사활동 신청하기</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <form action="">
	        <div class="modal-body">
	          <p><%=vo.getOrp_name() %></p>
	          <input type="text" id="datepicker">
	          <input type="button" id="send" value="신청하기">
	        </div>
        </form>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
  </div>
  
</div>

<script>
$(function() {
    //input을 datepicker로 선언
    $("#datepicker").datepicker({
        dateFormat: 'yy-mm-dd' //Input Display Format 변경
        ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
        ,showMonthAfterYear:true //년도 먼저 나오고, 뒤에 월 표시
        ,changeYear: false //콤보박스에서 년 선택 가능
        ,changeMonth: false //콤보박스에서 월 선택 가능                
        ,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
        ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
        ,buttonImageOnly: true //기본 버튼의 회색 부분을 없애고, 이미지만 보이게 함
        ,buttonText: "선택" //버튼에 마우스 갖다 댔을 때 표시되는 텍스트                
        ,yearSuffix: "년" //달력의 년도 부분 뒤에 붙는 텍스트
        ,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'] //달력의 월 부분 텍스트
        ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip 텍스트
        ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 부분 텍스트
        ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 부분 Tooltip 텍스트
        ,minDate: "+1D" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
        ,maxDate: "+1M" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)                
    });                    
    
    //초기값을 오늘 날짜로 설정
    $('#datepicker').datepicker('setDate', '+1D'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)            
});
</script>

</body>
</html>