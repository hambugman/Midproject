package vlog.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vlog.dao.IONoticeDao;
import vlog.service.IONoticeService;
import vlog.service.oNoticeServiceImpl;
import vlog.vo.OrpVo;
import vlog.vo.orpNoVo;

@WebServlet("/onInsert.do")
public class onInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		orpNoVo vo = new orpNoVo();
		
		//세션 생성 후 세션 정보 가져오기
		HttpSession session = request.getSession();
		OrpVo orp = (OrpVo)session.getAttribute("orp");
		
		String onTitle = request.getParameter("onTitle");
		String onCont = request.getParameter("onCont");
		
		System.out.println("\n\nonTitle : " + onTitle);
		System.out.println("\n\nonCont : " + onCont);
		System.out.println("\n\nOrp_no : " + orp.getOrp_no());
		
		vo.setOrp_no(orp.getOrp_no());
		vo.setOnotice_title(onTitle);
		vo.setOnotice_cont(onCont);
		
		IONoticeService service = oNoticeServiceImpl.getONService();
		
		int cnt = service.oNoticeInsert(vo);
		
		System.out.println("\n\ncnt : " + cnt);
		
		response.sendRedirect(request.getContextPath() + "/orpNoticeList.do");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
