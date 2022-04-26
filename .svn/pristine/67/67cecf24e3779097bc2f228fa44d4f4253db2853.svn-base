package vlog.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vlog.service.FileServiceImpl;
import vlog.service.GalleryServiceImpl;
import vlog.service.IFileService;
import vlog.service.IGalleryService;
import vlog.vo.FileVO;
import vlog.vo.GalleryVo;

@WebServlet("/oneGallery.do")
public class oneGallery extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		IGalleryService service = GalleryServiceImpl.getGalleryService();
		IFileService fservice = FileServiceImpl.getService();
		
		int galNum = Integer.parseInt(request.getParameter("num"));
		System.out.println("\n\n\ngalNum = " + galNum + "\n");
		
		//자료 뽑기
		List<FileVO> file = fservice.divSelect("갤러리");
		GalleryVo gallery = service.detailGallery(galNum);
		
		//file중에 galNum이랑 같은거 뽑기
		List<FileVO> fileList = new ArrayList<FileVO>();
		
		for(FileVO vo1 : file) {
			if(vo1.getBoard_no() == galNum) {
				fileList.add(vo1);
			}
		}
		
		//세션에 저장하기
		HttpSession session=request.getSession();
		session.setAttribute("gallery", gallery);
		
		System.out.println("\n\ngalNo" + gallery.getGallery_no() + "\n");
		
		System.out.println("fileno = " + file.size() + "\n\n\n");
		System.out.println("List = " + fileList.size() + "\n\n\n");
		
		//보내기
		request.setAttribute("file", fileList);
		request.setAttribute("gallery", gallery);
		
		request.getRequestDispatcher("/orpDetail/detailGallery.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
