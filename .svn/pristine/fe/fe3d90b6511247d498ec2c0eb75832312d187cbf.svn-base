package vlog.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vlog.service.IVBoardService;
import vlog.service.VBoardServiceImpl;

/**
 * Servlet implementation class BoardHit
 */
@WebServlet("/VBoardHit.do")
public class VBoardHit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VBoardHit() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//0 . 클라이언트 요청시 전송값 받기 - num
		int num = Integer.parseInt(request.getParameter("num"));
		System.out.println("\n\n\n"+num);
		//1. service객체 얻기 
		IVBoardService  service = VBoardServiceImpl.getService();
		
		//2. service메소드 호출 - 결과값 
		int res = service.updateHit(num);
		
		
	    /*//3//html형식으로 출력  또는 json데이타 생성
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		out.append("{");
		if(res > 0) {
			out.print("\"sw\" : \"성공\"");  
			
		}else{
			out.print("\"sw\" : \"실패\"");  
		}
		out.print("}");
		*/
		
		//3. request에 저장 
		request.setAttribute("res", res);
				
		//4. jsp로 
		request.getRequestDispatcher("vboard/result.jsp").forward(request, response);
	  
	}

}










