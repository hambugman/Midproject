package vlog.dao;

import java.sql.SQLException;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.ddit.config.SqlMapClientFactory;


public class VlogDaoimpl implements VlogDao {

private SqlMapClient smc; 
private static VlogDaoimpl dao;


	//싱글턴------------------------------------------
	private VlogDaoimpl(){
		smc = SqlMapClientFactory.getSqlMapClient();
	};
	
	public static VlogDao getDao() {
		if(dao==null)dao= new VlogDaoimpl();
		return dao;
	}
	//-----------------------------------------------

	
	
	@Override
	public int totalFund() throws SQLException {
		return (int) smc.queryForObject("fund.totalFund");
		
	}

	
	
	
	
	
	
	
}
