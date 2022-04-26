package vlog.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.ddit.config.SqlMapClientFactory;
import vlog.vo.SharejoinVO;

public class SharejoinDaoImpl implements ISharejoinDao {

	private SqlMapClient smc;
	private static SharejoinDaoImpl dao;

	private SharejoinDaoImpl() {
		smc = SqlMapClientFactory.getSqlMapClient();
	}

	public static ISharejoinDao getDao() {
	  if(dao==null) 
		dao=new SharejoinDaoImpl();
		return dao;
	}

	@Override
	public List<SharejoinVO> selectAll() throws SQLException {

		return smc.queryForList("sharejoin.selectAll");
	}

}
