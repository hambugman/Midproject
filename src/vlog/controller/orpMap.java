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

@WebServlet("/orpMap.do")
public class orpMap extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		IOrpService service = OrpServiceImpl.getOrpService();
		
		List<OrpVo> orpList = service.orpAll();
		
		//로그인 세션 가져오기
		HttpSession session = request.getSession();
		OrpVo orpvo = (OrpVo)session.getAttribute("loginOrp");
		
		if(orpvo != null) {
			System.out.println("보육원 찾기 : " + orpvo.getOrp_no() + "\n");
		} else {
			System.out.println("보육원 찾기 세션 ㄴㄴ");
		}
		
		request.setAttribute("orpList", orpList);
		
		request.getRequestDispatcher("/map-API/mapMain.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
