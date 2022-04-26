<%@page import="vlog.vo.OrpVo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>키워드로 장소검색하기</title>
      <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
 <style>
    .one .link {color: #7B68EE;}
    
    .two{
    	padding : 5px;
    	background: #B68CFF;
    	font-size: 1.5em;
    	border-radius:10px;
    	text-align: center;
    }
    
    .three{
    	padding : 5px;
    }
    
    #map{
    	border-radius: 40px;
    	margin-left: 10% 
    }
    
    .wnth{
    	font-size: 1.1em;
    }
    
    .qjsgh{
    	display : inline-block;
    	float: left;
    	margin-right: 15px;
    	font-size : 0.9em;
    }
    
    .clo{
    	padding : 5px;
    	display : inline-block;
    	float: left;
    	margin-left: 15px;
    }
    
    .link{
    	size: 0.6em;
    }
    
    .ekerl{
    	display : inline-block;
    	margin-left: 40%;
    	background: none;
    	margin-bottom: 5px;
    }
    
    body{
    	background:#FFF0F0;
    }
    
    .one{
    	padding-bottom: 0px;
    }
</style>

<%
	List<OrpVo> orpList = (List<OrpVo>)request.getAttribute("orpList");
%>

<script type="text/javascript" src="/Vlog/js/jquery-3.6.0.min.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gothic+A1&family=Noto+Sans+KR&display=swap" rel="stylesheet">
<style>
*{
	font-family: 'Noto Sans KR', sans-serif;
}
</style>
</head>
<body>
<div id="map" style="width:80%;height:800px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c9e0bdc30b804e58374368105e17ed12&libraries=clusterer"></script>
<script>

$(function(){
	
	$(document).on('click', '.link', function(){
		no = $(this).attr('name');
		location.href='/Vlog/orpInfo.do?no='+no;
		
	})
})


var mapContainer = document.getElementById('map'), // 지도의 중심좌표
    mapOption = { 
        center: new kakao.maps.LatLng(36.33422918041125, 127.37894782693323), // 지도의 중심좌표
        level: 7 // 지도의 확대 레벨
    }; 

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

//마커 생성 위한 좌표 만들기
var positions = [
	
	<%
		for(int i = 0; i < orpList.size(); i++){
			OrpVo vo = orpList.get(i);
			if(i > 0) out.print(",");
	%>
    {
        title: '<%=orpList.get(i).getOrp_name()%>',
        no: '<%=orpList.get(i).getOrp_no()%>',
        tel : '<%=vo.getOrp_tel()%>',
        addr : '<%=vo.getOrp_addr()%>',
        latlng: new kakao.maps.LatLng(<%=vo.getOrp_lat()%>, <%=vo.getOrp_lng()%>)
    }
	<%
		}
	%>
];

//좌표별로 마커를 생성하는 반복문
for(let i=0; i < positions.length; i++){
    var data = positions[i];
    displayMarker(data);
}

// 지도에 마커를 표시하는 함수입니다    
function displayMarker(data) { 
	//좌표별로 마커를 생성
    var marker = new kakao.maps.Marker({
        map: map,
        position: data.latlng
    });
	//마커 위에 커스텀오버레이 생성
    var overlay = new kakao.maps.CustomOverlay({
        yAnchor: 1.5,
        position: marker.getPosition()
    });
    //오버레이에 들어갈 내용
    var content = document.createElement('div');
    content.innerHTML =  '<div class="one">'+
    '						<div class="two">'+
    							data.title +
    '						</div>'+
    '							<div class="three">'+
    '							<div class="wnth">'+data.addr+'</div>'+
    '							<div class="qjsgh">'+data.tel+'</div>'+
    '                <div id="clo"><a href="#" class="link" name="'+ data.no +'">상세페이지</a></div>' + 
    '	</div>'+
    '</div>';
    
    content.style.cssText = 'background: white; border: 1px solid black; width: auto; height: auto; border-radius:10px;';
    
    //닫기버튼 눌렀을때 
    var closeBtn = document.createElement('div');
    closeBtn.innerHTML = '<div class="ekerl">'+
    '  <button type="button" class="btn btn-outline-light text-dark btn-sm">닫기</button>'+
    '	</div>';
    closeBtn.onclick = function () {
        overlay.setMap(null);
    };
    //content에 닫기버튼 추가
    content.appendChild(closeBtn);
    //오버레이에 컨텐트 추가
    overlay.setContent(content);
	//마커를 클릭했을때 오버레이 표시
    kakao.maps.event.addListener(marker, 'click', function() {
        overlay.setMap(map);
    });
}

	
</script>
</body>
</html>