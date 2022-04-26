package vlog.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import jdk.internal.dynalink.beans.StaticClass;
import kr.or.ddit.config.SqlMapClientFactory;
import vlog.vo.CommonVO;

public class commonselectDaoImpl implements ICommonselectDao {
	private SqlMapClient smc;
	private static commonselectDaoImpl dao;

	private commonselectDaoImpl() {
		smc = SqlMapClientFactory.getSqlMapClient();
	}

	public static ICommonselectDao getDao() {
		if (dao == null)
			dao = new commonselectDaoImpl();
		return dao;

	}

	@Override
	public List<CommonVO> selectcommonAll() throws SQLException {

		
		return smc.queryForList("common.selectcommonAll");
	}

}
