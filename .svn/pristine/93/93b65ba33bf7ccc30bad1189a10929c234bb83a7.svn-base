package vlog.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vlog.service.IJjimService;
import vlog.service.IVolunService;
import vlog.service.JjimServiceImpl;
import vlog.service.VolunServiceImpl;
import vlog.vo.CommonVO;
import vlog.vo.jjimVo;
import vlog.vo.volunVo;

@WebServlet("/comVolunList.do")
public class comVolunList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		//세션 생성 후 로그인한 일반 회원 정보 가져오기
		HttpSession session = request.getSession();
		CommonVO com = (CommonVO)session.getAttribute("loginCommon");
		
		//관심보육원, 봉사활동 신청 서비스객체 생성
		IJjimService jjs = JjimServiceImpl.getJjimService();
		IVolunService vos = VolunServiceImpl.getVolunService();
		
		//회원 아이디로 관심보육원 출력
		List<jjimVo> jjimList = jjs.jjimAll(com.getGen_id());
		
		//회원아이디로 봉사활동 신청내역 출력
		List<volunVo> volunList = vos.commonList(com.getGen_id());
		
		//세션에 저장하기
		session.setAttribute("jjimList", jjimList);
		session.setAttribute("volunList", volunList);
		
		response.sendRedirect(request.getContextPath() + "/myPage/orpvolunteerpage.jsp");

	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
