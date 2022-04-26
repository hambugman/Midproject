package vlog.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import vlog.dao.IJjimDao;
import vlog.dao.JjimDaoImpl;
import vlog.vo.jjimVo;

public class JjimServiceImpl implements IJjimService {

	private IJjimDao dao;
	public static IJjimService service;
	
	private JjimServiceImpl() {
		dao = JjimDaoImpl.getJjimDao();
	}
	
	public static IJjimService getJjimService() {
		if(service == null) service = new JjimServiceImpl();
		return service;
	}
	
	@Override
	public String jjimInsert(jjimVo vo) {
		String nn = "";
		try {
			nn = dao.jjimInsert(vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return nn;
	}

	@Override
	public List<jjimVo> jjimAll(String genId) {
		List<jjimVo> list = null;
		try {
			list = dao.jjimAll(genId);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	@Override
	public Object jjimOrp(Map<String, String> map) {
		Object no = "dd";
		try {
			no=dao.jjimOrp(map);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return no;
	}

	@Override
	public int jjimDelete(String orpNo) {
		int no = 0;
		try {
			no = dao.jjimDelete(orpNo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return no;
	}

}
