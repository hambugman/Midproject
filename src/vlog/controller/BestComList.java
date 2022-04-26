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
 * Servlet implementation class BestComList
 */
@WebServlet("/BestComList.do")
public class BestComList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public BestComList() {
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		IComBoardService service = ComBoardServiceImpl.getService();

		HttpSession session = request.getSession();
		StudentVO vo = (StudentVO) session.getAttribute("loginStd");
		String loc = "";
		
		if(vo==null) {
			loc = "대전";
		}else {
			loc = vo.getStd_location();
		}
		List<CommunityVO> list=service.selectBestAll(loc);
		request.setAttribute("bestcomlist", list);
		
		request.getRequestDispatcher("board/mainbestlist.jsp").forward(request, response);
	
	}

}
