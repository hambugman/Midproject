package vlog.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vlog.service.ARServiceImpl;
import vlog.service.IARService;

@WebServlet("/arDelete.do")
public class arDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		System.out.println("댓글삭제 서블릿으로 넘어옴");
		
		//idx값 가져오기
		int idx = Integer.parseInt(request.getParameter("idx"));
		
		//댓글 서비스
		IARService service = ARServiceImpl.getARService();
		int cnt = service.arDelete(idx);
		
		if(cnt == 0) {
			System.out.println("\n지우기 실패\n");
		}else {
			System.out.println("\n지우기 성공\n");
		}

		request.setAttribute("res", cnt);
		
		request.getRequestDispatcher("orpDetail/result2.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
