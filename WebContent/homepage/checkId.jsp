<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<%
	//서블릿에서 결과값 공유하기
	String checkId = (String)request.getAttribute("checkId");

	if(checkId==null){
%>
	{"check" : "중복되지않은 id입니다."}
<% 
	}
	else{
	%>
	{"check" : "중복된 id입니다."}
<% 		
	}
%>

