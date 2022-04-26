package vlog.dao;

import java.sql.SQLException;
import java.util.List;

import vlog.vo.GalleryVo;

public interface IGalleryDao {
	
	//글 등록하기
	public int galleryInsert(GalleryVo vo) throws SQLException;
	
	//글 수정하기
	public int galleryUpdate(GalleryVo vo) throws SQLException;
	
	//보육원 별 전체 글 목록
	public List<GalleryVo> allGallery(String orp) throws SQLException;
	
	//글 출력하기
	public GalleryVo detailGallery(int no) throws SQLException;
	
	//글 삭제하기
	public int galleryDelete(int no) throws SQLException;


}
