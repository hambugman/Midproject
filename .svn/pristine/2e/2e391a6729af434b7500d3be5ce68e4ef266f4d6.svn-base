package vlog.dao;

import java.sql.SQLException;
import java.util.List;

import vlog.vo.askVo;

public interface IAskDao {
	
	//문의사항 작성
	public int askInsert(askVo vo) throws SQLException;
	
	//문의사항 수정
	public int askUpdate(askVo vo) throws SQLException;
	
	//보육원별 문의사항 목록
	public List<askVo> allAsk(String orpNo) throws SQLException;
	
	//문의사항 내용
	public askVo detailAsk(int askNo) throws SQLException;

}
