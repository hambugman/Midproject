package vlog.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/galleryImage.do")
public class galleryImage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String fileName = request.getParameter("fileName");
		
		String imagePath = "D:\\A_TeachingMaterial\\4.MiddleProject\\workspace\\Vlog\\WebContent\\images";
		
		String filePath = imagePath + File.separator + fileName;
		
		File file = new File(filePath);
		
		BufferedInputStream bis = null;
		BufferedOutputStream bos = null;
		
		if(file.exists()) {
			try {
				bos = new BufferedOutputStream(response.getOutputStream());
				
				bis = new BufferedInputStream(new FileInputStream(file));
				
				byte[] buffer = new byte[1024 * 10];
				int len = -1;
				
				while((len = bis.read(buffer))>0) {
					bos.write(buffer, 0, len);
				}
				bos.flush();
				
			} catch (IOException e) {
				System.out.println("입출력 오류 : " + e.getMessage());
			}finally {
				if(bos!=null) try {bos.close();}catch(IOException e) {}
				if(bis!=null) try {bis.close();}catch(IOException e) {}
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
