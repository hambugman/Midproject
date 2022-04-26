package vlog.service;

import java.sql.SQLException;
import java.util.List;

import vlog.dao.ComBoardImpl;
import vlog.dao.IComBoard;
import vlog.vo.ComReplyVO;
import vlog.vo.CommonVO;
import vlog.vo.CommunityVO;
import vlog.vo.OrpVo;
import vlog.vo.StudentVO;

public class ComBoardServiceImpl implements IComBoardService{

	private static IComBoard dao;
	private static ComBoardServiceImpl service;


		//싱글턴------------------------------------------
		private ComBoardServiceImpl(){
			dao = ComBoardImpl.getDao();
		};
		
		public static IComBoardService getService() {
			if(service==null)service= new ComBoardServiceImpl();
			return service;
		}
	
	
	@Override
	public List<CommunityVO> selectLocationAll(String location) {
		List<CommunityVO> list= null ;
		try {
			list = dao.selectLocationAll(location);
		} catch (SQLException e) {
			list = null;
			e.printStackTrace();
			System.out.println("서비스 메서드 오류");
		}
		return list;
	}

	@Override
	public List<CommunityVO> selectBestAll(String location){
		List<CommunityVO> list= null ;
		try {
			list = dao.selectBestAll(location);
		} catch (SQLException e) {
			list = null;
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public CommunityVO detailComBoard(int comno){
		CommunityVO vo = null;
		try {
			vo = dao.detailComBoard(comno);
		} catch (SQLException e) {
			vo = null;
			e.printStackTrace();
		}
		return vo;
	}

	@Override
	public int insertCom(CommunityVO vo) {
		int result = 0;
		try {
			result = dao.insertCom(vo);
		} catch (SQLException e) {
			result = 0;
			e.printStackTrace();
		}
		return result;
	}

	//댓글
	
	@Override
	public int insertReply(ComReplyVO vo) {
		int result = 0;
		
		try {
			dao.insertReply(vo);
		} catch (SQLException e) {
			result = 0;
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public List<ComReplyVO> listReply(int bonum) {
		List<ComReplyVO> list = null;
		try {
			list = dao.listReply(bonum);
		} catch (SQLException e) {
			list = null;
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public int updateReply(ComReplyVO vo) {
		int result = 0;
		try {
			result = dao.updateReply(vo);
		} catch (SQLException e) {
			result = 0;
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public int deleteReply(int renum) {
		int result = 0;
		try {
			result = dao.deleteReply(renum);
		} catch (SQLException e) {
			result = 0;
			e.printStackTrace();
		}
		return result;
	}

	
	
	
	
	
	//학생
	@Override
	public String insertStd(StudentVO vo) {
		String id = null;
		try {
			id = dao.insertStd(vo);
		} catch (SQLException e) {
			id = null;
			e.printStackTrace();
			System.out.println("insertStd메서드에서 오류");
		}
		return id;
	}

	@Override
	public String checkId(String id) {
		String checkid = null;
		try {
			checkid= dao.checkId(id);
		} catch (SQLException e) {
			checkid = null;
			e.printStackTrace();
		}
		return checkid;
	}

	@Override
	public StudentVO loginStd(StudentVO vo) {
		StudentVO login = null;
		try {
			login = dao.loginStd(vo);
		} catch (SQLException e) {
			login = null;
			e.printStackTrace();
		}
		return login;
	}

	
	
	
	
	//일반회원
	@Override
	public String insertCommon(CommonVO vo) {
		String id = null;
		try {
			id = dao.insertCommon(vo);
		} catch (SQLException e) {
			id = null;
			e.printStackTrace();
			System.out.println("insertStd메서드에서 오류");
		}
		return id;
	}

	@Override
	public String checkCommonId(String id) {
		String checkid = null;
		try {
			checkid= dao.checkCommonId(id);
		} catch (SQLException e) {
			checkid = null;
			e.printStackTrace();
		}
		return checkid;
	}

	@Override
	public CommonVO loginCommon(CommonVO vo) {
		CommonVO login = null;
		try {
			login = dao.loginCommon(vo);
		} catch (SQLException e) {
			login = null;
			e.printStackTrace();
		}
		return login;
	}

	@Override
	public int totalCount() {
		int totalPage = 0;
		try {
			totalPage = dao.totalCount();
		} catch (SQLException e) {
			 totalPage = 0;
			e.printStackTrace();
		}
		
		return totalPage;
	}

	
	//관리자 회원 로그인
	@Override
	public OrpVo loginOrp(OrpVo vo) {
		OrpVo login = null;
		try {
			login = dao.loginOrp(vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return login;
	}

	@Override
	public int updateHit(int num) {
		int result = 0;
		try {
			result = dao.updateHit(num);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public int deleteBoard(int num) {
		int result = 0;
		try {
			result = dao.deleteBoard(num);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}


	
}
