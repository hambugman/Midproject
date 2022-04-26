package vlog.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.ddit.config.SqlMapClientFactory;
import vlog.vo.jjimVo;

public class JjimDaoImpl implements IJjimDao {
	
	private SqlMapClient smc;
	private static IJjimDao dao;
	
	private JjimDaoImpl() {
		smc = SqlMapClientFactory.getSqlMapClient();
	}
	
	public static IJjimDao getJjimDao() {
		if(dao == null) dao = new JjimDaoImpl();
		return dao;
	}

	@Override
	public String jjimInsert(jjimVo vo) throws SQLException {
		
		return (String)smc.insert("jjim.jjimInsert", vo);
	}

	@Override
	public List<jjimVo> jjimAll(String genId) throws SQLException {
		// TODO Auto-generated method stub
		return smc.queryForList("jjim.jjimAll", genId);
	}
	
	@Override
	public Object jjimOrp(Map<String, String> map) throws SQLException {
		// TODO Auto-generated method stub
		return smc.queryForObject("jjim.jjimOrp", map);
	}

	@Override
	public int jjimDelete(String orpNo) throws SQLException {
		
		return (int)smc.delete("jjim.jjimDelete", orpNo);
	}

}
