<%@page import="vlog.vo.CommunityVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  //서블릿에서 request의  자료 공유 
  CommunityVO vo  = (CommunityVO)request.getAttribute("detailboard");


 %>
   {
      "num"     :"<%= vo.getCommu_no() %>",
      "id"  :"<%= vo.getStd_id() %>",
      "title"   :"<%= vo.getCommu_title() %>",
      "date"    :"<%= vo.getCommu_date()%>",
      "cont"     :"<%= vo.getCommu_cont().replaceAll("\r", "").replaceAll("\n", "<br>") %>",
      "location"    :"<%= vo.getStd_location()%>",
      "hit"    :"<%= vo.getCommu_hit() %>"
  }    	  
  
  
  
  
 
 
 
 
 
 
 
 
 
 
 
 
 