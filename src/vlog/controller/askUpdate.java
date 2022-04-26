package vlog.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vlog.service.AskServiceImpl;
import vlog.service.IAskService;
import vlog.vo.askVo;

@WebServlet("/askUpdate.do")
public class askUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		//세션 생성 후 정보 가져오기
		HttpSession session = request.getSession();
		askVo vo = (askVo)session.getAttribute("ask");
		
		System.out.println("\n문의사항 수정 서블릿 vo.getAsk_no : " + vo.getAsk_no());
		
		//세션 정보로 문의사항 내용 뽑기
		IAskService service = AskServiceImpl.getAskService();
		askVo avo = service.detailAsk(vo.getAsk_no());
		
		//수정된 정보 가져오기
		String aTitle = request.getParameter("aTitle");
		String aCont = request.getParameter("aCont");
		
		System.out.println("\n\naTitle : " + aTitle);
		System.out.println("\n\naCont : " + aCont);
		
		avo.setAsk_title(aTitle);
		avo.setAsk_cont(aCont);
		
		int cnt = service.askUpdate(avo);
		
		System.out.println("\n\ncnt=" + cnt);

		response.sendRedirect(request.getContextPath() + "/askList.do");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
