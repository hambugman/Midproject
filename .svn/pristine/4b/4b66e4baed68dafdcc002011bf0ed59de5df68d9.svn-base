package vlog.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vlog.service.ComBoardServiceImpl;
import vlog.service.IComBoardService;
import vlog.vo.CommunityVO;

/**
 * Servlet implementation class DetailBoard
 */
@WebServlet("/DetailBoard.do")
public class DetailBoard extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DetailBoard() {
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();
		IComBoardService service = ComBoardServiceImpl.getService();
		int comno = Integer.parseInt(request.getParameter("idxvalue"));
		CommunityVO vo =service.detailComBoard(comno);
		
		request.setAttribute("detailboard", vo);
		
		request.getRequestDispatcher("board/detailboard.jsp").forward(request, response);
	
	
	}

}
