<%@page import="vlog.vo.ComReplyVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
//서브릿에서 실행결과 공유 
List<ComReplyVO>  list =(List<ComReplyVO>)request.getAttribute("list");
%>
[
  <%
    for(int i=0; i<list.size(); i++){
    	ComReplyVO  vo =  list.get(i);
    	if(i > 0) out.print(",");
   %>
     
      {
        "renum" : "<%= vo.getRc_no() %>",
        "bonum" : "<%= vo.getCommu_no() %>",
        "name"  : "<%= vo.getStd_id() %>",
        "cont"  : "<%= vo.getRc_cont().replaceAll("\r", "").replaceAll("\n", "<br>") %>",
        "date"  : "<%= vo.getRc_date() %>"
      }
    	
 
 <% }
  %>
]