package vlog.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;

import vlog.service.ApplyServiceImpl;

import vlog.service.IApplyService;

import vlog.vo.ApplyVO;
import vlog.vo.ShareVO;
import vlog.vo.StudentVO;



@WebServlet("/NanumApply.do")
public class NanumApply extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public NanumApply() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		ApplyVO vo = new ApplyVO();
	    
		try {
			BeanUtils.populate(vo, request.getParameterMap());
			
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		}
		IApplyService service = ApplyServiceImpl.getService();
	    		
		HttpSession session=request.getSession();
		StudentVO svo=(StudentVO)session.getAttribute("loginStd");
	    PrintWriter out= response.getWriter();
	    
	    if(svo==null) { //session에 해당 'key값'으로 지정된 데이터가 없을 때 
			out.println("<script>alert('nono sorry you can not this');location.href='"+request.getContextPath()+"/sharePage/NanumList.do"+"';</script>");
			//vo.setStd_id("ny1067");  // 로그인 한 아이디 넣어야 된다.
			out.close();
		}else {
			//out.println("<h3>userID의 세션값 : "+svo.getStd_id()+"</h3>");
			vo.setStd_id(svo.getStd_id());  // 로그인 한 아이디 넣어야 된다.
		}
		
	    service.applynanum(vo);
	   
		response.sendRedirect(request.getContextPath()+"/sharePage/NanumList.do");

//	    int insert = 
		
//		
//		request.setAttribute("apply", insert);
//		
//		request.getRequestDispatcher("/sharePage/shareHome.jsp").forward(request, response);

	}
	
	
	private char[] alert(String string) {
		return null;
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
