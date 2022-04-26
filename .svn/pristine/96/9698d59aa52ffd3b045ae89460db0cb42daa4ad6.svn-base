package vlog.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.ddit.config.SqlMapClientFactory;
import vlog.vo.OrpVo;

public class OrpDaoImpl implements IOrpDao {
	
	private SqlMapClient smc;
	private static IOrpDao dao;
	
	private OrpDaoImpl() {
		smc = SqlMapClientFactory.getSqlMapClient();
	}
	
	public static IOrpDao getOrpDao() {
		if(dao == null) dao = new OrpDaoImpl();
		return dao;
	}

	@Override
	public List<OrpVo> orpAll() throws SQLException {
		
		return smc.queryForList("orphanage.orpAll");
	}

	@Override
	public OrpVo orpDetail(String orp_no) throws SQLException {
		
		return (OrpVo) smc.queryForObject("orphanage.orpDetail", orp_no);
	}
}
