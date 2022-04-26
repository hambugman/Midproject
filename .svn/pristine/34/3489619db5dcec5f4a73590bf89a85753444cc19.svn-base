package vlog.controller;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import vlog.service.ComBoardServiceImpl;
import vlog.service.IComBoardService;
import vlog.vo.ComReplyVO;

/**
 * Servlet implementation class ReplyUpdate
 */
@WebServlet("/ReplyComUpdate.do")
public class ReplyComUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReplyComUpdate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
		request.setCharacterEncoding("UTF-8");
        
        //0, 클라이언트 전송시 값 가져오기 - renum, cont - vo에 저장
		ComReplyVO  vo = new ComReplyVO();
		
		//vo.setCont(request.getParameter("cont"));
		//vo.setRenum(Integer.parseInt(request.getParameter("renum")));
		
		
        try {
			BeanUtils.populate(vo, request.getParameterMap());
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
        //1.  service객체 
        IComBoardService  service = ComBoardServiceImpl.getService();
        
        //2 service메소드 호출 - 결과값 받기 
        int res = service.updateReply(vo);
        
        //3. request에 저장
        request.setAttribute("res", res);
        
        //4. jsp로 forward
        request.getRequestDispatcher("board/result.jsp").forward(request, response);
 
	}

}










