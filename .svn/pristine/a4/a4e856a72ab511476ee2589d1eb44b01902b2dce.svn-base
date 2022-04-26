package vlog.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

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
import vlog.vo.OrpVo;

@WebServlet("/galList.do")
public class galList extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		IGalleryService service = GalleryServiceImpl.getGalleryService();
		IFileService fservice = FileServiceImpl.getService();
		
		//세션 생성 후 세션정보 가져오기
		HttpSession orphanage = request.getSession();
		OrpVo vo = (OrpVo) orphanage.getAttribute("orp");
		
		//보육원 상세페이지로 올때 orp_no 받아와야함
		List<GalleryVo> list = service.allGallery(vo.getOrp_no());
		List<FileVO> fileList = fservice.divSelect("갤러리");
		
		//로그인 세션 가져오기
		HttpSession session = request.getSession();
		OrpVo orpvo = (OrpVo)session.getAttribute("loginOrp");
		
		if(orpvo != null) {
			System.out.println("갤러리목록 : " + orpvo.getOrp_no() + "\n");
		} else {
			System.out.println("갤러리목록 세션 ㄴㄴ");
		}
		
		request.setAttribute("gallery", list);
		request.setAttribute("file", fileList);
		
		request.getRequestDispatcher("/orpDetail/gallery.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
