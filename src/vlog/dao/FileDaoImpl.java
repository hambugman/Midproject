package vlog.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.ddit.config.SqlMapClientFactory;
import vlog.vo.FileVO;

public class FileDaoImpl implements IFileDao {

	private SqlMapClient smc;
	private static FileDaoImpl dao;

	private FileDaoImpl() {
		smc = SqlMapClientFactory.getSqlMapClient();
	}

	public static IFileDao getDao() {
		if (dao == null)
			dao = new FileDaoImpl();
		return dao;

	}

	@Override
	public List<FileVO> selectfile(Map<String, Object> map) throws SQLException {

		return smc.queryForList("fileboard.selectfile", map);
	}

	@Override
	public int insertfile(FileVO vo) throws SQLException {

		return (int)smc.insert("fileboard.insertfile",vo);
	}
	
	@Override
	public List<FileVO> divSelect(String div) throws SQLException {
		
		return smc.queryForList("fileboard.divSelect", div);
	}

}
