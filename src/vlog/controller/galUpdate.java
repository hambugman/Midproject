package vlog.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vlog.service.GalleryServiceImpl;
import vlog.service.IGalleryService;
import vlog.vo.GalleryVo;

@WebServlet("/galUpdate.do")
public class galUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		//세션 생성 후 정보 가져오기
		HttpSession session = request.getSession();
		GalleryVo vo = (GalleryVo)session.getAttribute("gallery");
		
		//세션 정보로 갤러리 내용 뽑기
		IGalleryService service = GalleryServiceImpl.getGalleryService();
		GalleryVo gvo = service.detailGallery(vo.getGallery_no());
		
		//수정된 정보 가져오기
		String gTitle = request.getParameter("gTitle");
		String gCont = request.getParameter("gCont");
		
		System.out.println("\n\ngTitle : " + gTitle);
		System.out.println("\n\ngCont : " + gCont);

		gvo.setGallery_title(gTitle);
		gvo.setGallery_cont(gCont);
		
		int cnt = service.galleryUpdate(gvo);
		
		System.out.println("\n\ncnt=" + cnt);

		response.sendRedirect(request.getContextPath() + "/galList.do");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
