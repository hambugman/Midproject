<%@page import="vlog.vo.VolunteerBoardVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  //서블릿에서 request의  자료 공유 
  List<VolunteerBoardVO>  list  = (List<VolunteerBoardVO>)request.getAttribute("list");
  Integer spage = (Integer) request.getAttribute("spage");
  Integer  tpage =(Integer) request.getAttribute("tpage");
  Integer  epage =(Integer) request.getAttribute("epage");
 %>
 {
   "tp" : "<%= tpage %>",
   "sp" : "<%= spage %>",
   "ep" : "<%= epage %>",
   "datas" : [
  <%
     for(int i=0; i<list.size(); i++){
    	 VolunteerBoardVO vo = list.get(i);
    	  if(i > 0) out.print(",");
    	  //mail이 repl로 바뀜 <<<<주의
  %>
   {
      "num"     :"<%= vo.getVboard_no() %>",
      "writer"  :"<%= vo.getGen_id() %>",
      "title"   :"<%= vo.getVboard_title() %>",
      "hit"     :"<%= vo.getVboard_hit() %>",
      "cont"    :"<%= vo.getVboard_cont().replaceAll("\r", "").replaceAll("\n", "<br>") %>",
      "date"    :"<%= vo.getVboard_date() %>"
  }    	  
 <%   	  
    }
  %>
 ]
 }
 
 
 
 
 
 
 
 
 
 
 
 