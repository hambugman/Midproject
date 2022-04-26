<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>ShareJoinPage</title>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
<style>

button{
   background: #F57878;
   border-radius: 100px;
   width: 140px;
   height: 42px;
   float: right;
   font-weight: bold;
   border: none;
}

button:hover {
   background: #FFE6E6;
}



iframe{
   margin-left:50px;
   text-align : center;
   background :	black; 
   border : none;
   margin-top :15px;
   width: 100%;
   height:1500px;
}
 
 
body {
    font-family: "맑은 고딕"
}

#mask {
    position: absolute;
    left: 0;
    top: 0;
    z-index: 999;
    background-color: #000000;
    display: none; }

.layerpop {
    display: none;
    z-index: 1000;
    border: 2px solid #ccc;
    background: #fff;
    cursor: move; }

.layerpop_area .title {
    padding: 10px 10px 10px 10px;
    border: 0px solid #aaaaaa;
    background: #f1f1f1;
    color: #3eb0ce;
    font-size: 1.3em;
    font-weight: bold;
    line-height: 24px; }

.layerpop_area .layerpop_close {
    width: 25px;
    height: 25px;
    display: block;
    position: absolute;
    top: 10px;
    right: 10px;
    background: transparent url('btn_exit_off.png') no-repeat; }

.layerpop_area .layerpop_close:hover {
    background: transparent url('btn_exit_on.png') no-repeat;
    cursor: pointer; }

.layerpop_area .content {
    width: 96%;    
    margin: 2%;
    color: #828282; }
#backbtn{
	float: right;
}
 
</style>
<script>

    function wrapWindowByMask() {
        //화면의 높이와 너비를 구한다.
        var maskHeight = $(document).height(); 
        var maskWidth = $(window).width();

        //문서영역의 크기 
        console.log( "document 사이즈:"+ $(document).width() + "*" + $(document).height()); 
        //브라우저에서 문서가 보여지는 영역의 크기
        console.log( "window 사이즈:"+ $(window).width() + "*" + $(window).height());        

        //마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
        $('#mask').css({
            'width' : maskWidth,
            'height' : maskHeight
        });

        //애니메이션 효과
        //$('#mask').fadeIn(1000);      
        $('#mask').fadeTo("slow", 0.5);
    }

    function popupOpen() {
        $('.layerpop').css("position", "absolute");
        //영역 가운에데 레이어를 뛰우기 위해 위치 계산 
        $('.layerpop').css("top",(($(window).height() - $('.layerpop').outerHeight()) / 2) + $(window).scrollTop());
        $('.layerpop').css("left",(($(window).width() - $('.layerpop').outerWidth()) / 2) + $(window).scrollLeft());
        $('.layerpop').draggable();
        $('#layerbox').show();
    }

    function popupClose() {
        $('#layerbox').hide();
        $('#mask').hide();
    }

    function goDetail() {

        /*팝업 오픈전 별도의 작업이 있을경우 구현*/ 

        popupOpen(); //레이어 팝업창 오픈 
        wrapWindowByMask(); //화면 마스크 효과 
    }

</script>
</head>
<body>

<button id="noticeBoard" onClick="javascript:goDetail('테스트');" ><a target="ifr" >나눔게시판 사용방법</a></button>

    <!-- 팝업뜰때 배경 -->
    <div id="mask"></div>

    <!--Popup Start -->
    <div id="layerbox" class="layerpop"
        style="width: 700px; height: 350px;">
        <article class="layerpop_area">
        <div class="title">나눔게시판 사용방법</div>
        <a href="javascript:popupClose();" class="layerpop_close"
            id="layerbox_close"></a> <br>
        <div class="content">
        1. 필요하지 않은 물품을 나눔하는 게시판입니다 <br/>
        2. 나눔등록은 '나눔참여하기'버튼을 통해 가능합니다.!<br/>
        3. 나눔참여는 일반회원들만 가능합니다.<br/>
        4. 나눔리스트의 물건은 신청하기를 통해 신청할 수 있습니다.<br/>
        5. 나눔 신청은 보육원 구성원들만 가능합니다.!<br/>
        <br/>
                사용하지 않는 물건을 통해 따듯한 마음을 전해보세요 ~~~~ : ) <br/>
        <br/>
        </div>
        </article>
    </div>
  
<section>
<IFRAME name="ifr" src="<%=request.getContextPath() %>/sharePage/NanumList.do"></IFRAME>
</section>

</body>
</html>