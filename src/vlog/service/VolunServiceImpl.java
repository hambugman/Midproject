package vlog.service;

import java.sql.SQLException;
import java.util.List;

import vlog.dao.IVolunDao;
import vlog.dao.VolunDaoImpl;
import vlog.vo.volunVo;

public class VolunServiceImpl implements IVolunService {

	private IVolunDao dao;
	public static IVolunService service;
	
	private VolunServiceImpl() {
		dao= VolunDaoImpl.getVolunDao();
	}
	
	public static IVolunService getVolunService() {
		if(service == null) service = new VolunServiceImpl();
		return service;
	}
	
	@Override
	public int volunInsert(volunVo vo) {
		int no = 0;
		try {
			no = dao.volunInsert(vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return no;
	}

	@Override
	public List<volunVo> commonList(String genId) {
		List<volunVo> list = null;
		try {
			list = dao.commonList(genId);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<volunVo> orpList(String orpId) {
		List<volunVo> list = null;
		try {
			list= dao.orpList(orpId);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

}
