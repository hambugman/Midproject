package vlog.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import vlog.vo.FileVO;

public interface IFileDao {
	
	public List<FileVO> selectfile(Map<String, Object> map) throws SQLException; // 파일게시판 

	public int insertfile(FileVO vo) throws SQLException; // 파일삽입하기 
	
	public List<FileVO> divSelect(String div) throws SQLException; //div별 select

}
