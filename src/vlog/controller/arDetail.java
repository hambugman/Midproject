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
import vlog.service.IARService;
import vlog.vo.OrpVo;
import vlog.vo.arVo;
import vlog.vo.askVo;

@WebServlet("/arDetail.do")
public class arDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		//답변 저장할 vo
		arVo vo = new arVo();
		
		//idx값 가져오기
		int idx =Integer.parseInt(request.getParameter("idx")) ;
		
		//세션 생성하기
		HttpSession session = request.getSession();
		
		//세션에 키값("ask", "orp")으로 세션안의 값 뽑기(askVo, OrpVo)
		askVo ask = (askVo)session.getAttribute("ask");
		OrpVo orp = (OrpVo)session.getAttribute("orp");
		
		//해당 문의사항에 달린 댓글 리스트 뽑기
		IARService service = ARServiceImpl.getARService();
		List<arVo> list = service.arList(ask.getAsk_no());
		
		//idx와 같은 답변 찾기
		for(int i = 0; i < list.size(); i++) {
			arVo n = list.get(i);
			if(idx == list.get(i).getRa_no()) {
				vo.setAsk_no(n.getAsk_no());
				vo.setOrp_no(n.getOrp_no());
				vo.setRa_cont(n.getRa_cont());
				vo.setRa_date(n.getRa_date());
				vo.setRa_no(idx);
			}
		}
		
		//setAttribute로 세션에 저장하기 ("키값", 밸류값)
		session.setAttribute("arDetail", vo);
		
		//request.setAttribute("키값", 밸류값)을 사용하지 않았기때문에
		//redirect 사용
		response.sendRedirect(request.getContextPath() + "/arUpdate.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
