package vlog.service;

import java.util.List;

import vlog.vo.GalleryVo;

public interface IGalleryService {

	//글 등록하기
	public int galleryInsert(GalleryVo vo);
	
	//글 수정하기
	public int galleryUpdate(GalleryVo vo);
	
	//보육원 별 전체 글 목록
	public List<GalleryVo> allGallery(String orp);
	
	//글 출력하기
	public GalleryVo detailGallery(int no);
	
	//글 삭제하기
	public int galleryDelete(int no);
}
