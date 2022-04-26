package vlog.controller;

import java.io.IOException;
import java.util.List;

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
 * Servlet implementation class ComList
 */
@WebServlet("/ComList.do")
public class ComList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		IComBoardService service = ComBoardServiceImpl.getService();
		HttpSession session = request.getSession();
		StudentVO vo = (StudentVO) session.getAttribute("loginStd");
		String loc = "";
		
		if(vo==null) { //로그인 정보 없을때
			loc = "대전";//request.getParameter("loc"); //파라미터로 가져온다 (비회원)
		}else { //로그인 정보 있을 때
			loc = vo.getStd_location(); //로그인 아이디로 가져온다(회원)
		}
		
		
		List<CommunityVO> list=service.selectLocationAll(loc);
		System.out.print(list.toString());
		request.setAttribute("comlist", list);
		
		request.getRequestDispatcher("board/maincomlist.jsp").forward(request, response);
//		response.sendRedirect("board/maincomlist.jsp");
		
	
	}
	
	@Override
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		}

}
