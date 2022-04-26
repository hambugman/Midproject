package vlog.service;

import java.sql.SQLException;
import java.util.List;

import vlog.dao.IONoticeDao;
import vlog.dao.oNoticeDaoImpl;
import vlog.vo.orpNoVo;

public class oNoticeServiceImpl implements IONoticeService {
	
	private IONoticeDao dao;
	public static IONoticeService service;
	
	private oNoticeServiceImpl() {
		dao= oNoticeDaoImpl.getONDao();
	}
	
	public static IONoticeService getONService() {
		if(service == null) service = new oNoticeServiceImpl();
		return service;
	}

	@Override
	public int oNoticeInsert(orpNoVo vo) {
		int no = 0;
		try {
			no = dao.oNoticeInsert(vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return no;
	}

	@Override
	public int oNoticeUpdate(orpNoVo vo) {
		int no = 0;
		try {
			no = dao.oNoticeUpdate(vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return no;
	}

	@Override
	public List<orpNoVo> allONotice(String orpNo) {
		List<orpNoVo> list = null;
		try {
			list = dao.allONotice(orpNo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public orpNoVo detailONoice(int noNo) {
		orpNoVo vo = null;
		try {
			vo = dao.detailONoice(noNo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return vo;
	}

	@Override
	public int oNoticeDelete(int noNo) {
		int no = 0;
		try {
			no=dao.oNoticeDelete(noNo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return no;
	}

}
