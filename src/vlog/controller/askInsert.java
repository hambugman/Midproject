package vlog.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vlog.service.ARServiceImpl;
import vlog.service.AskServiceImpl;
import vlog.service.IARService;
import vlog.service.IAskService;
import vlog.vo.CommonVO;
import vlog.vo.OrpVo;
import vlog.vo.askVo;

@WebServlet("/askInsert.do")
public class askInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		System.out.println("\n\n문의사항 넣는 서블릿\n\n");
		
		//세션 생성 후 세션 정보 가져오기 (보육원, 일반회원)
		HttpSession session= request.getSession();
		OrpVo orp = (OrpVo)session.getAttribute("orp");
		CommonVO com = (CommonVO)session.getAttribute("loginCommon");
		
		String aTitle=request.getParameter("aTitle");
		String aCont=request.getParameter("aCont");
		
		System.out.println("\n\n문의사항 제목 : " + aTitle);
		System.out.println("\n\n문의사항 내용 : " + aCont);
		
		askVo vo = new askVo();
		
		vo.setOrp_no(orp.getOrp_no());
		vo.setGen_id(com.getGen_id());
		vo.setAsk_title(aTitle);
		vo.setAsk_cont(aCont);
		
		IAskService service = AskServiceImpl.getAskService();
		
		int cnt = service.askInsert(vo);
		
		System.out.println("\n\n문의사항 insert 결과 : " + cnt);
		
		response.sendRedirect(request.getContextPath() + "/askList.do");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
