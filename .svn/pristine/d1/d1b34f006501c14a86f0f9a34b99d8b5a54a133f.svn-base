package vlog.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vlog.service.IVBoardService;
import vlog.service.VBoardServiceImpl;
import vlog.vo.VolunteerBoardVO;

/**
 * Servlet implementation class List
 */
@WebServlet("/VBoardList.do")
public class VBoardList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VBoardList() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//0. 클라이넌트 요청시 전송돠는 값  - page 
		
		String  page = request.getParameter("page");   
		int  spage =Integer.parseInt(page);
		//1. service객체 
		IVBoardService  service = VBoardServiceImpl.getService();
		
		//2. service 메소드 호출  - pageIngo(spage)
		//spage에 따라 start, end, startPage , endPage, totalPage값 구하기 
		Map<String,	Integer>  map = service.pageInfo(spage);
		
		List<VolunteerBoardVO>  list = service.selectByPage(map);
		
		//3. 결과값 저장  - list, startPage , endPage, totalPage
		request.setAttribute("list", list);
		request.setAttribute("tpage",map.get("tpage") );// totalPage
		request.setAttribute("spage",map.get("spage") );// startPage
		request.setAttribute("epage",map.get("epage") );// endPage
		
		//4. 응답결과생성 - json - jsp로 위임 -forword
	 request.getRequestDispatcher("vboard/list.jsp").forward(request, response);
		
	}

}
