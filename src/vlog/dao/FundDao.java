package vlog.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import vlog.vo.FoVO;
import vlog.vo.FundDetailVO;
import vlog.vo.FundVO;

public interface FundDao {
	
		//펀딩 리스트 출력
		public List<FundVO> getallFund() throws SQLException;
			
		//펀딩 리스트 작성
		public int insertFund(FundVO vo) throws SQLException; 
		
		
		//펀딩 페이지넘기기-아직못함
		public List<FundVO>selectByPage(Map<String, Integer>map)throws SQLException;
		
		
		//펀딩올림 작성 (결과값 fo_no)
		public int fundOlim(FoVO fovo) throws SQLException;
		
		
		//펀딩올림 리스트 (관리자에게 가야함)
//		public List<FoVO> getOlimlist(String orp) throws SQLException;
		public List<FoVO> getOlimlist() throws SQLException;
		
		
		//펀딩올림리스트 상세 가져오기
		public List<FoVO>detailOlimpage(int fo_no) throws SQLException;
		
		
		
		//펀딩글 삭제
		public int fundDelete (int fun_no) throws SQLException;
		
		
		//펀딩리스트 상세 가져오기
		public List<FundVO>detailFundpage(int fundnoInt) throws SQLException;
		
		
		//펀딩글 수정
		
		
		
		//펀딩한 사람들 카운트	select count(*) from fundingdetail where fun_no=#fun_no#
		
		
		
		//펀딩한 사람들의 금액 총계산	select sum(fdetail_money) from fundingdetail where fun_no=#fun_no#
		
		
		
		//펀딩하기(회원아이디와 금액,펀딩게시판데이터 가져옴)
		public int fundPay(FundDetailVO vo) throws SQLException;
		
	
	
	
}
