package vlog.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vlog.service.FundService;
import vlog.service.IFundServiceimpl;


@WebServlet("/deleteFund.do")
public class deleteFund extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		//0. 클라이언트 요청시 funno
		int funno = Integer.parseInt(request.getParameter("funno"));
		
		//1.  service객체 
		FundService service = IFundServiceimpl.getService();
		
		//2 service메소드 호출 - 결과값 
		int result = service.fundDelete(funno);
		
		if(result==0) {
			System.out.println("지우기 실패");
		}else {
			System.out.println("지우기 성공");
		}
		
		//3. request에 저장
		request.setAttribute("result", result);
		

		response.sendRedirect("fund/managerFundmain.jsp");
	}
	
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

}
