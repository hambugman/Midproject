package vlog.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.ddit.config.SqlMapClientFactory;
import vlog.vo.ShareVO;

public class ShareDaoImpl implements IShareDao {

	private SqlMapClient smc;
	private static ShareDaoImpl dao;
	
	private ShareDaoImpl() {
		smc=SqlMapClientFactory.getSqlMapClient();
	}
	
	public static IShareDao getDao() {
		if(dao==null) 
			dao=new ShareDaoImpl();
		return dao;
	}
	@Override
	public List<ShareVO> selectAll() throws SQLException {

		return smc.queryForList("shareboard.selectAll");
	}

	@Override
	public int insertnanum(ShareVO vo) throws SQLException {

		return (int)smc.insert("shareboard.insertnanum",vo) ;
	}

}
