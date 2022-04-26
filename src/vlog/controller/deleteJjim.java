package vlog.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vlog.service.IJjimService;
import vlog.service.JjimServiceImpl;
import vlog.vo.CommonVO;
import vlog.vo.OrpVo;
import vlog.vo.jjimVo;

@WebServlet("/deleteJjim.do")
public class deleteJjim extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		System.out.println("deleteJjim으로 넘어옴");
		
		//세션생성 후 세션 정보 가져오기(일반회원, 선택 보육원)
		HttpSession session = request.getSession();
		CommonVO com = (CommonVO)session.getAttribute("loginCommon");
		OrpVo orp = (OrpVo)session.getAttribute("orp");
		
		System.out.println("\ncomId : " + com.getGen_id() + "\n");
		System.out.println("\norpNo : " + orp.getOrp_no() + "\n");

		//찜vo에 값 넣기
		jjimVo vo = new jjimVo();
		vo.setGen_id(com.getGen_id());
		vo.setOrp_no(orp.getOrp_no());
		
		//찜 서비스
		IJjimService service = JjimServiceImpl.getJjimService();
		int cnt = service.jjimDelete(orp.getOrp_no());
		
		if(cnt == 0) {
			System.out.println("\n지우기 실패\n");
		}else {
			System.out.println("\n지우기 성공\n");
		}
		
		request.setAttribute("res", cnt);
		
		request.getRequestDispatcher("orpDetail/result2.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
