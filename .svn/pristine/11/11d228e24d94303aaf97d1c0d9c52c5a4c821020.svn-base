package vlog.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vlog.service.ComBoardServiceImpl;
import vlog.service.IComBoardService;
import vlog.vo.ComReplyVO;

/**
 * Servlet implementation class ReplyList
 */
@WebServlet("/ReplyComList.do")
public class ReplyComList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReplyComList() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//0 클라이언트 전송값 :  bonum
		int bonum = Integer.parseInt(request.getParameter("idx"));
		
		//1
		IComBoardService  service = ComBoardServiceImpl.getService();
		
		//2
		List<ComReplyVO>  list = service.listReply(bonum);
		//3
		request.setAttribute("list", list);
		
		//4
		request.getRequestDispatcher("board/comreplyList.jsp").forward(request, response);
		
		
		
	}

}





