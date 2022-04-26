package vlog.controller;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import vlog.service.IVBoardService;
import vlog.service.VBoardServiceImpl;
import vlog.vo.VaReplyVO;

/**
 * Servlet implementation class ReplyInsert
 */
@WebServlet("/VReplyInsert.do")
public class VReplyInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		VaReplyVO vo = new VaReplyVO();
		
		try {
			BeanUtils.populate(vo,request.getParameterMap());
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
//		vo.setBonum(Integer.parseInt(request.getParameter("bonum")));
//		vo.setCont(request.getParameter("cont"));
//		vo.setName(request.getParameter("name"));
	
		//1 
		IVBoardService service = VBoardServiceImpl.getService();
		
		//2
		int rnum = service.insertReply(vo);
		
		//3
		request.setAttribute("res", rnum);
		
		//
		request.getRequestDispatcher("vboard/result.jsp").forward(request, response);
	
	
	
	
	}

}
