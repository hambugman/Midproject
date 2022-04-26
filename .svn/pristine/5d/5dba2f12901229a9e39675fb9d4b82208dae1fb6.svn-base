package vlog.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.ddit.config.SqlMapClientFactory;
import vlog.vo.orpNoVo;

public class oNoticeDaoImpl implements IONoticeDao {
	
	private SqlMapClient smc;
	private static IONoticeDao dao;
	
	private oNoticeDaoImpl() {
		smc = SqlMapClientFactory.getSqlMapClient();
	}
	
	public static IONoticeDao getONDao() {
		if(dao == null) dao = new oNoticeDaoImpl();
		return dao;
	}

	@Override
	public int oNoticeInsert(orpNoVo vo) throws SQLException {
		
		return (int)smc.insert("orpNotice.oNoticeInsert", vo);
	}

	@Override
	public int oNoticeUpdate(orpNoVo vo) throws SQLException {
		
		return (int)smc.update("orpNotice.oNoticeUpdate", vo);
	}

	@Override
	public List<orpNoVo> allONotice(String orpNo) throws SQLException {
		
		return smc.queryForList("orpNotice.allONotice", orpNo);
	}

	@Override
	public orpNoVo detailONoice(int noNo) throws SQLException {
		
		return (orpNoVo) smc.queryForObject("orpNotice.detailONoice", noNo);
	}

	@Override
	public int oNoticeDelete(int noNo) throws SQLException {
		
		return (int)smc.delete("orpNotice.oNoticeDelete", noNo);
	}

}
