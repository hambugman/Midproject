package vlog.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.ddit.config.SqlMapClientFactory;
import vlog.vo.askVo;

public class AskDaoImpl implements IAskDao {
	
	private SqlMapClient smc;
	private static IAskDao dao;
	
	private AskDaoImpl() {
		smc = SqlMapClientFactory.getSqlMapClient();
	}
	
	public static IAskDao getAskDao() {
		if(dao == null) dao = new AskDaoImpl();
		return dao;
	}

	@Override
	public int askInsert(askVo vo) throws SQLException {
		
		return (int)smc.insert("ask.askInsert", vo);
	}

	@Override
	public int askUpdate(askVo vo) throws SQLException {
		
		return (int)smc.update("ask.askUpdate", vo);
	}

	@Override
	public List<askVo> allAsk(String orpNo) throws SQLException {
		
		return smc.queryForList("ask.allAsk", orpNo);
	}

	@Override
	public askVo detailAsk(int askNo) throws SQLException {
		
		return (askVo) smc.queryForObject("ask.detailAsk", askNo);
	}

}
