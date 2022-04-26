package vlog.service;

import java.sql.SQLException;
import java.util.List;

import vlog.dao.AskDaoImpl;
import vlog.dao.IAskDao;
import vlog.vo.askVo;

public class AskServiceImpl implements IAskService {
	
	private IAskDao dao;
	public static IAskService service;
	
	private AskServiceImpl() {
		dao = AskDaoImpl.getAskDao();
	}
	
	public static IAskService getAskService() {
		if(service == null) service = new AskServiceImpl();
		return service;
	}
	

	@Override
	public int askInsert(askVo vo) {
		int no = 0;
		try {
			no = dao.askInsert(vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return no;
	}

	@Override
	public int askUpdate(askVo vo) {
		int no = 0;
		try {
			no=dao.askUpdate(vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return no;
	}

	@Override
	public List<askVo> allAsk(String orpNo) {
		List<askVo> list = null;
		try {
			list=dao.allAsk(orpNo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public askVo detailAsk(int askNo) {
		askVo vo = null;
		try {
			vo = dao.detailAsk(askNo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return vo;
	}

}
