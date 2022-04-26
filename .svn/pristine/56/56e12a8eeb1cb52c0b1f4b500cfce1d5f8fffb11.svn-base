package vlog.service;

import java.sql.SQLException;
import java.util.List;

import vlog.dao.CommonDaoImpl;
import vlog.dao.ICommonDao;
import vlog.vo.CommonVO;

public class CommonServiceImpl implements ICommonService {

	private ICommonDao dao;
	public static ICommonService service;
	
	private  CommonServiceImpl() {
		dao=CommonDaoImpl.getDao();
	}
	public static ICommonService getCommonService() {
		if(service==null)service=new CommonServiceImpl();
		return service;
			
	}
	
	@Override
	public List<CommonVO> selectcommon(String id) {
		List<CommonVO> list =null;
		
		try {
			list=dao.selectcommon(id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				
		return list;
	}

	
}
