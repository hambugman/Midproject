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
import vlog.vo.StudentVO;

/**
 * Servlet implementation class BoardDelete
 */
@WebServlet("/BoardDelete.do")
public class BoardDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//0. 클라이언트 요청시 renum
		int num = Integer.parseInt(request.getParameter("num"));
			System.out.println("num= " + num);	
		//1.  service객체 
		IComBoardService  service = ComBoardServiceImpl.getService();
		
		//2 service메소드 호출 - 결과값 
		HttpSession session = request.getSession();
		StudentVO stdvo=(StudentVO)session.getAttribute("loginStd");
		
		CommunityVO comvo = service.detailComBoard(num);
		int res = 0;
		if(comvo.getStd_id().equals(stdvo.getStd_id())||stdvo.getStd_id().equals("admin")) {
			 res = service.deleteBoard(num);
			
		}else {
			
			 res = 0;
		}
		
		
		//------------------------------------------
		 //3. request에 저장
        request.setAttribute("res", res);
        
        //4. jsp로 forward
        request.getRequestDispatcher("board/result.jsp").forward(request, response);
		 
	}

}
