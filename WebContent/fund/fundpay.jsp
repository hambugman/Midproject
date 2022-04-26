<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<!-- 결재api -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>


<script type="text/javascript">
$(function(){
	//체크확인
	$('#send').on('click',function(){
// 		var fundmoney = $('#fundmoney option:selected').val();
// 		alert(fundmoney)
		var ischeck1=$('#checkbox1').prop('checked');
		var ischeck2=$('#checkbox2').prop('checked');
			
		if($('.name').val()==''){alert("이름을 입력하세요"); return false;}else{
			if($('.email').val()==''){alert("이메일을 입력하세요"); return false;}else{
				if($('.tel').val()==''){alert("휴대번호를 입력하세요"); return false;}else{
					
				if(!ischeck1){alert("이용약관을 동의해주세요"); return false; }else{
					if(!ischeck2){alert("개인정보처리방침을 동의해주세요"); return false; }else{
						alert("결재가 완료되었습니다.")
							}
						}
					}
				}
			}
		
	
	})
	//은행 선택창 띄우기
	$('#bank').on('click',function(){
		$('#bankdisplay').css('display','');
	})
	
})//메인 function
</script>

<style>
select,option,button{
	text-align: center;
	font-size: medium;
	font-weight: bolder;
	}
label{
	margin-top: 20px;
	margin-right: 100px;
	display: inline-block;	
}
button{
	border-style: none;
	border-radius: 100%;
}

#wrap{
	width: 1000px;
	height: 1200px;
	text-align: center;
	margin: 0px auto;
}	
#d1 label{
	width: 65px;
	height: 24px;
}
</style>
</head>
<body>
	<div id='wrap' class="alert alert-warning">
		<div id='content' style="text-align: center">
		
			<form id="payform" method="post" action="<%=request.getContextPath()%>/FundPay.do">
					
			<h2>모금 정보</h2>	
			<div>
			<label>후원금액</label>
		   		<select id="fundmoney" name="fundmoney" style="width:100px; height:30px;">
		   			<option>100</option>
		   			<option>1000</option>
		          	<option>5000</option>
		          	<option>10000</option>
		          	<option>50000</option>
		          	<option>100000</option>
		          	<option>1000000</option>
		          </select><span>원</span>
			</div>
			<hr>
			<h2>후원자정보</h2>
			<div id=d1>
				<div><label>이름</label><input type="text" class="name" name="name"></div>
				<div><label>이메일</label><input type="text" class="email" name="email"></div>
				<div><label>휴대전화(숫자만)</label><input type="text" class="tel" name="tel"></div>
			</div>
			<hr>
			<h2>결제수단</h2>
			<br>
			<p style="font-weight: bold;">보상을 구하지 않는 봉사는</p>
			<p style="font-weight: bold;">남을 행복하게 할 뿐만 아니라</p>
			<p style="font-weight: bold;">우리 자신도 행복하게 한다.</p>
			<p style="font-weight: bold;">-간디-</p>
			<div>
			<hr>
			<div><input type="checkbox"  id="checkbox1">이용약관 동의하기<a href="check1.jsp" onClick="window.open(this.href,'','width=600, height=650'); return false;">[보기]</a></div>
			<div><input type="checkbox"  id="checkbox2">개인정보처리 방침 동의하기<a href="check2.jsp" onClick="window.open(this.href,'','width=600, height=650'); return false;">[보기]</a></div>
			<br><hr><br>
				<div>
				<button type="button" id='kakao'><img src="../images/kakao.png"></button>
				<button type="button" id="bank" class="btn btn-danger" style="width:120px; height:50px">무통장입금</button>
				<input id="reset" class="btn btn-warning" type="reset" value="초기화하기" style='color: white; style=width:120px; height:50px;'>
				</div>
				
				<div id="bankdisplay" style="display:none"><label style="font-weight: bolder;">은행</label>
				<select name="allbank">
					<option>국민은행</option>
					<option>농협</option>
					<option>우리은행</option>
					<option>신한은행</option>
					<option>하나은행</option>
				</select>
				<div>
				<label style="font-weight: bolder;">무통장입금</label><input id="send" class="btn btn-warning" type="submit" value="후원하기" style='color: white'>
				</div>
				</div>
			</div>
			</form>
		</div><!-- content -->
	</div><!-- wrap -->		
	
<script>

//카카오버튼 누르기전 체크
$('#kakao').click(function(){
	var ischeck1=$('#checkbox1').prop('checked');
	var ischeck2=$('#checkbox2').prop('checked');
		if($('.name').val()==''){alert("이름을 입력하세요"); return false; }else{
			if($('.email').val()==''){alert("이메일을 입력하세요"); return false; }else{
				if($('.tel').val()==''){alert("휴대번호를 입력하세요"); return false; }else{
					if(!ischeck1){alert("이용약관을 동의해주세요"); return false; }else{
						if(!ischeck2){alert("개인정보처리방침을 동의해주세요"); return false; }else{
					var money=$('#fundmoney option:selected').val();
					
				    var IMP = window.IMP; 
				    IMP.init('imp68133017'); 
				    IMP.request_pay({
				    	pg : "kakaopay", 
				        pay_method : 'card',
				        merchant_uid : 'merchant_' + new Date().getTime(),
				        name : '모금펀딩',
				        amount : money,
				        buyer_email : 'email',
				        buyer_name : 'name',
				        buyer_tel : 'tel',
				        buyer_addr : '구매자 주소',
				        buyer_postcode : '구매자 주소',
				        m_redirect_url : '/fund/completekakao.jsp'
				    }, function(rsp) {
				        if ( rsp.success ) {
				            var msg = '결제가 완료되었습니다.';
				            location.href='completekakao.jsp';
				        } else {
				            var msg = '결제에 실패하였습니다.';
				            rsp.error_msg;
				        	}
				    	});
						}
					}
				}
			}
		}
});
	
</script>

</body>
</html>