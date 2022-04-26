package vlog.service;

import java.util.List;

import vlog.vo.orpNoVo;

public interface IONoticeService {
	//공지사항 작성
	public int oNoticeInsert(orpNoVo vo);
	
	//공지사항 수정
	public int oNoticeUpdate(orpNoVo vo);
	
	//보육원별 공지사항 목록
	public List<orpNoVo> allONotice(String orpNo);
	
	//공지사항 내용
	public orpNoVo detailONoice(int noNo);
	
	//공지사항 삭제
	public int oNoticeDelete(int noNo);
}
