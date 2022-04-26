package vlog.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
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
import vlog.service.IFileService;
import vlog.service.IShareService;
import vlog.service.ShareServiceImpl;
import vlog.vo.CommonVO;
import vlog.vo.FileVO;
import vlog.vo.ShareVO;
import vlog.vo.StudentVO;


@WebServlet("/sharePage/InsertNanum.do")
@MultipartConfig(
		fileSizeThreshold=1024 *1024 * 10,  //<10MG>
		maxFileSize =1024 * 1024 *30, //<30MG>
		maxRequestSize=1024*1024*50 //<50MG>
	)
public class InsertNanum extends HttpServlet {
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
	      ShareVO vo = new ShareVO();
	      
	      try {
	         BeanUtils.populate(vo, request.getParameterMap());//파라미터 맵에 있는것을 vo에 집어넣음
	      } catch (IllegalAccessException e) {
	         e.printStackTrace();
	      } catch (InvocationTargetException e) {
	         e.printStackTrace();
	      }
	     IShareService service =ShareServiceImpl.getService(); 
	      
	     
	     HttpSession session=request.getSession();
	     CommonVO comvo = (CommonVO)session.getAttribute("loginCommon"); //일반회원
	     PrintWriter out= response.getWriter();
	     
	     if(comvo==null) { //session에 해당 'key값'으로 지정된 데이터가 없을 때 
				out.println("<script>alert('nono sorry you can not this');location.href='"+request.getContextPath()+"/sharePage/NanumList.do"+"';</script>");
		}else {
			vo.setGen_id(comvo.getGen_id());  // 로그인 한 아이디 넣어야 된다.
		}
	     
			
//		vo.setGen_id(svo.getStd_id());  // 로그인 한 아이디 넣어야 된다.

		int shareno = service.insertnanum(vo);
	     
	     //------------------
	     //upload한 파일이 저장될 폴더 설정
		String uploadPath ="D:\\A_TeachingMaterial\\4.MiddleProject\\workspace\\Vlog\\WebContent\\images";  //서버쪽에 저장될 위치 설정
		
		//저장될 폴더가 없으면 새로 생성한다.
		File fileUploadDir=new File(uploadPath);
		if(fileUploadDir.exists()) {
			fileUploadDir.mkdirs();
		}
		FileVO fileVo=new FileVO();
		
	
		//------------------------------------------------------------------
				String fileName=""; //파일명이 저장될 변수선언
//				
//				//업로드한 파일정보가 저장될 List객체생성
			//	List<FileVO> fileList=new ArrayList<FileVO>();
				 
			/*
			
			-Servlet 3.0 이상에 새롭게 추가된 Upload용 메서드 
			1) request.getParts(); => 전체Part객체가 저장된 컬렉션을 반환한다.
			2) request.getPart("part이름") => 지정된 이름을 가진 part객체를 반환한다.
			*/
			for(Part part :request.getParts()) {
				//파일명 구하기 
				fileName=extractFileName(part);
				
				//파일명이 공백("")이면 이것은 파일이 아닌 일반 파라미터라는 의미이다.
				if(!"".contentEquals(fileName)) {
					//1개의 업로드 파일에 대한 정보를 저장할 객체 생성
//					FileVO fileVo=new FileVO();
//				
//					fileVo.setFileName(fileName);
//					fileVo.setFileSize((int)Math.ceil(part.getSize()/1024.0));
					
					try {
						//파일 저장-->Part객체의 write()메서드 이용
						part.write(uploadPath+File.separator+fileName);
						fileVo.setFilepath(fileName);
						fileVo.setBoard_no(shareno);
						fileVo.setBoard_div("나눔");
						System.out.println("파일저장성공!");
					
					} catch (IOException e) {
//						fileVo.setUploadStatus("Fail : "+e.getMessage());
					}
					IFileService fservice =FileServiceImpl.getService(); 
					int fileinput=fservice.insertfile(fileVo);
					
					//처리된 파일 정보를 저장한 객체를 List에 추가 
//					fileList.add(fileVo);  
				}//if문 끝 ...
				
			} //for문  끝...
	     //-------------------
	     
//	     request.setAttribute("insertnanum", shareno);
//	     request.getRequestDispatcher("shareHome.jsp");
			response.sendRedirect(request.getContextPath()+"/sharePage/NanumList.do");
	}

}
