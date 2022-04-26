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
import vlog.vo.StudentVO;

/**
 * Servlet implementation class Insert
 */
@WebServlet("/Insert.do")
public class Insert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
	      
	      //0. 클라이언트 요청시 전송데이터 mem_id, mem_name, mem_add1, mem_add2, mem_bir
	      //                     mem_hp, mem_zip, mem_pass, mem_mail   
	      //d:드라이브 c:_Lib beanutill1.8.3과 logging 1.1.1버전 라이브러리로 넣기
	      
	      //한꺼번에 가져와서 MemVo에 저장(파라미터값으로 받아가기 위해서)
	      StudentVO vo = new StudentVO();
	      
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
	      String id = service.insertStd(vo);
	      
	      
//	      여기에 넣을려면 out.appand와 out.println을 사용한다.
//	      response.setCharacterEncoding("utf-8");
//	      PrintWriter out = response.getWriter();//순서유의 인코딩이 먼저
	//   if(id!=null){
//	      {
//	      
//	      "sw" : "가입성공"
//	      }
	//   }else{
//	      {
//	      "sw": "가입실패"
//	      
//	      }
	//   
	//   }
	      
	      //3. request에 저장
	      request.setAttribute("insertId", id);
	            
	      //4. jsp로 
	      request.getRequestDispatcher("homepage/insert.jsp").forward(request, response);
		
	}

}
