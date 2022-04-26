package vlog.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vlog.service.ARServiceImpl;
import vlog.service.AskServiceImpl;
import vlog.service.IARService;
import vlog.service.IAskService;
import vlog.vo.OrpVo;
import vlog.vo.arVo;
import vlog.vo.askVo;

@WebServlet("/askRead.do")
public class askRead extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public askRead() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		//문의사항번호 가지고오기
		int asNo = Integer.parseInt(request.getParameter("idx"));
		System.out.println("\n\nasNo : " + asNo);
		
		//문의사항 뽑기
		IAskService service = AskServiceImpl.getAskService();
		askVo vo = service.detailAsk(asNo);
		
		//문의사항 댓글뽑기
		IARService rservice = ARServiceImpl.getARService();
		List<arVo> arList = rservice.arList(asNo);
		
		//세션에 저장하기
		HttpSession session = request.getSession();
		session.setAttribute("ask", vo);
		session.setAttribute("askRepl", arList);
		
		//로그인정보
		OrpVo login = (OrpVo)session.getAttribute("loginOrp");
		
		if(login != null) {
			System.out.println("\n\nlogin :" + login.getOrp_no());
		} else {
			System.out.println("\n\n보육원 로그인이 아님 ");
		}
		
		System.out.println("\n\narList size = " + arList.size() );
		request.getRequestDispatcher("/orpDetail/detailAsk.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
