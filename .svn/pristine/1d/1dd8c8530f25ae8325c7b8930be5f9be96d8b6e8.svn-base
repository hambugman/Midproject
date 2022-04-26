package vlog.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.ddit.config.SqlMapClientFactory;
import vlog.vo.volunVo;

public class VolunDaoImpl implements IVolunDao {
	
	private SqlMapClient smc;
	private static IVolunDao dao;
	
	private VolunDaoImpl() {
		smc = SqlMapClientFactory.getSqlMapClient();
	}
	
	public static IVolunDao getVolunDao() {
		if(dao == null) dao = new VolunDaoImpl();
		return dao;
	}

	@Override
	public int volunInsert(volunVo vo) throws SQLException {
		
		return (int)smc.insert("volApp.volunInsert", vo);
	}

	@Override
	public List<volunVo> commonList(String genId) throws SQLException {
		
		return smc.queryForList("volApp.commonList", genId);
	}

	@Override
	public List<volunVo> orpList(String orpId) throws SQLException {

		return smc.queryForList("volApp.orpList", orpId);
	}

}
