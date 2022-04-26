package vlog.dao;

import java.sql.SQLException;
import java.util.List;

import vlog.vo.orpNoVo;

public interface IONoticeDao {
	//공지사항 작성
	public int oNoticeInsert(orpNoVo vo) throws SQLException;
	
	//공지사항 수정
	public int oNoticeUpdate(orpNoVo vo) throws SQLException;
	
	//보육원별 공지사항 목록
	public List<orpNoVo> allONotice(String orpNo) throws SQLException;
	
	//공지사항 내용
	public orpNoVo detailONoice(int noNo) throws SQLException;
	
	//공지사항 삭제
	public int oNoticeDelete(int noNo) throws SQLException;

}
