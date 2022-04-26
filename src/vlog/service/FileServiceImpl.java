package vlog.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import vlog.dao.FileDaoImpl;
import vlog.dao.IFileDao;
import vlog.vo.FileVO;

public class FileServiceImpl implements IFileService {
	private static IFileDao dao;
	private static FileServiceImpl service;
	
	private FileServiceImpl() {
		dao=FileDaoImpl.getDao();
	}
	public static IFileService getService() {
		if(service==null)
			service=new FileServiceImpl();
		return service;
	}
	
	@Override
	public List<FileVO> selectfile(Map<String, Object> map) {
	
		List<FileVO> list =null;
	
		try {
			list=dao.selectfile(map);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public int insertfile(FileVO vo) {
		int fileno=0;
		try {
			fileno=dao.insertfile(vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return fileno;
	}
	
	@Override
	public List<FileVO> divSelect(String div) {
		List<FileVO> divList = null;
		
		try {
			divList = dao.divSelect(div);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return divList;
	}
	

}
