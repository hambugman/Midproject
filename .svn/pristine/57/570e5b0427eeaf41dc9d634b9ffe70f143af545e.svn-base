package vlog.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vlog.service.IShareService;
import vlog.service.ISharejoinService;
import vlog.service.ShareServiceImpl;
import vlog.service.SharejoinServiceImpl;
import vlog.vo.ShareVO;
import vlog.vo.SharejoinVO;


@WebServlet("/shareJoinIdSelect")
public class shareJoinIdSelect extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public shareJoinIdSelect() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		IShareService service=ShareServiceImpl.getService();
		
		List<ShareVO> list=service.selectAll();
		
		request.setAttribute("comnanumjoinlist", list);
		request.getRequestDispatcher("/myPage/nanumpage.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
