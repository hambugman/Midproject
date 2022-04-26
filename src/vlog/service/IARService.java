package vlog.service;

import java.util.List;

import vlog.vo.arVo;

public interface IARService {
	//댓글작성
	public int arInsert(arVo vo);
	
	//댓글수정
	public int arUpdate(arVo vo);
	
	//댓글삭제
	public int arDelete(int raNo);
	
	//게시글별 댓글목록
	public List<arVo> arList(int raNo);


}
