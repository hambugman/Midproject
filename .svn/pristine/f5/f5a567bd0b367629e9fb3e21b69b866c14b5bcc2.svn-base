package vlog.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vlog.dao.IComBoard;
import vlog.service.ComBoardServiceImpl;
import vlog.service.IComBoardService;

/**
 * Servlet implementation class ReplyDelete
 */
@WebServlet("/ReplyComDelete.do")
public class ReplyComDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReplyComDelete() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		//0. 클라이언트 요청시 renum
		int renum = Integer.parseInt(request.getParameter("renum")); //문제없음
		//1.  service객체 
		IComBoardService  service = ComBoardServiceImpl.getService();
		
		//2 service메소드 호출 - 결과값 
		int res = service.deleteReply(renum); 
		
		 //3. request에 저장
        request.setAttribute("res", res);
        
        //4. jsp로 forward
        request.getRequestDispatcher("board/result.jsp").forward(request, response);
 
	}

}
