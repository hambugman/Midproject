package vlog.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

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
 * Servlet implementation class CommunityList
 */
@WebServlet("/CommunityList.do")
public class CommunityList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		IComBoardService service = ComBoardServiceImpl.getService();
		
		
		HttpSession session = request.getSession();
				StudentVO vo = (StudentVO) session.getAttribute("loginStd");
				String loc = vo.getStd_location();
		
		List<CommunityVO> list=service.selectLocationAll(loc);
		
		System.out.print(list.toString());
		request.setAttribute("comlist", list);
		
		request.getRequestDispatcher("board/maincomlist.jsp").forward(request, response);
	
	
	
	
	}

}
