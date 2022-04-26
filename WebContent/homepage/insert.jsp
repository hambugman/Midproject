<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
 
//서블릿 실행 결과 데이타 공유 
String id= (String)request.getAttribute("insertId");
if(id != null){
%>
  <h2>회원가입 성공을 축하드립니다!! </h2>
	<a href="<%=request.getContextPath()%>/homepage/main.jsp">홈으로 돌아가기</a>
<% }else{ %>
	
	 <h2>회원가입 성공을 축하드립니다!! </h2>
	 <a href="<%=request.getContextPath()%>/homepage/main.jsp">홈으로 돌아가기</a>
<%
}
%>