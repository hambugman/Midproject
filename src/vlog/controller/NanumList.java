package vlog.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vlog.service.ApplySelServiceImpl;
import vlog.service.ApplyServiceImpl;
import vlog.service.CommonServiceImpl;
import vlog.service.FileServiceImpl;
import vlog.service.IApplySelService;
import vlog.service.IApplyService;
import vlog.service.ICommonService;
import vlog.service.IFileService;
import vlog.service.IShareService;
import vlog.service.ISharejoinService;
import vlog.service.ShareServiceImpl;
import vlog.service.SharejoinServiceImpl;
import vlog.vo.ApplyVO;
import vlog.vo.CommonVO;
import vlog.vo.FileVO;
import vlog.vo.ShareVO;
import vlog.vo.SharejoinVO;
import vlog.vo.StudentVO;


@WebServlet("/sharePage/NanumList.do")
public class NanumList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public NanumList() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		
		IShareService service=ShareServiceImpl.getService();
		IFileService fileservice = FileServiceImpl.getService();
		IApplySelService applyservice = ApplySelServiceImpl.getApplySelService();
		ICommonService commservice=CommonServiceImpl.getCommonService();
		
		ISharejoinService sharejoinservice=SharejoinServiceImpl.getService();
		
		
		
		HttpSession session=request.getSession();
		StudentVO svo=(StudentVO)session.getAttribute("loginStd");

		if(svo!=null){
			List<ApplyVO> applist= applyservice.selectapply(svo.getStd_id());
			request.setAttribute("applist", applist);
			
		}
	
		
		List<ShareVO> list=service.selectAll();
		List<FileVO> fileList = fileservice.divSelect("나눔");
		List<SharejoinVO> shareJoinList=sharejoinservice.selectAll();
		
		request.setAttribute("sharejoin", shareJoinList);
		request.setAttribute("nanum", list);
		request.setAttribute("file", fileList);

		
		request.getRequestDispatcher("/sharePage/shareHome.jsp").forward(request, response);
		
		
		
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}

