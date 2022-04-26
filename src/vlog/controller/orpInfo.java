package vlog.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vlog.service.IJjimService;
import vlog.service.IOrpService;
import vlog.service.JjimServiceImpl;
import vlog.service.OrpServiceImpl;
import vlog.vo.CommonVO;
import vlog.vo.OrpVo;

@WebServlet("/orpInfo.do")
public class orpInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public orpInfo() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String orpNo = request.getParameter("no");
		
		IOrpService service = OrpServiceImpl.getOrpService();
		
		OrpVo vo = service.orpDetail(orpNo);
		
		//로그인 세션 가져오기
		HttpSession session = request.getSession();
		OrpVo orpvo = (OrpVo)session.getAttribute("loginOrp");
		CommonVO com = (CommonVO)session.getAttribute("loginCommon");
		session.setAttribute("orp", vo);
		
		//일반회원이 로그인했으면 찜목록 확인 후 세션에 저장
		IJjimService jservice = JjimServiceImpl.getJjimService();
		Map<String, String> map = new HashMap<String, String>();
		
		Object ono = "";
		if(com != null) {
			map.put("gen_id", com.getGen_id());
			map.put("orp_no", orpNo);
			ono = jservice.jjimOrp(map);
			System.out.println("\n\nono = " + ono);
		}else {
			System.out.println("일반회원로그인 ㄴㄴ");
		}
		
		session.setAttribute("jjimYN", ono);
		
		System.out.println("\n\norpNo = " + orpNo + "\n\n");
		
		request.getRequestDispatcher("/orpDetail/orpMain.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
