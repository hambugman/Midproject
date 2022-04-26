package vlog.service;

import java.util.List;

import vlog.vo.volunVo;

public interface IVolunService {
	
	//봉사활동 신청
	public int volunInsert(volunVo vo);
	
	//회원별 봉사활동 내역
	public List<volunVo> commonList(String genId);
	
	//보육원별 봉사활동 내역
	public List<volunVo> orpList(String orpId);
}
