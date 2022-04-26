<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{
	width: 90%;
	height: 2000px;
}
header{
	text-align: right;
	width : auto;
	height: 40px;
	font-size: 13px;
	padding : 1px;
	margin : 4px;
}
header li{
	float: right;
	margin-left: 10px;
	text-decoration: none;
	list-style: none;
	white-space: pre-wrap;
}
header a{
	text-decoration: none;
	color: black;
}
nav{
	clear : both;
	margin : 10px;
	margin-bottom: 60px;
	padding-left: 100px;
	font-size: 20px;
}
nav li{
	float: left;
	margin-left: 10px;
	text-decoration: none;
	list-style: none;
	white-space: pre-wrap;
}
nav a {
	text-decoration: none;
	color: black;
}
#main{
	width : 100%;
	padding-left: 100px;
}
#article1{
	width : 80%;
	height: 80%;
	border-radius: 40px;
}
iframe{
	border-radius: 40px;
	width : 100%;
	height: 400px;
}







footer{
	clear : both;
	height: 40px;
	background: #120A2A;
	border-radius : 30px;
	text-align: center;
	font : 17px;
	padding-top: 10px;
}

</style>

<script type="text/javascript">

</script>

</head>

<body>

<header>
		<ul>
            <li><a href="서블릿들어감">쪽지</a>     </li>
            <li><a href="서블릿들어감">회원가입    |</a></li>
            <li><a href="서블릿들어감">로그인    |</a></li>
        </ul>
</header>
   
<nav>
        <ul>
            <li><a href="main.html">Vlog 타인을 위한 기록   </a>     </li>
            <li><a href="서블릿들어감">봉사활동   </a></li>
            <li><a href="서블릿들어감">보육원 찾기   </a></li>
            <li><a href="서블릿들어감">공백  </a></li>
        </ul>
</nav>
<section id="main">
     <article id="article1">
     <form id="mainForm" name="mainForm" action="/uaptm010/selectMain.do" method="post">
        <div id="container_id" class="area">
			<section class="login_group">
				<div class="promote">
					<ul class="bxslider">
						<li class="promote_b">
							<div class="size_set">
								<p class="promote_a_title"><b>당신의 취업이룸</b>을<br> 응원합니다.</p>
								<p class="promote_a_sub">더 나은 일자리를 구하도록 제공합니다.<br>취업이룸에서 이루세요.</p>
							</div>
						</li>
						<li class="promote_a">
							<div class="size_set">
								<p class="promote_a_title">맞춤형 <b>취업지원</b><br> <b>소득지원 혜택</b>까지</p>
								<p class="promote_a_sub">더 나은 일자리를 구하도록 제공합니다.<br>취업이룸에서 이루세요.</p>
							</div>
						</li>
					</ul>
				</div><!-- //promote -->
			</section><!-- //login_group -->
		</div>
	</form>
     </article>
</section>

<footer>
@copyright 2021 yeah~~~~
</footer>
</body>
</html>