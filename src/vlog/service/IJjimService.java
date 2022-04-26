package vlog.service;

import java.util.List;
import java.util.Map;

import vlog.vo.jjimVo;

public interface IJjimService {
	//찜목록 추가
	public String jjimInsert(jjimVo vo);
	
	//찜목록 뽑기
	public List<jjimVo> jjimAll(String genId);
	
	//보육원 찜했는지 확인
	public Object jjimOrp(Map<String, String> map);

	//찜목록 삭제
	public int jjimDelete(String orpNo);
}
