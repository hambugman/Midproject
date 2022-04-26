package vlog.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vlog.service.IONoticeService;
import vlog.service.oNoticeServiceImpl;
import vlog.vo.orpNoVo;

@WebServlet("/oNoticeRead.do")
public class oNoticeRead extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public oNoticeRead() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		//공지사항 번호 가지고오기
		int noNO = Integer.parseInt(request.getParameter("idx"));
		System.out.println("\n\nnoNo : " + noNO);
		
		//공지사항 뽑기
		IONoticeService service = oNoticeServiceImpl.getONService();
		orpNoVo vo = service.detailONoice(noNO);
		
		//세션에 저장하기
		HttpSession session = request.getSession();
		session.setAttribute("notice", vo);
		
		
		request.setAttribute("notice", vo);
		
		request.getRequestDispatcher("/orpDetail/detailOrpNotice.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
