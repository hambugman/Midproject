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
import vlog.vo.CommonVO;
import vlog.vo.OrpVo;

/**
 * Servlet implementation class LoginOrp
 */
@WebServlet("/LoginOrp.do")
public class LoginOrp extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 PrintWriter out= response.getWriter();
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		OrpVo vo = new OrpVo();
		String id=request.getParameter("id");
		String pass = request.getParameter("pass");
		vo.setOrp_no(id);
		vo.setOrp_pass(pass);
		//세션생성해야함
		HttpSession session = request.getSession();
		IComBoardService service = ComBoardServiceImpl.getService();
		
		OrpVo loginOrp=service.loginOrp(vo);
		
		
		if(loginOrp!=null) {
			session.setAttribute("loginOrp", loginOrp);
//			request.getRequestDispatcher("homepage/main.jsp").forward(request, response);
			response.sendRedirect("homepage/main.jsp");
		}else {
//			request.getRequestDispatcher("homepage/main.jsp").forward(request, response);
			out.println("<script>alert('Remember your id & password ! try again! ');location.href='homepage/loginpage.jsp';</script>");
			out.close();
//			response.sendRedirect("homepage/main.jsp");
		}
		
		
	}

}
