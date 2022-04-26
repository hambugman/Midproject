package vlog.controller;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;

import vlog.service.ComBoardServiceImpl;
import vlog.service.IComBoardService;
import vlog.vo.ComReplyVO;
import vlog.vo.CommunityVO;
import vlog.vo.StudentVO;

/**
 * Servlet implementation class ReplyInsert
 */
@WebServlet("/ReplyComInsert.do")
public class ReplyComInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ReplyComInsert() {
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		IComBoardService  service = ComBoardServiceImpl.getService();
		CommunityVO comvo=service.detailComBoard(Integer.parseInt(request.getParameter("bonum")));
		HttpSession session = request.getSession();
		StudentVO stdvo=(StudentVO)session.getAttribute("loginStd");
		//0. 클라이언트 요청시 전송값 받기 
		ComReplyVO  vo = new ComReplyVO();
		vo.setCommu_no(Integer.parseInt(request.getParameter("bonum")));
		vo.setRc_cont(request.getParameter("cont"));
		
		if(comvo.getStd_id().equals(stdvo.getStd_id())) {
			vo.setStd_id("글쓴이");
		}else {
			vo.setStd_id(request.getParameter("name"));
		}
		
		//1
		
		//2
		
		int  rnum = service.insertReply(vo);
		
		//3. 
		request.setAttribute("res", rnum);
		
		//
		request.getRequestDispatcher("board/result.jsp").forward(request, response);
		
		
		
		
	}

}










