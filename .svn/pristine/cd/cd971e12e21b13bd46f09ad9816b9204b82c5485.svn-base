package vlog.dao;

import java.sql.SQLException;
import java.util.List;

import vlog.vo.arVo;

public interface IARDao {
	//댓글작성
	public int arInsert(arVo vo) throws SQLException;
	
	//댓글수정
	public int arUpdate(arVo vo) throws SQLException;
	
	//댓글삭제
	public int arDelete(int raNo) throws SQLException;
	
	//게시글별 댓글목록
	public List<arVo> arList(int raNo) throws SQLException;
}
