package vlog.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vlog.service.FundService;
import vlog.service.IFundServiceimpl;
import vlog.vo.FoVO;
import vlog.vo.OrpVo;


@WebServlet("/FundOlimlist.do")
public class FundOlimlist extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		FundService service = IFundServiceimpl.getService();
		
//		HttpSession session = request.getSession();
//		OrpVo vo = (OrpVo) session.getAttribute("loginOrp");
//		List<FoVO>folist = service.getOlimlist(vo.getOrp_no());
		
		List<FoVO>folist = service.getOlimlist();
		
		request.setAttribute("folist", folist);
		
		request.getRequestDispatcher("/fund/olimlist.jsp").forward(request, response);
	}
	
	
}
