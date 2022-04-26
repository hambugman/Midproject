package vlog.service;

import java.sql.SQLException;
import java.util.List;

import vlog.dao.IShareDao;
import vlog.dao.ShareDaoImpl;
import vlog.vo.ShareVO;

public class ShareServiceImpl implements IShareService {

	private static IShareDao dao;
	private static ShareServiceImpl service;
	
	private ShareServiceImpl() {
		dao=ShareDaoImpl.getDao();
	}
	public static IShareService getService() {
		if(service==null)service=new ShareServiceImpl();
		return service;
	}
	@Override
	public List<ShareVO> selectAll() {
		List<ShareVO> list=null;
		try {
			list=dao.selectAll();
		} catch (SQLException e) {
			e.printStackTrace();		
			System.out.println("서비스 메서드 오류");
		}
		return list;
	}

	@Override
	public int insertnanum(ShareVO vo) {
		
		int shareno=0;
		
		try {
			shareno=dao.insertnanum(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return shareno;
	

	}

}
