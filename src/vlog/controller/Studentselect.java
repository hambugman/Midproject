package vlog.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vlog.service.IStudentSelect;
import vlog.service.StudentSelectImpl;
import vlog.vo.StudentVO;



@WebServlet("/Studentselect")
public class Studentselect extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public Studentselect() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		IStudentSelect service = StudentSelectImpl.getService();

		List<StudentVO> list = service.selectstudentAll();

		System.out.println("\n\n");
		
		request.setAttribute("studentselect", list);
		
		request.getRequestDispatcher("myPage/student.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
