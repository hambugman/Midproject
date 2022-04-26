package vlog.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vlog.service.IOrpService;
import vlog.service.OrpServiceImpl;
import vlog.vo.OrpVo;

@WebServlet("/orpList.do")
public class orpList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		IOrpService service = OrpServiceImpl.getOrpService();
		
		List<OrpVo> orpList = service.orpAll();
		
		//세션 만들어서 orpList저장하기
		HttpSession session = request.getSession();
		session.setAttribute("orpList", orpList);
		
		response.sendRedirect("homepage/orpAddress.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
