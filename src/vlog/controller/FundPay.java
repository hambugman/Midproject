package vlog.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vlog.service.FundService;
import vlog.service.IFundServiceimpl;
import vlog.vo.CommonVO;
import vlog.vo.FundDetailVO;
import vlog.vo.FundVO;
import vlog.vo.StudentVO;

//펀딩 결제 페이지(일반회원,펀딩넘버,금액)
@WebServlet("/FundPay.do")
public class FundPay extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		FundDetailVO vo = new FundDetailVO();
		HttpSession session = request.getSession();
		CommonVO comvo = (CommonVO)session.getAttribute("loginCommon");
//		PrintWriter out = response.getWriter();
		//세션으로 아이디를 가져와야하지만 못해서 수동으로
//		if(comvo==null) {
//			out.println("<script>alert('일반회원이셔야 후원가능합니다.');location.href='"+request.getContextPath()+"/FundList.do"+"';</script>");
//		}else {
			String name = request.getParameter("name");
			
			String tel = request.getParameter("tel"); 
			
			String email = request.getParameter("email");
			
			//펀딩게시판 fun_no를 가져와야함   fun_no는 선택했던 펀딩페이지의 no로 넣어야함
			//펀딩거래에 기본키를 하나 넣어야함
//			int fun_no=Integer.parseInt(request.getParameter("fno"));
			
			String strmoney=request.getParameter("fundmoney");
			int fundmoney = Integer.parseInt(strmoney);
			
			String allbank = request.getParameter("allbank");
			
			
			request.setAttribute("Name", name);
			request.setAttribute("Tel", tel);
			request.setAttribute("Email", email);
			request.setAttribute("Fundmoney", fundmoney);
			request.setAttribute("Allbank", allbank);
			
			
			//db에 저장함
			vo.setGen_id(comvo.getGen_id());
//			vo.setFun_no(fun_no);
			vo.setFdetail_money(fundmoney);
			
			
			FundService service = IFundServiceimpl.getService();
			
			int result = service.fundPay(vo);
			request.getRequestDispatcher("fund/completepay.jsp").forward(request, response);
//		}
		
	}

}
