package vlog.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vlog.service.IVBoardService;
import vlog.service.VBoardServiceImpl;
import vlog.vo.VaReplyVO;

/**
 * Servlet implementation class ReplyList
 */
@WebServlet("/VReplyList.do")
public class VReplyList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		IVBoardService service = VBoardServiceImpl.getService();
		
		int bonum=Integer.parseInt(request.getParameter("bonum"));
		
		List<VaReplyVO> list=service.listReply(bonum);
		
//		request.setAttribute("res", 1);
		request.setAttribute("list", list);
//		request.getRequestDispatcher("board/result.jsp").forward(request, response);
		request.getRequestDispatcher("vboard/replyList.jsp").forward(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	
	}

}
