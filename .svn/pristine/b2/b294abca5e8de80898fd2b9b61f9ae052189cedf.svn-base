package vlog.service;

import java.sql.SQLException;
import java.util.List;

import vlog.dao.ApplySelDaoImpl;
import vlog.dao.IApplySelDao;
import vlog.vo.ApplyVO;

public class ApplySelServiceImpl implements IApplySelService {

	private IApplySelDao dao;
	public static IApplySelService service;
	
	private ApplySelServiceImpl() {
		dao=ApplySelDaoImpl.getDao();
	}
	public static IApplySelService getApplySelService() {
		if(service==null)service =new ApplySelServiceImpl();
		return service;
	}
	@Override
	public List<ApplyVO> selectapply(String id) {
		
		List<ApplyVO> list=null;
		try {
			list=dao.selectapply(id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}

}
