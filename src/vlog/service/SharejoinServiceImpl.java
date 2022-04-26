package vlog.service;

import java.sql.SQLException;
import java.util.List;

import vlog.dao.ISharejoinDao;
import vlog.dao.SharejoinDaoImpl;
import vlog.vo.SharejoinVO;

public class SharejoinServiceImpl implements ISharejoinService{

	private static ISharejoinDao dao;
	private static SharejoinServiceImpl service;
	 
	private SharejoinServiceImpl() {
		dao=SharejoinDaoImpl.getDao();
	}
	public static ISharejoinService getService() {
		if(service==null) service=new SharejoinServiceImpl();
		return service;
		
	}
	@Override
	public List<SharejoinVO> selectAll() {
		List<SharejoinVO> list = null;
		
		try {
			list=dao.selectAll();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

}
