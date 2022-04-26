package vlog.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vlog.service.IONoticeService;
import vlog.service.oNoticeServiceImpl;
import vlog.vo.OrpVo;
import vlog.vo.orpNoVo;

@WebServlet("/orpNoticeList.do")
public class orpNoticeList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		IONoticeService service = oNoticeServiceImpl.getONService();
		
		//세션 생성 후 세션 정보 가져오기
		HttpSession session = request.getSession();
		OrpVo vo = (OrpVo) session.getAttribute("orp");
		
		//세션아이디로 보육원별 공지사항 목록 뽑기
		List<orpNoVo> list = service.allONotice(vo.getOrp_no());
		
		//로그인 세션 가져오기
		OrpVo orpvo = (OrpVo)session.getAttribute("loginOrp");
		
		if(orpvo != null) {
			System.out.println("공지사항 : " + orpvo.getOrp_no() + "\n");
		} else {
			System.out.println("공지사항 세션 ㄴㄴ");
		}
		
		request.setAttribute("list", list);
		
		request.getRequestDispatcher("/orpDetail/orpNotice.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
