package vlog.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.ddit.config.SqlMapClientFactory;
import vlog.vo.FoVO;
import vlog.vo.FundDetailVO;
import vlog.vo.FundVO;

public class IFundDaoimpl implements FundDao {

private SqlMapClient smc; 
private static IFundDaoimpl dao;


	//싱글턴------------------------------------------
	private IFundDaoimpl(){
		
		smc = SqlMapClientFactory.getSqlMapClient();
	};
	
	public static FundDao getDao() {
		if(dao==null)dao= new IFundDaoimpl();
		return dao;
	}
	//-----------------------------------------------


	@Override
	public List<FundVO> selectByPage(Map<String, Integer> map) throws SQLException {
		// TODO Auto-generated method stub
		return smc.queryForList("fund.selectByPage",map);
	}



	@Override
	public List<FundVO> getallFund() throws SQLException {
		return smc.queryForList("fund.getallFund");
	}
	

	@Override
	public int fundOlim(FoVO fovo) throws SQLException {
		return (int) smc.insert("fund.fundOlim",fovo);
	}

//	@Override
//	public List<FoVO> getOlimlist(String orp) throws SQLException {
//		return smc.queryForList("fund.getOlimlist",orp);
//	}
	@Override
	public List<FoVO> getOlimlist() throws SQLException {
		return smc.queryForList("fund.getOlimlist");
	}

	
	@Override
	public List<FundVO> detailFundpage(int fundnoInt) throws SQLException {
		return smc.queryForList("fund.detailFundPage",fundnoInt);
	}

	
	@Override
	public int fundPay(FundDetailVO vo) throws SQLException {
		return (int) smc.insert("fund.fundPay",vo);
	}

	@Override
	public List<FoVO> detailOlimpage(int fo_no) throws SQLException {
		return smc.queryForList("fund.detailOlimpage",fo_no);
	}

	@Override
	public int insertFund(FundVO vo) throws SQLException {
		// TODO Auto-generated method stub
		return (int) smc.insert("fund.fundInsert",vo);
	}

	@Override
	public int fundDelete(int fun_no) throws SQLException {
		// TODO Auto-generated method stub
		return smc.delete("fund.fundDelete",fun_no);
	}

	
	
	
	
	
}
