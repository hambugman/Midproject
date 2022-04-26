
function deleteBoard(idx){
	$.ajax({
		url : '/Vlog/BoardDelete.do',
		type : "get",
		data : {"num" : idx},
		success : function(res){
			if(res.sw =="실패"){
				alert(res.sw + "! 본인의 게시물이 아닙니다.");
			}else{
				alert(res.sw);
			}
			//currentPage 와  totalPage 를 비교 
		   	
			if(res.sw == "성공") {
			    
				if(currentPage > res.tpage) currentPage = res.tpage;
			
			    //다시 전체 리스트 중 currentPage의 리스트을  출력
			    listPage(currentPage);
			}
			
		},
		error : function(xhr){
//			alert("상태 :" + xhr.status);
		},
		dataType : 'json'
	})
}



function updateHit(atitle){
	
	$.ajax({
		url :'/Vlog/ComBoardHit.do',
		data : {"num" : idx},
		type : 'post',
		success : function(res){
			//alert(res.sw);
			
			//화면에서 수정 
			 hit = $(atitle).parents('.panel').find('.hit').text();
			 hit =   parseInt(hit) + 1;
			 
			 $(atitle).parents('.panel').find('.hit').text(hit) ;
			
		},
		error : function(xhr){
//			alert("상태 : " + xhr.status);
		},
		dataType : 'json'
	})
}

function deleteReply(del,idx){
	alert('deleteReply의 '+idx);
	$.ajax({
		url : '/Vlog/ReplyComDelete.do',
		type : 'get',
		data : {"renum"  : idx},
		success : function(res){
			alert(res.sw);
			$(del).parents('.repl').remove();
		},
		error : function(xhr){
//			alert("delelteReply상태 : " + xhr.status);
		},
		dataType : 'json'
		
	})
	
}
function updateReply(){
	$.ajax({
		url : '/Vlog/ReplyComUpdate.do',
		type : 'post',
		data : reply,  //cont, renum
		success : function(res){
			alert(res.sw);
		},
		error : function(xhr){
//			alert("updateReply상태 : " + xhr.status);
		},
		dataType : 'json'
	})
}

function replyList(brep){ //brep : 댓글등록버튼  또는 제목클릭 
	//idx의 해당하는 댓글을 가져온다 
	idx=$(brep).attr('idx');
//	alert('comboard.js의 replyList  ' + idx);
	$.ajax({
		 url : '/Vlog/ReplyComList.do',
		 type : 'get',
		 data : {'idx' : idx},
		 success : function(res){
			 rcode ="";
			 $('.p4 .repl').remove();
			 
			$.each(res, function(i, v){ 
			  rcode += '      <div class="panel-body repl"> ';                                              
			  rcode += '         <p class="p1">  ';                                                    
			  rcode += '               <span class="wr">' + v.name + '</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   ';
			  rcode += '               날짜 : <span class="wd">' +v.date + '</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ';              
			  rcode += '      </p>                                                                   ';
			  rcode += '       <p class="p2">                                                        ';
			  rcode += '           <input  idx="'  + v.renum + '" type="button" name="r_modify"  class="action crystal" value="댓글수정">    ';
			  rcode += '           <input  idx="' + v.renum +'" type="button" name="r_delete"  class="action crystal" value="댓글삭제">    ';
			  rcode += '       </p>                                                                  ';
			  rcode += '<p class="p3">';
			  rcode += v.cont ;
			  rcode += '</p><br>';                 
			  rcode += '</div>' ;
			 
			})//$.each 
			 
			$('.p4').append(rcode);
		 },
		 error : function(xhr){
//			 alert("replyList상태 : " + xhr.status);
		 },
		 dataType : 'json'
	})
	
}

function  replyInsert(brep){
	$.ajax({
		url : '/Vlog/ReplyComInsert.do',
		type : 'post',
		data : reply,  //name, bonum, cont 
		success : function(res){
			//성공 - res.sw
			//댓글 리스트 출력 
			$('.p4 .repl').remove();
			replyList(brep);
		},
		error : function(xhr){
//			alert("replyInsert상태 : " + xhr.status);
		},
		dataType : 'json'
	})
}


function insertCom(){
	$.ajax({
		url : '/Vlog/InsertCom.do' ,
		data : cdata,
		type : 'post',
		success : function(res){
			
			
		},
		error : function(xhr){
			alert('작성이 완료되었습니다!');
//			location.href="/Vlog/homepage/main.jsp";
    	},
    	dataType : 'json'
	 })
	
}

function communitylist(cpage){ //커뮤니티 게시판 
//		cont = $('#cont').val();
//		title = $('#title').val();
	
	$.ajax({
		url : '/Vlog/CommunityList.do' ,
		data : { "page" : cpage},
		type : 'post',
		success : function(res){
			code="";
			$.each(res,function(i,v){
			code+='<div idx='+v.num+' class="panel panel-default panel-com">';
			code+='	<div idx='+v.num+' class="panel-heading">'+v.title+'<button type="button" id="dele">게시물 삭제</button><span id="spanhit">조회수 : '+v.hit+'</span></div>';
			code+='	<div class="panel-body">'+v.cont+'</div>';
			code+='</div>';
			})
		   $('.panel-group').html(code);
			
			 $('#pageList').empty();
			   
			   //이전버튼 만들기 
			   if(res.sp > 1) {
				  pager='<ul class="pager">';
				  pager +=' <li><a class="prev" href="#">Previous</a></li>';
				  pager +=' </ul>';
				  
				  $('#pageList').append(pager);
			   }
			
			 //페이지번호 만들기 
			  pager = '<ul class="pagination pager">';
			 for(i=res.sp; i<=res.ep; i++){
				if(currentPage == i) {
					 pager += '<li class="active"><a class="paging" href="#">' + i + '</a></li>';
				}else{
					 pager += '<li><a  class="paging" href="#">' + i + '</a></li>';
				} 
			 }
			  pager += '</ul>';
			  $('#pageList').append(pager) ;
			
			 //다음버튼 만들기 
			  if(res.ep < res.tp){
				  pager='<ul class="pager">';
				  pager +=' <li><a class="next" href="#">Next</a></li>';
				  pager +=' </ul>';
				  
				  $('#pageList').append(pager);
			  }
			
		},
		error : function(xhr){
			alert('로그인이 되어있지 않습니다. 로그인을 해주세요!');
			location.href="/Vlog/homepage/login.jsp";
    	},
    	dataType : 'json'
	 })
}


function comlist(){ //메인페이지에서 보이는 커뮤니티 리스트
	$.ajax({
		url : '/Vlog/ComList.do' ,
		type : 'post',
		success : function(res){
			code="<table border='1' id='free'>";
			
			$.each(res,function(i,v){
				
				if(i>4){
					return;
				}
				code += '<tr idx="'+v.num+'" class="freetr">';
				code += '<td>'+v.title+' </td> ';
				code += '<td>'+v.date+'</td> ';
				code += '</tr>';
			})
			code+="</table>";
			$('#leftboard').html(code);
			
		},
		error : function(xhr){
//			alert("comlist상태 : " + xhr.status);
			
    	},
    	dataType : 'json'
	 })
}//comlist

function bestcomlist(){ //메인페이지에서 보이는 베스트 커뮤니티 리스트
	$.ajax({
		url : '/Vlog/BestComList.do' ,
		type : 'post',
		success : function(res){
			code="";
			for(i = 0; i < 5; i++){
				code += '<tr class="besttr">';
				code += '<td>'+res[i].title+' </td> ';
				code += '<td>'+res[i].date+'</td> ';
				code += '</tr>';
			}
			$('#best').html(code);
		},
		error : function(xhr){
//			alert("bestcomlist상태 : " + xhr.status);
		},
		dataType : 'json'
	})
}//bestcomlist
	
function mainNanum(){ //메인페이지에서 나눔이미지 보여주는 거
	$.ajax({
		url : '/Vlog/MainNanumImage.do' ,
		type : 'post',
		success : function(res){
			image="";
			for(i = 0; i < 6; i++){
				image += '<img src="/Vlog/images/imageView.do?fileName=' + res[i].path + '">';
			}
			$('#turn').html(image);
		},
		error : function(xhr){
//			alert("상태 : " + xhr.status);
		},
		dataType : 'json'
	})
}

function mainFund(){
	$.ajax({
		url: '/Vlog/MainFundImage.do',
		type:'post',
		success : function(res){
			image="";
			for(i = 0; i < 6 ; i++){
				image += '<img src="/Vlog/images/imageView.do?fileName=' + res[i].path + '">';
			}
			$('#fund').html(image);
		},
		error : function(xhr){
//			alert("상태 : "+xhr.status);
		},
		dataType: 'json'
	})
}

