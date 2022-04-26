package vlog.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vlog.service.ARServiceImpl;
import vlog.service.IARService;
import vlog.vo.OrpVo;
import vlog.vo.arVo;
import vlog.vo.askVo;

@WebServlet("/arInsert.do")
public class arInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		//보육원 정보, 문의사항 정보 가지고오기
		HttpSession session = request.getSession();
		OrpVo login = (OrpVo)session.getAttribute("loginOrp");
		askVo ask = (askVo)session.getAttribute("ask");

		//적은 답변 내용 가져오기
		String arCont = request.getParameter("arCont");
		
		System.out.println("댓글 넣는 서블릿 arCont : " + arCont);
		
		arVo vo = new arVo();
		
		vo.setAsk_no(ask.getAsk_no());
		vo.setOrp_no(login.getOrp_no());
		vo.setRa_cont(arCont);
		
		//저장하기
		IARService service = ARServiceImpl.getARService();
		
		int cnt = service.arInsert(vo);
		System.out.println("\ncnt=" + cnt);
		
		response.sendRedirect(request.getContextPath() + "/askList.do");
//		request.getRequestDispatcher("orpDetail/result2.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
