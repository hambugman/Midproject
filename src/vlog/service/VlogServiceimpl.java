package vlog.service;

import vlog.dao.VlogDao;
import vlog.dao.VlogDaoimpl;

public class VlogServiceimpl implements VlogService{

	private VlogDao dao;
	private static VlogService service;
	
	
	//---------------------싱글턴-----------------------------
	public VlogServiceimpl() {
		dao = VlogDaoimpl.getDao();
	}
	
	public static VlogService getService() {
		if(service==null)service = new VlogServiceimpl();
		return service;
	}
	//--------------------------------------------------------
	
	
	
	@Override
	public int totalFund() {
		int count = 0;
		return count;
	}
	
	
	
	
	
	
}
