<%@page import="vlog.vo.VaReplyVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
//서브릿에서 실행결과 공유 
List<VaReplyVO>  list =(List<VaReplyVO>)request.getAttribute("list");
%>
[
  <%
    for(int i=0; i<list.size(); i++){
    	VaReplyVO  vo =  list.get(i);
    	if(i > 0) out.print(",");
   %>
     
      {
        "renum" : "<%= vo.getRv_no() %>",
        "bonum" : "<%= vo.getVboard_no() %>",
        "name"  : "<%= vo.getGen_id() %>",
        "cont"  : "<%= vo.getRv_cont().replaceAll("\r", "").replaceAll("\n", "<br>") %>",
        "date"  : "<%= vo.getRv_date() %>"
      }
    	
 
 <% }
  %>
]











