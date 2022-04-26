package vlog.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.ddit.config.SqlMapClientFactory;
import vlog.vo.CommonVO;
import vlog.vo.OrpVo;
import vlog.vo.StudentVO;
import vlog.vo.VaReplyVO;
import vlog.vo.VolunteerBoardVO;

public class VBoardDaoImpl implements IVBoardDao {

	private  SqlMapClient  client ;
	private static IVBoardDao  dao;
	
	private VBoardDaoImpl(){
		client = SqlMapClientFactory.getSqlMapClient();
	}
	
	public static IVBoardDao getDao(){
		if(dao == null)  dao = new VBoardDaoImpl();
		return dao;
	}
	
	@Override
	public List<VolunteerBoardVO> selectByPage(Map<String, Integer> map)
			throws SQLException {
		// TODO Auto-generated method stub
		return client.queryForList("vboard.selectByPage", map);
	}

	@Override
	public int totalCount() throws SQLException {
		// TODO Auto-generated method stub
		return (int)client.queryForObject("vboard.totalCount");
	}

	@Override
	public int insertReply(VaReplyVO vo) throws SQLException {
		// TODO Auto-generated method stub
		return (int)client.insert("vareply.insertReply", vo);
	}

	@Override
	public List<VaReplyVO> listReply(int bonum)  throws SQLException{
		// TODO Auto-generated method stub
		return client.queryForList("vareply.listReply", bonum);
	}

	@Override
	public int updateReply(VaReplyVO vo) throws SQLException {
		// TODO Auto-generated method stub
		return client.update("vareply.updateReply", vo);
	}

	@Override
	public int deleteReply(int renum) throws SQLException {
		// TODO Auto-generated method stub
		return client.delete("vareply.deleteReply", renum);
	}

	@Override
	public int deleteBoard(int num) throws SQLException {
	
		return client.delete("vboard.deleteBoard", num);
	}

	@Override
	public int insertBoard(VolunteerBoardVO vo) throws SQLException {
		// TODO Auto-generated method stub
		return (int)client.insert("vboard.insertBoard", vo);
	}

	@Override
	public int updateHit(int num) throws SQLException {
		// TODO Auto-generated method stub
		return client.update("vboard.updateHit", num);
	}

	@Override
	public int updateBoard(VolunteerBoardVO vo) throws SQLException {
		// TODO Auto-generated method stub
		return client.update("vboard.updateBoard", vo);
	}

	@Override
	public int stdCrystal(StudentVO vo) throws SQLException {
		
		return client.update("vboard.updateStd",vo);
	}

	@Override
	public int orpCrystal(OrpVo vo) throws SQLException {
		
		return client.update("vboard.updateOrp",vo);
	}

	@Override
	public int comCrystal(CommonVO vo) throws SQLException {
		
		return client.update("vboard.updateCom",vo);
	}

	@Override
	public VolunteerBoardVO detail(int num) throws SQLException {
		
		return (VolunteerBoardVO) client.queryForObject("vboard.detail",num);
	}

}







