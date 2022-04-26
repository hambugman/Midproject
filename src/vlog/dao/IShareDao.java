package vlog.dao;

import java.sql.SQLException;
import java.util.List;

import vlog.vo.ShareVO;


public interface IShareDao {

	
	public List<ShareVO> selectAll () throws SQLException; //나눔게시판
	
	
	public int insertnanum(ShareVO vo) throws SQLException; //나눔참여하기
	
}
