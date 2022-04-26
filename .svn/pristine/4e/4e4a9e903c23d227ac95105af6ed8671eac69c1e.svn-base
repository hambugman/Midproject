package vlog.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vlog.service.IONoticeService;
import vlog.service.oNoticeServiceImpl;
import vlog.vo.orpNoVo;

@WebServlet("/onUpdate.do")
public class onUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		//세션 생성 후 정보 가져오기
		HttpSession session = request.getSession();
		orpNoVo vo = (orpNoVo)session.getAttribute("notice");
		
		//세션 정보로 공지사항 뽑기
		IONoticeService service = oNoticeServiceImpl.getONService();
		orpNoVo nvo = service.detailONoice(vo.getOnotice_no());
		
		//수정된 정보 가져오기
		String nTitle = request.getParameter("nTitle");
		String nCont = request.getParameter("nCont");
		
		System.out.println("\n\nnTitle : " + nTitle);
		System.out.println("\n\nnCont : " + nCont);
		
		nvo.setOnotice_title(nTitle);
		nvo.setOnotice_cont(nCont);
		
		
		int cnt = service.oNoticeUpdate(nvo);
		
		System.out.println("\n\ncnt=" + cnt);
		
		response.sendRedirect(request.getContextPath() + "/orpNoticeList.do");

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
