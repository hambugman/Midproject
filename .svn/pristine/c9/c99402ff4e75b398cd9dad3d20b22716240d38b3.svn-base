package vlog.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vlog.dao.ComBoardImpl;
import vlog.dao.IComBoard;
import vlog.service.ComBoardServiceImpl;
import vlog.service.IComBoardService;
import vlog.service.IVBoardService;
import vlog.service.VBoardServiceImpl;

/**
 * Servlet implementation class ComBoardHit
 */
@WebServlet("/ComBoardHit.do")
public class ComBoardHit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ComBoardHit() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//0 . 클라이언트 요청시 전송값 받기 - num
				int num = Integer.parseInt(request.getParameter("num"));
				System.out.println("\n\n\n"+num);
				//1. service객체 얻기 
				IComBoardService  service = ComBoardServiceImpl.getService();
				
				//2. service메소드 호출 - 결과값 
				int	res = service.updateHit(num);
				
				
				//3. request에 저장 
				request.setAttribute("res", res);
						
				//4. jsp로 
				request.getRequestDispatcher("vboard/result.jsp").forward(request, response);
	}

}
