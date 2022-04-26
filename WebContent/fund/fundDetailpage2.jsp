<%@page import="java.util.List"%>
<%@page import="vlog.vo.FundVO"%>
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
<title>상세페이지(관리자)</title>
<style>
#wrap{
	width: 1200px;
	height: 1000px;
	margin: 0px auto;
}
#list{
/* 	border: 2px solid green; */
	width: 1000px;
	height: 800px;
	margin: 0px auto;
	text-align: center;
}
table{
	text-align: center;
}
.bold{
	font-weight: bold;
}
</style>
<%List<FundVO> list = (List<FundVO>)request.getAttribute("funddetail"); 
FundVO vo = list.get(0);%>

<script type="text/javascript">
	$(function(){
		//목록으로 돌아가기
		$('.list').on('click',function(){
			location.href="<%=request.getContextPath()%>/FundManlist.do"		
		})

// 		$('.fund').on('click',function(){
// 			var fun_money = $('#pay option:selected').val()
// 			alert("fundmoney는 : "+fun_money)
<%-- 			location.href="<%=request.getContextPath()%>/fund/Fundpay.do?fun_money="+fun_money; --%>
// 		})
		$(document).on("click",'.delete',function(){
			var funno= <%=vo.getFun_no() %>;
			if(confirm("정말 삭제할까요?")){
				$.ajax({
					url:'/Vlog/deleteFund.do',
					data:{'funno':funno},
					type:"get",
					success:function(res){
						alert("삭제완료");
						location.href="<%=request.getContextPath()%>/FundManlist.do";				
					},
					error:function(xhr){
// 						alert("상태"+xhr.status)
					}
				})
			}
		})


	})
</script>
</head>
<body>

<div id="wrap">
<div id="list" class="well">
<form method="post" action="fundpay.jsp">
<div id="content">
<div name="funno" id="funno" style="display: none;"><%=vo.getFun_no() %></div>
<table class="table">
	<tr>
		<td class='bold'>제목</td>
		<td colspan="3"><%=vo.getFun_name() %></td>
		<td class=bold>날짜</td>
		<td colspan="3"><%=vo.getFun_date() %></td>	
	<tr>
		
	<tr>
		<td class='bold'>목표일</td>
		<td colspan="3"><%=vo.getFun_due() %></td>
		<td class='bold'>목표금액</td>
		<td colspan="3"><%=vo.getFun_goal() %></td>
	</tr>
	<tr>
		<td class='bold' colspan="8">내용</td>
	</tr>
	<tr>
		<td colspan="8"><pre><%=vo.getFun_cont()%></pre></td>
	</tr>
</table>
</div>
<div>
<input type="button" value="목록으로 돌아가기" class='btn-default list'>
<input type="button" value="삭제하기ㅠㅠ" class="btn-warning delete">
</div>
</form>
</div>
</div>



</body>
</html>