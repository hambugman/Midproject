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
import vlog.vo.VolunteerBoardVO;

/**
 * Servlet implementation class BoardDelete
 */
@WebServlet("/VBoardDelete.do")
public class VBoardDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VBoardDelete() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//0. 클라이언트 요청시 renum
		int num = Integer.parseInt(request.getParameter("num"));
			System.out.println("num= " + num);	
		//1.  service객체 
		IVBoardService  service = VBoardServiceImpl.getService();
		HttpSession session = request.getSession();
		CommonVO comvo = (CommonVO) session.getAttribute("loginCommon");
		VolunteerBoardVO vvo=service.detail(num);
		//2 service메소드 호출 - 결과값 
		int res = 0;
		if(vvo.getGen_id().equals(comvo.getGen_id())) {
			res = service.deleteBoard(num);
		}else {
			res = 0;
		}
		//------------------------------------------
		//전체글갯수 가져오기 
		 int count = service.totalCount();
		
		//한페이지당 출력 글 갯수 
		int perList = 5;
		
		//한화면에 출력할 페이지수 
		int perPage = 2;
		
		//전체페이지수 - 전체글갯수 / perList
		int totalPage =   (int)Math.ceil((double)count / perList);
		//------------------------------------------------------
		 //3. request에 저장
        request.setAttribute("res", res);
        request.setAttribute("tpage", totalPage);
        
        //4. jsp로 forward
        request.getRequestDispatcher("vboard/delresult.jsp").forward(request, response);
		 
	}

}
