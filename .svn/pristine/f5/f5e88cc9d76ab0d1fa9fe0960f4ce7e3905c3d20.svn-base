package vlog.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vlog.service.ICommonselect;
import vlog.service.commonselectImpl;
import vlog.vo.CommonVO;

@WebServlet("/Commonselect")
public class Commonselect extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Commonselect() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		ICommonselect service = commonselectImpl.getService();

		List<CommonVO> list = service.selectcommonAll();

		System.out.println("\n\n");
		
		request.setAttribute("commonselect", list);
		
		request.getRequestDispatcher("myPage/common.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
