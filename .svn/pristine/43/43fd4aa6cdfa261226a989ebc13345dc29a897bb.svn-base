package vlog.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vlog.service.IVBoardService;
import vlog.service.VBoardServiceImpl;
import vlog.vo.CommonVO;
import vlog.vo.StudentVO;
import vlog.vo.VolunteerBoardVO;

/**
 * Servlet implementation class BoardUpdate
 */
@WebServlet("/VBoardUpdate.do")
public class VBoardUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VBoardUpdate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		CommonVO comvo=(CommonVO) session.getAttribute("loginCommon");
		//0. 클라이언트 요청시 전송 데이타 - subject, writer, mail, content, num
		VolunteerBoardVO  vo = new VolunteerBoardVO();
		vo.setVboard_title(request.getParameter("subject"));
		vo.setGen_id(comvo.getGen_id());
		vo.setVboard_cont(request.getParameter("content"));
		vo.setVboard_no(Integer.parseInt(request.getParameter("vboard_no")));
		
		
		//1. service객체 얻기 
		IVBoardService  service = VBoardServiceImpl.getService();
		VolunteerBoardVO vvo=service.detail(Integer.parseInt(request.getParameter("vboard_no")));
		
		int cnt = 0;
		//2. service메소드 호출 - 결과값 얻기 
		if(vvo.getGen_id().equals(comvo.getGen_id())) {
			cnt = service.updateBoard(vo);
		}else {
			cnt = 0;
			
		}
		
		//3. 결과출력 또는 json데이타 생성 - jsp에 위임 
		request.setAttribute("res", cnt);
		request.getRequestDispatcher("vboard/result.jsp").forward(request, response);
	}
}












