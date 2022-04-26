package vlog.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.ddit.config.SqlMapClientFactory;
import vlog.vo.ApplyVO;

public class ApplySelDaoImpl implements IApplySelDao{

	private SqlMapClient client;
	private static IApplySelDao dao;
	private ApplySelDaoImpl() {
		client=SqlMapClientFactory.getSqlMapClient();
	}
	
	public static IApplySelDao getDao() {
		if(dao==null)dao=new ApplySelDaoImpl();
		return dao;
	}
	@Override
	public List<ApplyVO> selectapply(String id) throws SQLException {

		return client.queryForList("nanumapply.selectapply",id);
	}

	
}
