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
import javax.servlet.http.Part;

import org.apache.commons.beanutils.BeanUtils;

import vlog.service.FileServiceImpl;
import vlog.service.FundService;
import vlog.service.IFileService;
import vlog.service.IFundServiceimpl;
import vlog.vo.FileVO;
import vlog.vo.FundVO;


@WebServlet("/insertFund.do")

//용량 지정
@MultipartConfig(
		fileSizeThreshold=1024 *1024 * 10,  //<10MG>
		maxFileSize =1024 * 1024 *30, //<30MG>
		maxRequestSize=1024*1024*50 //<50MG>
		)
		
public class insertFund extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	//Part영역에서 읽어올 '파일명'을 찾아 반환하는 메서드
			private String extractFileName(Part part) {
				String fileName ="";
				
				String contentDisposition=part.getHeader("content-disposition");
				//form-data; name="username" ==>파일일때
				//form-data :name="uploadFile1" ; filename="test1.txt" ==>파일일 때
				
				String[] items=contentDisposition.split(";");
				for(String item :items) {
					if(item.trim().startsWith("filename")) {
						//filename="test1.txt" ==>item변수 값 
						fileName=item.substring(item.indexOf("=")+2,item.length()-1);
					}
				}
				return fileName;
			}
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		FundVO vo = new FundVO();
		
		try {
			BeanUtils.populate(vo, request.getParameterMap());
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		}
		FundService service = IFundServiceimpl.getService();
		
		int cnt = service.insertFund(vo);

		//--------------------------------------------------파일업로드---------------------------------------------
		String uploadPath ="D:\\A_TeachingMaterial\\4.MiddleProject\\workspace\\Vlog\\WebContent\\images";  //서버쪽에 저장될 위치 설정
		
		File fileUploadDir=new File(uploadPath);
		if(fileUploadDir.exists()) {
			fileUploadDir.mkdirs();
		}
		FileVO fileVo=new FileVO();
		
		String fileName="";
		
//			-Servlet 3.0 이상에 새롭게 추가된 Upload용 메서드 
//			 request.getParts(); => 전체Part객체가 저장된 컬렉션을 반환한다.
		for(Part part : request.getParts()) {
			//파일명구하기
			fileName=extractFileName(part);
			
			
			if(!"".contentEquals(fileName)) {
				
				try {
					part.write(uploadPath+File.separator+fileName);
					fileVo.setFilepath(fileName);
					
					//board_no가 0으로 찍힘
					fileVo.setBoard_no(cnt);
					fileVo.setBoard_div("펀딩");
					System.out.println("파일저장완료");
					
				} catch (IOException e) {
					System.out.println("fail:"+e.getMessage());
				}
				IFileService fservice = FileServiceImpl.getService();
				int fileinput = fservice.insertfile(fileVo);
				//파일을 list에 추가
			}
		}
		response.sendRedirect(request.getContextPath()+"/FundManlist.do");
	}

	
	


}
