package vlog.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import vlog.dao.FundDao;
import vlog.dao.IFundDaoimpl;
import vlog.vo.FoVO;
import vlog.vo.FundDetailVO;
import vlog.vo.FundVO;

public class IFundServiceimpl implements FundService{

	private FundDao dao;
	private static FundService service;
	
	
	//---------------------싱글턴-----------------------------
	public IFundServiceimpl() {
		dao = IFundDaoimpl.getDao();
	}
	
	public static FundService getService() {
		if(service==null)service = new IFundServiceimpl();
		return service;
	}
	//--------------------------------------------------------
	
	

	
	@Override
	public List<FundVO> selectByPage(Map<String, Integer> map) {
		List<FundVO>list = null;
		
		try {
			list = dao.selectByPage(map);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}


	@Override
	public List<FundVO> getallFund() {
		List<FundVO>list = null;
				
		System.out.println("서비스를 지나갑니다");
		try {
			list=dao.getallFund();
		} catch (SQLException e) {
			list = null;
			e.printStackTrace();
		}
		return list;
	}

	
	
	@Override
	public int fundOlim(FoVO fovo) {
		int foNo=0;
		try {
			foNo=dao.fundOlim(fovo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return foNo;
	}

	


	
	@Override
	public List<FundVO> detailFundpage(int fundnoInt) {
		List<FundVO>list = null;
		try {
			list = dao.detailFundpage(fundnoInt);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	
	@Override
	public int fundPay(FundDetailVO vo){
		int cnt = 0;
		
		try {
			cnt = dao.fundPay(vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cnt;
	}

	
	
	@Override
	public List<FoVO> detailOlimpage(int fo_no) {
		List<FoVO>list=null;
		try {
			list = dao.detailOlimpage(fo_no);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public int insertFund(FundVO vo) {
		int cnt = 0;
		try {
			cnt = dao.insertFund(vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cnt;
	}

	
	@Override
	public int fundDelete(int fun_no) {
		int cnt = 0;
		try {
			cnt = dao.fundDelete(fun_no);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// TODO Auto-generated method stub
		return cnt;
	}

	@Override
	public List<FoVO> getOlimlist() {
		List<FoVO>list=null;
		try {
			list=dao.getOlimlist();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

//	@Override
//	public List<FoVO> getOlimlist(String orp) {
//		List<FoVO> list = null;
//		try {
//			list = dao.getOlimlist(orp);
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		return list;
//	}



	

	
	
	
	
	
	
}
