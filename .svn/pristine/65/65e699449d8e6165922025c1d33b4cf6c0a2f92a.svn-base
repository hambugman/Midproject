package vlog.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vlog.service.IVBoardService;
import vlog.service.VBoardServiceImpl;

/**
 * Servlet implementation class ReplyDelete
 */
@WebServlet("/VReplyDelete.do")
public class VReplyDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		int renum=Integer.parseInt(request.getParameter("renum"));
		
		//1. 서비스 객체 얻기
				IVBoardService service = VBoardServiceImpl.getService();
				
				int res=service.deleteReply(renum);
				
				request.setAttribute("res", res);
				
				request.getRequestDispatcher("vboard/result.jsp").forward(request, response);
				
	
	}

}
