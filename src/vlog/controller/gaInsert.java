package vlog.controller;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.apache.commons.beanutils.BeanUtils;

import vlog.service.FileServiceImpl;
import vlog.service.GalleryServiceImpl;
import vlog.service.IFileService;
import vlog.service.IGalleryService;
import vlog.vo.FileVO;
import vlog.vo.GalleryVo;
import vlog.vo.OrpVo;

@WebServlet("/galInsert.do")
@MultipartConfig(
		fileSizeThreshold = 1024 * 1024 * 10,
		maxFileSize = 1024 * 1024 * 30, maxRequestSize = 1024 * 1024 * 50
		)
public class gaInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		GalleryVo vo = new GalleryVo();
		
		//세션 생성 후 세션정보 가져오기
		HttpSession orphanage = request.getSession();
		OrpVo orp = (OrpVo) orphanage.getAttribute("orp");
		
		String galtitle = request.getParameter("gallery_title");
		String galcont = request.getParameter("gallery_cont");
		
		System.out.println("\n\n" + galtitle);
		System.out.println("\n\n" + galcont);
		System.out.println("\n\n" + orp.getOrp_no());
		
		vo.setGallery_title(galtitle);
		vo.setGallery_cont(galcont);
		vo.setOrp_no(orp.getOrp_no());
		
		IGalleryService service = GalleryServiceImpl.getGalleryService();
		
		int cnt = service.galleryInsert(vo);
		
		
		//--------------------------------------------------------------
		//파일업로드
		String uploadPath ="D:\\A_TeachingMaterial\\4.MiddleProject\\workspace\\Vlog\\WebContent\\images";
		
		File fileUploadDir = new File(uploadPath);
		if(!fileUploadDir.exists()) {
			fileUploadDir.mkdirs();
		}
		
		String fileName = "";
		
		List<FileVO> fileList = new ArrayList<FileVO>();
		
		for(Part part : request.getParts()) {
			fileName = extractFileName(part);
			
			if(!"".equals(fileName)) {
				FileVO filevo = new FileVO();
				
				try {
					part.write(uploadPath + File.separator + fileName);
					filevo.setFilepath(fileName);
					filevo.setBoard_no(cnt);
					filevo.setBoard_div("갤러리");
				} catch (IOException e) {
					System.out.println("Fail : " + e.getMessage());
				}
				
				IFileService fservice = FileServiceImpl.getService();
				int fileinput = fservice.insertfile(filevo);
			}
		}
		
		//--------------------------------------------------------------
		response.sendRedirect(request.getContextPath() + "/galList.do");
		
	}
	
	
	//Part영역에서 읽어올 '파일명'을 찾아 반환하는 메서드
	private String extractFileName(Part part) {
		String fileName = "";
		String contentDisposition = part.getHeader("content-disposition");
		
		String[] items = contentDisposition.split(";");
		for(String item : items) {
			if(item.trim().startsWith("filename")) {
				fileName = item.substring(item.indexOf("=") + 2, item.length() -1);
			}
		}
		return fileName;
	}

}
