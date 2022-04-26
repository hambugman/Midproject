package vlog.service;

import java.util.List;

import vlog.vo.CommonVO;

public interface ICommonService {
	public List<CommonVO> selectcommon(String id);

}
