package vlog.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import vlog.vo.FoVO;
import vlog.vo.FundDetailVO;
import vlog.vo.FundVO;

public interface FundService {
	
	
	//펀딩 리스트 출력
	public List<FundVO> getallFund();
		
	
	//펀딩 리스트 작성
	public int insertFund(FundVO vo); 
	
	
	
	//펀딩 페이지넘기기-아직못함
	public List<FundVO>selectByPage(Map<String, Integer>map);
	
	
	//펀딩올림 작성 (결과값 fo_no)
	public int fundOlim(FoVO fovo);
	
//	//펀딩올림 리스트 (관리자에게 가야함)
//	public List<FoVO> getOlimlist(String orp);
	
	//펀딩올림 리스트 (관리자에게 가야함)
	public List<FoVO> getOlimlist();
	
	
	//펀딩올림리스트 상세 가져오기
	public List<FoVO>detailOlimpage(int fo_no);
	
	
	
	//펀딩글 삭제
	public int fundDelete (int fun_no);
	
	
	//펀딩리스트 상세 가져오기
	public List<FundVO>detailFundpage(int fundnoInt);
	

	
	
	//펀딩한 사람들 카운트
	
	
	
	
	//펀딩한 사람들의 금액 총계산
	
	
	
	//펀딩하기(회원아이디와 금액,펀딩게시판데이터 가져옴)
	public int fundPay(FundDetailVO vo);
	
	
}
