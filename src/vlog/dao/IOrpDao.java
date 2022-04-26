package vlog.dao;

import java.sql.SQLException;
import java.util.List;

import vlog.vo.OrpVo;

public interface IOrpDao {
	
	//모든 보육원 정보 가져오기
	public List<OrpVo> orpAll() throws SQLException;
	
	//해당 보육원 정보 가져오기
	public OrpVo orpDetail(String orp_no) throws SQLException;

}
