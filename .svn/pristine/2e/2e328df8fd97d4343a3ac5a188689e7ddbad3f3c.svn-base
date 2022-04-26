package vlog.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vlog.service.IVolunService;
import vlog.service.VolunServiceImpl;
import vlog.vo.OrpVo;
import vlog.vo.volunVo;

@WebServlet("/orpVolunList.do")
public class orpVolunList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		//세션 생성 후 로그인한 보육원 정보 가져오기
		HttpSession session = request.getSession();
		OrpVo login = (OrpVo)session.getAttribute("loginOrp");
		
		//서비스 객체 호출해서 봉사활동 신청한 내역 가져오기
		IVolunService service = VolunServiceImpl.getVolunService();
		List<volunVo> orpList = service.orpList(login.getOrp_no());
		
		//세션에 봉사활동 내역 저장하기
		session.setAttribute("volunOrp", orpList);
		
		response.sendRedirect(request.getContextPath() + "/myPage/orpvolunteerpage.jsp");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
