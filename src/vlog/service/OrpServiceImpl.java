package vlog.service;

import java.sql.SQLException;
import java.util.List;

import vlog.dao.IOrpDao;
import vlog.dao.OrpDaoImpl;
import vlog.vo.OrpVo;

public class OrpServiceImpl implements IOrpService {
	
	private IOrpDao dao;
	public static IOrpService service;
	
	private OrpServiceImpl() {
		dao = OrpDaoImpl.getOrpDao();
	}
	
	public static IOrpService getOrpService() {
		if(service == null) service = new OrpServiceImpl();
		return service;
	}

	@Override
	public List<OrpVo> orpAll() {
		List<OrpVo> list = null;
		
		try {
			list = dao.orpAll();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public OrpVo orpDetail(String orp_no) {
		OrpVo vo = null;
		try {
			vo=dao.orpDetail(orp_no);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return vo;
	}

}
