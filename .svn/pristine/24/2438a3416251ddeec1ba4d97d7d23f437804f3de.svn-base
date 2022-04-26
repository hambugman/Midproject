<%@page import="vlog.vo.CommunityVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  //서블릿에서 request의  자료 공유 
  List<CommunityVO>  list  = (List<CommunityVO>)request.getAttribute("comlist");

 %>
[
  <%
     for(int i=0; i<list.size(); i++){
    	 CommunityVO vo = list.get(i);
    	  String str = vo.getCommu_cont(); 
    	  if( str.length() > 10)  str =vo.getCommu_cont().substring(0,10)+"....." ;
    	  if(i > 0) out.print(",");
  %>
   {
      "num"     :"<%= vo.getCommu_no() %>",
      "id"  :"<%= vo.getStd_id() %>",
      "title"   :"<%= vo.getCommu_title() %>",
      "date"    :"<%= vo.getCommu_date()%>",
      "cont"     :"<%= str.replaceAll("\r", "").replaceAll("\n", "<br>") %>",
      "location"    :"<%= vo.getStd_location()%>",
      "hit"    :"<%= vo.getCommu_hit() %>"
  }    	  
 <%   	  
    }
  %>
 ]
 
 
 
 
 
 
 
 
 
 
 
 
 