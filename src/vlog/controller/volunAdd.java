package vlog.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vlog.service.IVolunService;
import vlog.service.VolunServiceImpl;
import vlog.vo.CommonVO;
import vlog.vo.OrpVo;
import vlog.vo.volunVo;

@WebServlet("/volunAdd.do")
public class volunAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		//세션생성해서 보육원, 일반회원 정보 가져오기
		HttpSession session = request.getSession();
		OrpVo orp = (OrpVo) session.getAttribute("orp");
		CommonVO com = (CommonVO) session.getAttribute("loginCommon");
		
		//date값 받아오기
		String date = request.getParameter("date");
		
		System.out.println("\n\n봉사활동 신청 날짜  ; " + date);
		
		//volunVo에 값 넣기
		volunVo vo = new volunVo();
		
		vo.setGen_id(com.getGen_id());
		vo.setOrp_no(orp.getOrp_no());
		vo.setVolun_date(date);
		
		//service로 insert처리하기
		IVolunService service = VolunServiceImpl.getVolunService();
		
		int cnt = service.volunInsert(vo);
		
		System.out.println("\n\ncnt = " + cnt);
		
		request.setAttribute("res", cnt);
		
		request.getRequestDispatcher("orpDetail/result2.jsp").forward(request, response);
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
