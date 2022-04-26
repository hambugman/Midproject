package vlog.dao;

import java.sql.SQLException;
import java.util.List;

import vlog.vo.ComReplyVO;
import vlog.vo.CommonVO;
import vlog.vo.CommunityVO;
import vlog.vo.OrpVo;
import vlog.vo.StudentVO;

public interface IComBoard {
	
	public List<CommunityVO> selectLocationAll(String location) throws SQLException; //지역별 커뮤니티 게시판 
//	public List<CommunityVO> selectHotAll() throws SQLException; //지역별 일일 조회수 순 커뮤니티 게시판 출력 (조건 조회수 100이상)
	public List<CommunityVO> selectBestAll(String location) throws SQLException; //지역별 전 기간 조회수 순 커뮤니티 게시판 (조건 조회수 100이상)
	
	public CommunityVO detailComBoard(int comno) throws SQLException; //게시물 상세보기
	
	public int insertCom(CommunityVO vo) throws SQLException; //게시물 등록
	
	public int totalCount() throws SQLException;
	
	   //조회수 증가 
	   public int updateHit(int num) throws SQLException; 
	   
	   //게시글 삭제 
	   public int deleteBoard(int num) throws SQLException;
	
	
	//댓글
 	
	   //댓글 저장 
	   public int insertReply(ComReplyVO vo) throws SQLException;
	  
	   //댓글 리스트 
	   public List<ComReplyVO>  listReply(int bonum) throws SQLException;
	   
	   //댓글 수정 
	   public int updateReply(ComReplyVO  vo) throws SQLException;
	   
	   //댓글 삭제
	   public int deleteReply(int renum) throws SQLException;
	
	
	
	//학생
	public String insertStd(StudentVO vo) throws SQLException; //보육원학생 회원가입
	
	public String checkId(String id) throws SQLException; //아이디 중복확인
	
	public StudentVO loginStd(StudentVO vo) throws SQLException; //로그인할 아이디가 있는지 확인
	
	
	
	
	//일반회원
	
	public String insertCommon(CommonVO vo) throws SQLException;
	
	public String checkCommonId(String id) throws SQLException; //아이디 중복확인
	
	public CommonVO loginCommon(CommonVO vo) throws SQLException; //로그인할 아이디가 있는지 확인
	
	
	//관리자 회원
	public OrpVo loginOrp(OrpVo vo) throws SQLException; //로그인할 아이디가 있는지 확인
}
