package vlog.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vlog.service.FundService;
import vlog.service.IFundServiceimpl;
import vlog.vo.FoVO;
import vlog.vo.StudentVO;

/**
 * Servlet implementation class fundOlim
 */
@WebServlet("/FundOlim.do")
public class FundOlim extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	//펀딩올림(구성원->보육원관리자)
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.setCharacterEncoding("utf-8");
		String foTitle = request.getParameter("ftitle");
		String foProd = request.getParameter("fprod");
		String foCont = request.getParameter("fcont");
		
		//세션값 받아오기
		HttpSession session = request.getSession();
		StudentVO svo=(StudentVO)session.getAttribute("loginStd");		//구성원 값 svo에 집어넣음
		
		FoVO fovo = new FoVO();
		fovo.setStd_id(svo.getStd_id());//세션값에서 가져온 구성원아이디
		fovo.setFo_title(foTitle);
		fovo.setFo_rprod(foProd);
		fovo.setFo_cont(foCont);
		
		System.out.println(foTitle);
		System.out.println(foProd);
		System.out.println(foCont);
		
		
		FundService service = IFundServiceimpl.getService();
		
		int result = service.fundOlim(fovo);
		
//		request.getRequestDispatcher(request.getContextPath()+"/myPage/fundpage.jsp").forward(request, response);
		response.sendRedirect("homepage/mainmain.jsp");		//입력이 완료되면 성공창 출력후 메인페이지로 날아가야함
//		response.sendRedirect("/FundList.jsp");		//입력이 완료되면 성공창 출력후 메인페이지로 날아가야함
		
	
    }


}
