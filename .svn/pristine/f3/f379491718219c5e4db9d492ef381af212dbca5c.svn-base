package vlog.service;

import java.sql.SQLException;

import vlog.dao.ApplyDaoImpl;
import vlog.dao.IApplyDao;
import vlog.vo.ApplyVO;

public class ApplyServiceImpl implements IApplyService {

	private static IApplyDao dao;
	private static ApplyServiceImpl service;
	
	private  ApplyServiceImpl() {
		dao=ApplyDaoImpl.getDao();
	}
	public static IApplyService getService() {
		if(service==null)service=new ApplyServiceImpl();
		return service;
	}
	@Override
	public int applynanum(ApplyVO vo) {
		int applynum=0;
		
		try {
			applynum=dao.nanumapply(vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return applynum;
	}

	
}
