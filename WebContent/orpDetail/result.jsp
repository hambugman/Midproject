<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//서블릿에서 수행결과 공유
	String res = (String)request.getAttribute("res");
	if(res == null){
%>		
	
	{ "sw" : "성공" }
		
<%	}else{%>

	{ "sw" : "실패" }

<%		
	}
%>