package vlog.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vlog.service.FileServiceImpl;
import vlog.service.FundService;
import vlog.service.IFileService;
import vlog.service.IFundServiceimpl;
import vlog.vo.FileVO;
import vlog.vo.FundVO;

@WebServlet("/FundList.do")
public class FundList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	
	//펀딩게시판 리스트
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("utf-8");
		
		FundService service = IFundServiceimpl.getService();
		IFileService fileservice = FileServiceImpl.getService();
		
		
		List<FundVO>fundlist = service.getallFund();	//sql에 있는 fund에 대한 정보를 list에 넣음
		List<FileVO>filelist = fileservice.divSelect("펀딩");
		
		request.setAttribute("file",filelist);
		request.setAttribute("fundlist", fundlist);
		
		request.getRequestDispatcher("fund/fundlist.jsp").forward(request, response);
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

}
