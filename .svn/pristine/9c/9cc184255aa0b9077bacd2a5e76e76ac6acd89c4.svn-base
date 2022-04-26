package vlog.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vlog.service.ComBoardServiceImpl;
import vlog.service.IComBoardService;

/**
 * Servlet implementation class CheckId
 */
@WebServlet("/CheckId.do")
public class CheckId extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id = request.getParameter("id");
		
		IComBoardService service = ComBoardServiceImpl.getService();
		
		String checkId = service.checkId(id);
		
		//결과값을 이용해서 json데이타를 생성하거나 출력한다.
		
		request.setAttribute("checkId", checkId);

		request.getRequestDispatcher("homepage/checkId.jsp").forward(request, response);
	}

}
