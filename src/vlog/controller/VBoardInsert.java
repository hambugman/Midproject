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
import vlog.vo.StudentVO;
import vlog.vo.VolunteerBoardVO;

/**
 * Servlet implementation class BoardInsert
 */
@WebServlet("/VBoardInsert.do")
public class VBoardInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VBoardInsert() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		VolunteerBoardVO   vo = new VolunteerBoardVO();
		//writer는 세션에서 가져오면 됨
		//0 클라이언트 요청시 전송값- subject, writer, mail, password, content
		try {
			BeanUtils.populate(vo, request.getParameterMap());
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//0-1 ip설정
//		vo.setWip(request.getRemoteAddr());
		HttpSession session = request.getSession();
		CommonVO stdvo = (CommonVO) session.getAttribute("loginCommon");
		vo.setGen_id(stdvo.getGen_id());
		
		System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"+vo.getGen_id());
		System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"+vo.getVboard_cont());
		System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"+vo.getVboard_title());
		
		//1 service 객체 얻기
		IVBoardService  service = VBoardServiceImpl.getService();
		
		//2 service메소드 호출 - 결과값 
		int num = service.insertBoard(vo);
		
		//3. request.에 저장
		request.setAttribute("res", num);
		
		//4jsp로 
		request.getRequestDispatcher("vboard/result.jsp").forward(request, response);
		
		
	}

}
