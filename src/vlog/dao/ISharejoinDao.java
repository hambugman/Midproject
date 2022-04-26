package vlog.dao;

import java.sql.SQLException;
import java.util.List;

import vlog.vo.SharejoinVO;

public interface ISharejoinDao {
	public List<SharejoinVO> selectAll () throws SQLException; //나눔신청게시판

}
