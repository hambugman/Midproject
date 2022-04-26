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

import vlog.service.IVBoardService;
import vlog.service.VBoardServiceImpl;
import vlog.vo.CommonVO;
import vlog.vo.OrpVo;
import vlog.vo.StudentVO;

/**
 * Servlet implementation class ComCrystal
 */
@WebServlet("/ComCrystal.do")
public class ComCrystal extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		CommonVO   vo = new CommonVO();
		//writer는 세션에서 가져오면 됨
		//0 클라이언트 요청시 전송값- password
		try {
			BeanUtils.populate(vo, request.getParameterMap());
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		HttpSession session = request.getSession();
		CommonVO comvo = (CommonVO) session.getAttribute("loginCommon");
		vo.setGen_id(comvo.getGen_id());
		
		//1 service 객체 얻기
		IVBoardService  service = VBoardServiceImpl.getService();
		
		//2 service메소드 호출 - 결과값 
		int num = service.comCrystal(vo);
	}

}
