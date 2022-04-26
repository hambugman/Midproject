package vlog.controller;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import vlog.service.ComBoardServiceImpl;
import vlog.service.IComBoardService;
import vlog.vo.CommonVO;
/**
 * Servlet implementation class CommonSign
 */
@WebServlet("/CommonSign.do")
public class CommonSign extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
	      CommonVO vo = new CommonVO();
	      
	      try {
	         BeanUtils.populate(vo, request.getParameterMap());//파라미터 맵에 있는것을 vo에 집어넣음
	      } catch (IllegalAccessException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      } catch (InvocationTargetException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }   
	      
	      
	      //1. service객체 얻기
	      IComBoardService service = ComBoardServiceImpl.getService();
	      
	      //2. service 메소드 호출 - 결과값 받기
	      String id = service.insertCommon(vo);
		
		request.setAttribute("insertId", id);
		
		if(id==null) {
			//회원가입 실패
			request.getRequestDispatcher("homepage/insert.jsp").forward(request, response);
		}else {
			//성공
			request.getRequestDispatcher("homepage/insert.jsp").forward(request, response);
		}
		
		
	
	}

}
