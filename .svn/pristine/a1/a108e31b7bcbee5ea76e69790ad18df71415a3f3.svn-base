package vlog.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapException;

import vlog.vo.CommonVO;
import vlog.vo.OrpVo;
import vlog.vo.StudentVO;
import vlog.vo.VaReplyVO;
import vlog.vo.VolunteerBoardVO;

public interface IVBoardDao {
	// 게시글 리스트
	public List<VolunteerBoardVO> selectByPage(Map<String, Integer> map) throws SQLException;

	// 전체글갯수 가져오기
	public int totalCount() throws SQLException;

	// 게시글 작성
	public int insertBoard(VolunteerBoardVO vo) throws SQLException;

//   //게시글 수정 
   public int updateBoard(VolunteerBoardVO  vo) throws SQLException;

	// 게시글 삭제
	public int deleteBoard(int num) throws SQLException;

	// 조회수 증가
	public int updateHit(int num) throws SQLException;
	
	//게시물 정보 가져오기
	public VolunteerBoardVO detail(int num) throws SQLException;

	
//	  댓글 저장 
	  public int insertReply(VaReplyVO vo) throws SQLException;
	 
//	  댓글 리스트 
	  public List<VaReplyVO> listReply(int bonum) throws SQLException;
	 
//	  댓글 수정 
	  public int updateReply(VaReplyVO vo) throws SQLException;
	 
//	  댓글 삭제 
	  public int deleteReply(int renum) throws SQLException;
	  
// STD 회원 정보 수정
	  public int stdCrystal(StudentVO vo) throws SQLException;
	  
//Orp 회원 정보 수정
	  public int orpCrystal(OrpVo vo) throws SQLException;
	  
//Common 회원 정보 수정
	  public int comCrystal(CommonVO vo) throws SQLException;
	 
}
