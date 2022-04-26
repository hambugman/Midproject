package vlog.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vlog.service.ARServiceImpl;
import vlog.service.IARService;
import vlog.vo.arVo;

@WebServlet("/arUpdate.do")
public class arUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		//세션 생성 후 정보 가져오기
		HttpSession session = request.getSession();
		List<arVo> arList = (List<arVo>)session.getAttribute("askRepl");
		
		arVo vo = arList.get(0);
		
		System.out.println("\n문의 답변 수정 서블릿 vo.getRa_no : " + vo.getRa_no());
		
		//수정된 내용 가져오기
		String arCont = request.getParameter("arCont");
		
		System.out.println("\n\narCont : " + arCont);

		vo.setRa_cont(arCont);
		
		IARService service = ARServiceImpl.getARService();
		int cnt = service.arUpdate(vo);
		
		System.out.println("\n\ncnt=" + cnt);
		
		response.sendRedirect(request.getContextPath() + "/askList.do");

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
