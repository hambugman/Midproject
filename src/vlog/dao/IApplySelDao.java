package vlog.dao;

import java.sql.SQLException;
import java.util.List;

import vlog.vo.ApplyVO;

public interface IApplySelDao {

	public List<ApplyVO> selectapply(String id) throws SQLException;
}
