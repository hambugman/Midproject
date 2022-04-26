package vlog.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import vlog.dao.IVBoardDao;
import vlog.dao.VBoardDaoImpl;
import vlog.vo.CommonVO;
import vlog.vo.OrpVo;
import vlog.vo.StudentVO;
import vlog.vo.VaReplyVO;
import vlog.vo.VolunteerBoardVO;

public class VBoardServiceImpl implements IVBoardService{

	private IVBoardDao  dao ;
	private static  IVBoardService  service;
	
	private VBoardServiceImpl(){
		dao = VBoardDaoImpl.getDao();
	}
	
	public static  IVBoardService getService(){
		if(service == null)  service = new VBoardServiceImpl();
		
		return service;
	}
	
	@Override
	public List<VolunteerBoardVO> selectByPage(Map<String, Integer> map) {
		List<VolunteerBoardVO>  list = null;
		
		try {
			list = dao.selectByPage(map);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public int totalCount() {
		int  count = 0;
		
		try {
			count = dao.totalCount();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return count;
	}

	@Override
	public Map<String, Integer> pageInfo(int page) {

		//전체글갯수 가져오기 
		 int count = this.totalCount();
		System.out.println("========================================="+count);
		//한페이지당 출력 글 갯수 
		int perList = 5;
		
		//한화면에 출력할 페이지수 
		int perPage = 2;
		
		//전체페이지수 - 전체글갯수 / perList
		int totalPage =   (int)Math.ceil((double)count / perList);
				
		
		//list의 시작번호와 끝번호1~3 . 4~6, 7~9 ~~~~~~ 16~18  19~20
		int start = (page-1)  * perList + 1;
		int end = start + perList -1;
		if(end > count) end = count;
		
		System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"+start+"@@@@"+end);
		//시작페이지와 끝페이지 1~2 3~4  5~6 7~7
		int startPage = ((page-1) / perPage * perPage) + 1;
		int endPage = startPage  + perPage - 1;
		if(endPage > totalPage) endPage = totalPage;
		
	    Map<String, Integer>  map = new HashMap<String, Integer>();
		map.put("start", start);
		map.put("end", end);
		map.put("spage", startPage);
		map.put("epage", endPage);
		map.put("tpage", totalPage);
		
		return map;
	}

	@Override
	public int insertReply(VaReplyVO vo) {
		int  rnum = 0;
		
		try {
			rnum = dao.insertReply(vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rnum;
	}

	@Override
	public List<VaReplyVO> listReply(int bonum) {
		List<VaReplyVO>  list = null;
		
		try {
			list = dao.listReply(bonum);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public int updateReply(VaReplyVO vo) {
		int res = 0;
		
		try {
			res = dao.updateReply(vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return res;
	}

	@Override
	public int deleteReply(int renum) {
		int res = 0;
		
		try {
			res = dao.deleteReply(renum);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return res;
	}

	@Override
	public int deleteBoard(int num) {
		int  res = 0;
		
		try {
			res = dao.deleteBoard(num);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				
		return res;
	}

	@Override
	public int insertBoard(VolunteerBoardVO vo) {
		int num = 0;
		try {
			num = dao.insertBoard(vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return num;
	}

	@Override
	public int updateHit(int num) {
		int cnt =0;
		
		try {
			cnt = dao.updateHit(num);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return cnt;
	}

	@Override
	public int updateBoard(VolunteerBoardVO vo) {
		int cnt = 0;
		try {
			cnt = dao.updateBoard(vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return cnt;
	}

	@Override
	public int stdCrystal(StudentVO vo) {
		int result = 0; 
		try {
			result = dao.stdCrystal(vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public int orpCrystal(OrpVo vo) {
		int result = 0; 
		try {
			result = dao.orpCrystal(vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public int comCrystal(CommonVO vo) {
		int result = 0; 
		try {
			result = dao.comCrystal(vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public VolunteerBoardVO detail(int num) {
		VolunteerBoardVO vo = null;
		try {
			vo = dao.detail(num);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return vo;
	}

}





