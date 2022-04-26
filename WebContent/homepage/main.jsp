<%@page import="vlog.vo.OrpVo"%>
<%@page import="vlog.vo.CommonVO"%>
<%@page import="vlog.vo.StudentVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mainPage</title>
<script src="../js/comboard.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/Vlog/css/main.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Oooh+Baby&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gaegu&display=swap" rel="stylesheet">
<style type="text/css">
 /* body{ 
 	padding-top : 0px; 
 	background-image: url("../images/winter2.gif"); 
 	background-repeat: no-repeat; 
 	background-size : 100%; 
 	background-attachment: scroll; 
 	white-space:nowrap;  
 } */
/* 메뉴창의 DROP-DOWN 기능 style*/
audio{
 	display: none;
}
body{
font-family: 'Gaegu', cursive;
}
header{
font-size : 17px;
}
nav{
	padding-left:100px;
}
#vlog{
	font-family: 'Oooh Baby', cursive;
	font-size: 30px;
	font-style: bold;
}
#logo{
	width : 300px;
	height: 100px;
}
#space{
	margin-left: 50px;
}
.dropbtn {
  background-color: #F06464;
  color: white;
  padding: 16px;
  font-size: 24px;
  border: none;
  border-radius: 10px;
}

.dropdown {
  position: relative;
  display: inline-block;
  border : 3px double #F06464;
  padding : 3px;
  border-radius: 10px;
  margin-left: 40px;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #FFDCDC;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}
iframe{
	width : 95%;
	height: 1500px;
	background:  #FFF0F0;;
}

.dropdown-content a:hover {background-color: #ddd;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #FF9696;}

/* 메뉴창의 DROP-DOWN 기능 style*/
</style>

<script type="text/javascript">
currentPage = 1;


</script>
</head>

<body>


<% StudentVO vo = (StudentVO)session.getAttribute("loginStd"); //구성원 
   CommonVO comvo = (CommonVO)session.getAttribute("loginCommon"); //일반회원
   OrpVo orpvo = (OrpVo)session.getAttribute("loginOrp"); // 관리자회원
	if(vo!=null){ //구성원 로그인 상태
%>
<header>
		<ul>
            <li><a href="<%=request.getContextPath() %>/LogOut.do">로그아웃</a> </li>
            <li><a href="<%=request.getContextPath()%>/Studentselect" target="ifr">마이페이지    |</a></li>
            <li><span><%=vo.getStd_name()%> 님 좋은 하루 되시길 바랍니다.  |</span></li>
        </ul>
</header>
<nav>   
<a href='<%=request.getContextPath()%>/homepage/main.jsp'><img id='logo' src ='<%=request.getContextPath() %>/images/vlog.png' alt = "로고"></a>
<div id='space' class="dropdown">
  <button class="dropbtn"><span id='vlog'>Vlog</span> 타인을 위한 기록</button>
  <div class="dropdown-content">
    <a href="<%=request.getContextPath()%>/homepage/main.jsp">홈</a>
    <a href="<%=request.getContextPath()%>/homepage/intro.jsp" target="ifr">사이트소개</a>
    <a href="<%=request.getContextPath()%>/homepage/intro2.jsp" target="ifr">의도소개</a>
  </div>
</div>
<div class="dropdown">
  <button class="dropbtn">보육원 찾기</button>
  <div class="dropdown-content">
    <a href="<%=request.getContextPath()%>/orpMap.do" target="ifr">보육원 찾아보기</a>
    <a href="<%=request.getContextPath()%>/orpList.do" target="ifr">보육원연락처</a>
  </div>
</div>
<div class="dropdown">
  <button class="dropbtn">커뮤니티 게시판</button>
  <div class="dropdown-content">
    <a href="<%=request.getContextPath() %>/board/communityboard.jsp" target="ifr">자유게시판</a>
  </div>
</div>
</nav>

<% 	}else if(comvo!=null){  //일반회원 로그인 상태%> 
<header>
		<ul>
            <li><a href="<%=request.getContextPath() %>/LogOut.do">로그아웃</a> </li>
            <li><a href="<%=request.getContextPath()%>/Commonselect" target="ifr">마이페이지    |</a></li>
            <li><span><%=comvo.getGen_name()%> 님 좋은 하루 되시길 바랍니다.  |</span></li>
        </ul>
</header>
<nav>   
<a href='<%=request.getContextPath()%>/homepage/main.jsp'><img id='logo' src ='<%=request.getContextPath() %>/images/vlog.png' alt = "로고"></a>
<div id='space' class="dropdown">
  <button class="dropbtn"><span id='vlog'>Vlog</span> 타인을 위한 기록</button>
  <div class="dropdown-content">
    <a href="<%=request.getContextPath()%>/homepage/main.jsp">홈</a>
    <a href="<%=request.getContextPath()%>/homepage/intro.jsp" target="ifr">사이트소개</a>
    <a href="<%=request.getContextPath()%>/homepage/intro2.jsp" target="ifr">의도소개</a>
  </div>
</div>
<div class="dropdown">
  <button class="dropbtn">봉사활동</button>
  <div class="dropdown-content">
    <a href="<%=request.getContextPath()%>/vboard/vmain.jsp" target="ifr">봉사활동 후기 게시판</a>
  </div>
</div>
<div class="dropdown">
  <button class="dropbtn">보육원 찾기</button>
  <div class="dropdown-content">
    <a href="<%=request.getContextPath()%>/orpMap.do" target="ifr">보육원 찾아보기</a>
    <a href="<%=request.getContextPath()%>/orpList.do" target="ifr">보육원연락처</a>
  </div>
</div>
</nav>

<% 	}else if(orpvo!=null){  //관리자 로그인 상태%>
<header>
		<ul>
          <li><a href="<%=request.getContextPath() %>/LogOut.do">로그아웃</a> </li>
          <li><a href="../myPage/orp.jsp" target="ifr">마이페이지    |</a></li>
          <li><span><%=orpvo.getOrp_name()%> 님 좋은 하루 되시길 바랍니다.  |</span></li>
        </ul>
</header>

<nav>   
<a href='<%=request.getContextPath()%>/homepage/main.jsp'><img id='logo' src ='<%=request.getContextPath() %>/images/vlog.png' alt = "로고"></a>
<div id='space' class="dropdown">
  <button class="dropbtn"><span id='vlog'>Vlog</span> 타인을 위한 기록</button>
  <div class="dropdown-content">
    <a href="<%=request.getContextPath()%>/homepage/main.jsp">홈</a>
    <a href="<%=request.getContextPath()%>/homepage/intro.jsp" target="ifr">사이트소개</a>
    <a href="<%=request.getContextPath()%>/homepage/intro2.jsp" target="ifr">의도소개</a>
  </div>
</div>
<div class="dropdown">
  <button class="dropbtn">봉사활동</button>
  <div class="dropdown-content">
    <a href="<%=request.getContextPath()%>/vboard/vmain.jsp" target="ifr">봉사활동 후기 게시판</a>
  </div>
</div>
<div class="dropdown">
  <button class="dropbtn">보육원 찾기</button>
  <div class="dropdown-content">
    <a href="<%=request.getContextPath()%>/orpMap.do" target="ifr">보육원 찾아보기</a>
    <a href="<%=request.getContextPath()%>/orpList.do" target="ifr">보육원연락처</a>
  </div>
</div>
</nav>
<% } else { %>
	<header>
		<ul>
            <li><a href="sign.jsp" target="ifr">회원가입    </a></li>
            <li><a href="loginpage.jsp" target="ifr">로그인    |</a></li>
        </ul>
</header>

<nav>   
<a href='<%=request.getContextPath()%>/homepage/main.jsp'><img id='logo' src ='<%=request.getContextPath() %>/images/vlog.png' alt = "로고"></a>
<div id='space' class="dropdown">
  <button class="dropbtn"><span id='vlog'>Vlog</span> 타인을 위한 기록</button>
  <div class="dropdown-content">
    <a href="<%=request.getContextPath()%>/homepage/main.jsp">홈</a>
    <a href="<%=request.getContextPath()%>/homepage/intro.jsp" target="ifr">사이트소개</a>
    <a href="<%=request.getContextPath()%>/homepage/intro2.jsp" target="ifr">의도소개</a>
  </div>
</div>
<div class="dropdown">
  <button class="dropbtn">봉사활동</button>
  <div class="dropdown-content">
    <a onclick="alert('로그인이 필요합니다.')" target="ifr">봉사활동 후기 게시판</a>
  
  </div>
</div>
<div class="dropdown">
  <button class="dropbtn">보육원 찾기</button>
  <div class="dropdown-content">
    <a href="<%=request.getContextPath()%>/orpMap.do" target="ifr">보육원 찾아보기</a>
    <a href="<%=request.getContextPath()%>/orpList.do" target="ifr">보육원연락처</a>
  </div>
</div>
<div class="dropdown">
  <button class="dropbtn">커뮤니티 게시판</button>
  <div class="dropdown-content">
    <a href="mainmain.jsp" onclick="alert('로그인이 필요합니다.')" target="ifr">자유게시판</a>
  </div>
</div>
</nav>
<% } %> 

<hr>
<iframe src="<%=request.getContextPath() %>/homepage/mainmain.jsp" name="ifr" scrolling = "no"> </iframe>

<footer>
@copyright 2021 yeah~~~~

	<audio controls autoplay loop>
		<source src = "<%=request.getContextPath() %>/images/audio1.mp3" type="audio/ogg">
		<source src = "<%=request.getContextPath() %>/images/audio1.mp3" type="audio/mp3">
		<source src = "<%=request.getContextPath() %>/images/audio1.mp3" type="audio/wav">
	</audio>
</footer>
</body>
</html>