package vlog.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vlog.service.FileServiceImpl;
import vlog.service.IFileService;
import vlog.vo.FileVO;


@WebServlet("/MainNanumImage.do")
public class MainNanumImage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public MainNanumImage() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");

		IFileService fileservice = FileServiceImpl.getService();
		List<FileVO> fileList = fileservice.divSelect("나눔");
		request.setAttribute("imagefile", fileList);

		request.getRequestDispatcher("/board/mainnanum.jsp").forward(request, response);

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
