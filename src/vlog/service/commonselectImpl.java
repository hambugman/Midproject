package vlog.service;

import java.sql.SQLException;
import java.util.List;

import vlog.dao.ICommonselectDao;
import vlog.dao.commonselectDaoImpl;
import vlog.vo.CommonVO;

public class commonselectImpl implements ICommonselect {

	private static ICommonselectDao dao;
	private static commonselectImpl service;
	
	private commonselectImpl() {
		dao=commonselectDaoImpl.getDao();
	}
	
	public static ICommonselect getService() {
		if(service==null)service =new commonselectImpl();
		return service;
	}
	@Override
	public List<CommonVO> selectcommonAll() {

		List <CommonVO>list =null;
		
		try {
			list=dao.selectcommonAll();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}

}
