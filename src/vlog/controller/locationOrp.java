package vlog.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vlog.vo.OrpVo;

@WebServlet("/locationOrp.do")
public class locationOrp extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		//세션정보 가져오기 위해 세션 생성
		HttpSession orphanage = request.getSession();
		
		//세션정보 가져오기
		OrpVo vo = (OrpVo) orphanage.getAttribute("orp");
		
		request.setAttribute("orp", vo);
		
		request.getRequestDispatcher("/orpDetail/mapMap.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
