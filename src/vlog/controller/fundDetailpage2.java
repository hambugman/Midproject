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
import vlog.vo.FundVO;


@WebServlet("/fundDetailpage2.do")
public class fundDetailpage2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	//펀딩리스트 상세보기2 (관리자용)
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String fun_no =request.getParameter("fun_no");
		
		int fundnoInt = Integer.parseInt(fun_no);
		
		FundService service = IFundServiceimpl.getService();
		
		List<FundVO> funddetail = service.detailFundpage(fundnoInt); 
		
		request.setAttribute("funddetail", funddetail);
		
		request.getRequestDispatcher("fund/fundDetailpage2.jsp").forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
