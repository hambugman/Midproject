package vlog.dao;

import java.sql.SQLException;
import java.util.List;

import vlog.vo.volunVo;

public interface IVolunDao {
	
	//봉사활동 신청
	public int volunInsert(volunVo vo) throws SQLException;
	
	//회원별 봉사활동 내역
	public List<volunVo> commonList(String genId) throws SQLException;
	
	//보육원별 봉사활동 내역
	public List<volunVo> orpList(String orpId) throws SQLException;
}
