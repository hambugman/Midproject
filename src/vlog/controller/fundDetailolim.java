package vlog.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vlog.service.FundService;
import vlog.service.IFundServiceimpl;
import vlog.vo.FoVO;

/**
 * Servlet implementation class fundDetailolim
 */
@WebServlet("/fundDetailolim.do")
public class fundDetailolim extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String fo_no =request.getParameter("fo_no");
		
		int fono = Integer.parseInt(fo_no);
		
		FundService service = IFundServiceimpl.getService();
		
		List<FoVO>olimdetail = service.detailOlimpage(fono);
		
		request.setAttribute("olimdetail", olimdetail);
		
		request.getRequestDispatcher("fund/detailolim.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
