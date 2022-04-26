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
 * Servlet implementation class ReplyUpdate
 */
@WebServlet("/VReplyUpdate.do")
public class VReplyUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("utf-8");
		
		int renum=Integer.parseInt(request.getParameter("rv_no"));
		String cont=request.getParameter("rv_cont");
		
		VaReplyVO vo = new VaReplyVO();
		
		try {
			BeanUtils.populate(vo, request.getParameterMap());
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//1. 서비스 객체 얻기
		IVBoardService service = VBoardServiceImpl.getService();
		//2. 서비스 메서드 호출 - 결과값 받기
		int res=service.updateReply(vo);
			//3. request에 저장
			request.setAttribute("res", res);
			//4. jsp로 forward
			request.getRequestDispatcher("vboard/result.jsp").forward(request, response);
		
		
		
		
		
		
		
		
		
	
	
	
	
	
	
	
	
	}

}
