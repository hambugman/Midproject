package vlog.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.ddit.config.SqlMapClientFactory;
import vlog.vo.arVo;

public class ARDaoImpl implements IARDao {
	
	private SqlMapClient smc;
	private static IARDao dao;
	
	private ARDaoImpl() {
		smc = SqlMapClientFactory.getSqlMapClient();
	}
	
	public static IARDao gatARDao() {
		if(dao == null) dao = new ARDaoImpl();
		return dao;
	}

	@Override
	public int arInsert(arVo vo) throws SQLException {
		
		return (int)smc.insert("askRepl.arInsert", vo);
	}

	@Override
	public int arUpdate(arVo vo) throws SQLException {
		
		return (int)smc.update("askRepl.arUpdate", vo);
	}
	
	@Override
	public int arDelete(int raNo) throws SQLException {
		// TODO Auto-generated method stub
		return (int)smc.delete("askRepl.arDelete", raNo);
	}

	@Override
	public List<arVo> arList(int raNo) throws SQLException {
		
		return smc.queryForList("askRepl.arList", raNo);
	}

}
