package vlog.service;

import java.util.List;

import vlog.vo.askVo;

public interface IAskService {
	//문의사항 작성
	public int askInsert(askVo vo);
	
	//문의사항 수정
	public int askUpdate(askVo vo);
	
	//보육원별 문의사항 목록
	public List<askVo> allAsk(String orpNo);
	
	//문의사항 내용
	public askVo detailAsk(int askNo);
}
