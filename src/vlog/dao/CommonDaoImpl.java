package vlog.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.ddit.config.SqlMapClientFactory;
import vlog.vo.CommonVO;

public class CommonDaoImpl implements ICommonDao{

	private SqlMapClient client;
	private static ICommonDao dao;
	private CommonDaoImpl() {
		client=SqlMapClientFactory.getSqlMapClient();
	}

	 public static ICommonDao getDao()	{
		 if(dao==null)new CommonDaoImpl();
		 return dao;
	 }

	@Override
	public List<CommonVO> selectcommon(String id) throws SQLException {
		return client.queryForList("common.selectcommon",id);
	}
}
