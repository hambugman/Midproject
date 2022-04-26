package vlog.dao;

import java.sql.SQLException;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.ddit.config.SqlMapClientFactory;
import vlog.vo.ApplyVO;

public class ApplyDaoImpl implements IApplyDao{

	private SqlMapClient smc;
	private static ApplyDaoImpl dao;
	
	private ApplyDaoImpl() {
		smc=SqlMapClientFactory.getSqlMapClient();
	}
	public static IApplyDao getDao() {
		if(dao==null) {
			dao=new ApplyDaoImpl();
		}
		return dao;
	}
	@Override
	public int nanumapply(ApplyVO vo) throws SQLException {
		int cnt = 0;
		if(smc.insert("nanumapply.insertapply",vo)==null) {
			cnt = 1;
		}
		return cnt;
	}

}
