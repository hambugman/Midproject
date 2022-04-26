<%@page import="vlog.vo.FileVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
List<FileVO> fileList=(List<FileVO>)request.getAttribute("imagefile");

%>
[
  <%
     for(int i=0; i<fileList.size(); i++){
    	 FileVO vo = fileList.get(i);
    	  if(i > 0) out.print(",");
  %>
   {
    	"path" : "<%=vo.getFilepath()%>" 
    	
  }    	  
 <%   	  
    }
  %>]