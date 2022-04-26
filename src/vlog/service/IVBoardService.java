package vlog.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import vlog.vo.CommonVO;
import vlog.vo.OrpVo;
import vlog.vo.StudentVO;
import vlog.vo.VaReplyVO;
import vlog.vo.VolunteerBoardVO;


public interface IVBoardService {
  //게시글 리스트 	
   public List<VolunteerBoardVO> selectByPage(Map<String, Integer>  map);
   
   //전체글갯수 가져오기 
   public int totalCount();
   
   //pageing처리 
   public Map<String, Integer> pageInfo(int page);
   
   //게시글 작성
   public int insertBoard(VolunteerBoardVO vo);
   
   //게시글 수정 
   public int updateBoard(VolunteerBoardVO  vo);
   
   //게시글 삭제 
   public int deleteBoard(int num);
   
   //조회수 증가 
   public int updateHit(int num);
   
   //댓글 저장
   public int insertReply(VaReplyVO vo);
   
   //댓글 리스트 
   public List<VaReplyVO>  listReply(int bonum);
   
   //댓글 수정 
   public int updateReply(VaReplyVO  vo);
    
   //댓글 삭제
   public int deleteReply(int renum);
   
   //STD 회원정보 수정
   public int stdCrystal(StudentVO vo);
   
 //Orp 회원 정보 수정
	  public int orpCrystal(OrpVo vo);
	  
//Common 회원 정보 수정
	  public int comCrystal(CommonVO vo);
	  
		//게시물 정보 가져오기
		public VolunteerBoardVO detail(int num);
   
}
