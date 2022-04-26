package vlog.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vlog.service.ComBoardServiceImpl;
import vlog.service.IComBoardService;
import vlog.vo.StudentVO;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login.do")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	response.setCharacterEncoding("utf-8");
	request.setCharacterEncoding("utf-8");
	 PrintWriter out= response.getWriter();
	StudentVO vo = new StudentVO();
	String id=request.getParameter("id");
	String pass = request.getParameter("pass");
	vo.setStd_id(id);
	vo.setStd_pass(pass);
	//세션생성해야함
	HttpSession session = request.getSession();
	IComBoardService service = ComBoardServiceImpl.getService();
	
	StudentVO loginStd=service.loginStd(vo);
	
	
	if(loginStd!=null) {
		session.setAttribute("loginStd", loginStd);
//		request.getRequestDispatcher("homepage/main.jsp").forward(request, response);
		response.sendRedirect("homepage/main.jsp");
		
	}else {
//		request.getRequestDispatcher("homepage/main.jsp").forward(request, response);
		out.println("<script>alert('Remember your id & password ! try again! ');location.href='homepage/loginpage.jsp';</script>");
		out.close();
//		response.sendRedirect("homepage/login.jsp");
	}
	
	}

}
