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
import vlog.vo.CommunityVO;
import vlog.vo.StudentVO;

/**
 * Servlet implementation class InsertCom
 */
@WebServlet("/InsertCom.do")
public class InsertCom extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		//세션에서 유저 아이디 가져온 다음 그걸로 그 유저 디테일 빼는 메서드 작성한 다음
		//그 메서드 사용해서 유저 지역 가져온 다음 그 지역도 커뮤니티 테이블에 넣어줘야함.
		HttpSession session = request.getSession();
		CommunityVO vo = new CommunityVO();
		vo.setCommu_title(request.getParameter("title")); //제목
		vo.setCommu_cont(request.getParameter("cont")); // 내용
		
		
		StudentVO stdvo= (StudentVO) session.getAttribute("loginStd");
		System.out.println(stdvo); 
		
		vo.setStd_id(stdvo.getStd_id());//세션 로그인 아이디 넣기
		vo.setStd_location(stdvo.getStd_location()); //지역 넣기
		
		IComBoardService service = ComBoardServiceImpl.getService();
		
		
		int result = service.insertCom(vo);
		
		response.sendRedirect("board/communityboard.jsp");
	
	}

}
