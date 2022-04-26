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
import vlog.vo.OrpVo;
import vlog.vo.arVo;
import vlog.vo.askVo;

@WebServlet("/arList.do")
public class arList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		//보육원정보, 문의사항 정보 가져오기
		HttpSession session = request.getSession();
		OrpVo orp = (OrpVo)session.getAttribute("orp");
		askVo ask = (askVo)session.getAttribute("ask");
		
		//목록
		IARService service = ARServiceImpl.getARService();
		
		List<arVo> list = service.arList(ask.getAsk_no());
		
		System.out.println("\n\nsize : " + list.size());
		
		session.setAttribute("askRepl", list);
		
		response.sendRedirect(request.getContextPath() + "/detailAsk.jsp");

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
