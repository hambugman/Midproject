package vlog.service;

import java.sql.SQLException;
import java.util.List;

import vlog.vo.ComReplyVO;
import vlog.vo.CommonVO;
import vlog.vo.CommunityVO;
import vlog.vo.OrpVo;
import vlog.vo.StudentVO;

public interface IComBoardService {
	
	public List<CommunityVO> selectLocationAll(String location); //지역별 커뮤니티 게시판 
//	public List<CommunityVO> selectHotAll(); //지역별 일일 조회수 순 커뮤니티 게시판 출력 (조건 조회수 100이상)
	public List<CommunityVO> selectBestAll(String location); //지역별 전 기간 조회수 순 커뮤니티 게시판 (조건 조회수 100이상)
	
	public CommunityVO detailComBoard(int comno); //게시물 상세보기
	
	public int insertCom(CommunityVO vo);
	
	public int totalCount();
	
	  //조회수 증가 
	   public int updateHit(int num);
	   
	   //게시글 삭제 
	   public int deleteBoard(int num);
	
		//댓글 저장
	   public int insertReply(ComReplyVO vo);
	   
	   //댓글 리스트 
	   public List<ComReplyVO>  listReply(int bonum);
	   
	   //댓글 수정 
	   public int updateReply(ComReplyVO  vo);
	    
	   //댓글 삭제
	   public int deleteReply(int renum);
	
	
	
	//학생
	public String insertStd(StudentVO vo);
	
	public String checkId(String id);
	
	public StudentVO loginStd(StudentVO vo);
	
	
	//일반 회원
	public String insertCommon(CommonVO vo);
	
	public String checkCommonId(String id) ; //아이디 중복확인
	
	public CommonVO loginCommon(CommonVO vo); //로그인할 아이디가 있는지 확인
	
	//관리자 회원
	public OrpVo loginOrp(OrpVo vo); //로그인할 아이디가 있는지 확인
	
	
}
