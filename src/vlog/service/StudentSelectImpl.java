package vlog.service;

import java.sql.SQLException;
import java.util.List;

import vlog.dao.IStudentSelectDao;
import vlog.dao.StudentSelectDaoImpl;
import vlog.vo.StudentVO;

public class StudentSelectImpl implements IStudentSelect {

	private static IStudentSelectDao dao;
	private static  StudentSelectImpl service;
	
	private StudentSelectImpl() {
		dao=StudentSelectDaoImpl.getDao();
	}
	public static IStudentSelect getService() {
		if(service==null) service=new StudentSelectImpl();
		return service;
	}
	@Override
	public List<StudentVO> selectstudentAll() {
		List <StudentVO>list =null;
		
		try {
			list=dao.selectstudentAll();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}

}
