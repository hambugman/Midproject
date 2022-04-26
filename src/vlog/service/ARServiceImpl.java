package vlog.service;

import java.sql.SQLException;
import java.util.List;

import vlog.dao.ARDaoImpl;
import vlog.dao.IARDao;
import vlog.vo.arVo;

public class ARServiceImpl implements IARService {
	
	private IARDao dao;
	public static IARService service;
	
	private ARServiceImpl() {
		dao = ARDaoImpl.gatARDao();
	}
	
	public static IARService getARService() {
		if(service == null) service = new ARServiceImpl();
		return service;
	}

	@Override
	public int arInsert(arVo vo) {
		int no = 0;
		try {
			no = dao.arInsert(vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return no;
	}

	@Override
	public int arUpdate(arVo vo) {
		int no = 0;
		try {
			no=dao.arUpdate(vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return no;
	}
	
	@Override
	public int arDelete(int raNo) {
		int no =0;
		try {
			no=dao.arDelete(raNo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return no;
	}

	@Override
	public List<arVo> arList(int raNo) {
		List<arVo> list = null;
		try {
			list= dao.arList(raNo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

}
