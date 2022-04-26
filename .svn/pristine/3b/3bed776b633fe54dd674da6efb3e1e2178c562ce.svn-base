package vlog.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.ddit.config.SqlMapClientFactory;
import vlog.vo.ComReplyVO;
import vlog.vo.CommonVO;
import vlog.vo.CommunityVO;
import vlog.vo.OrpVo;
import vlog.vo.StudentVO;

public class ComBoardImpl implements IComBoard{
	private SqlMapClient smc; 
	private static ComBoardImpl dao;


		//싱글턴------------------------------------------
		private ComBoardImpl(){
			smc = SqlMapClientFactory.getSqlMapClient();
		};
		
		public static IComBoard getDao() {
			if(dao==null)dao= new ComBoardImpl();
			return dao;
		}
	
	@Override
	public List<CommunityVO> selectLocationAll(String location) throws SQLException {
		
		return smc.queryForList("comboard.selectLocationAll",location);
	}

	@Override
	public List<CommunityVO> selectBestAll(String location) throws SQLException {
		
		return smc.queryForList("comboard.selectBestAll",location);
	}

	@Override
	public CommunityVO detailComBoard(int comno) throws SQLException {
		return (CommunityVO) smc.queryForObject("comboard.detailComBoard", comno);
	}

	@Override
	public int insertCom(CommunityVO vo) throws SQLException {
		
		return (int) smc.insert("comboard.insertCom",vo);
	}
	
	
	//댓글
	
	@Override
	public int insertReply(ComReplyVO vo) throws SQLException {
		return (int) smc.insert("comreply.insertComReply",vo);
	}

	@Override
	public List<ComReplyVO> listReply(int bonum) throws SQLException {
		
		return smc.queryForList("comreply.listComReply",bonum);
	}

	@Override
	public int updateReply(ComReplyVO vo) throws SQLException {
		
		return smc.update("comreply.updateComReply",vo);
	}

	@Override
	public int deleteReply(int renum) throws SQLException {
		
		return smc.delete("comreply.deleteComReply",renum);
	}

	
	
	
	
	
	//학생
	@Override
	public String insertStd(StudentVO vo) throws SQLException {
		String id=(String) smc.insert("comboard.insertStd",vo);
		return id;
	}

	@Override
	public String checkId(String id) throws SQLException {

		return (String) smc.queryForObject("comboard.checkId", id);
	}

	@Override
	public StudentVO loginStd(StudentVO vo) throws SQLException {
		
		return (StudentVO) smc.queryForObject("comboard.loginStd",vo);
	}

	
	//일반회원
	
	@Override
	public String insertCommon(CommonVO vo) throws SQLException {
		
		return (String) smc.insert("comboard.insertCommon",vo);
	}

	@Override
	public String checkCommonId(String id) throws SQLException {
		return (String) smc.queryForObject("comboard.checkCommonId",id);
	}

	@Override
	public CommonVO loginCommon(CommonVO vo) throws SQLException {
		return (CommonVO) smc.queryForObject("comboard.loginCommon",vo);
	}

	@Override
	public int totalCount() throws SQLException {
		return (int) smc.queryForObject("comboard.totalCount");
	}

	//관리자 로그인
	@Override
	public OrpVo loginOrp(OrpVo vo) throws SQLException {
		
		return (OrpVo) smc.queryForObject("comboard.loginOrp",vo);
	}

	@Override
	public int updateHit(int num) throws SQLException {
		
		return smc.update("comboard.updateHit",num);
	}

	@Override
	public int deleteBoard(int num) throws SQLException {
		
		return smc.delete("comboard.deleteBoard",num);
	}


	

}
