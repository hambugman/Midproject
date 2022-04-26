package vlog.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.ddit.config.SqlMapClientFactory;
import vlog.vo.StudentVO;

public class StudentSelectDaoImpl implements IStudentSelectDao {

	private SqlMapClient smc;
	private static StudentSelectDaoImpl dao;
	
	private StudentSelectDaoImpl() {
		smc=SqlMapClientFactory.getSqlMapClient();
	}
	
	public static IStudentSelectDao getDao() {
		if(dao==null)
			dao=new StudentSelectDaoImpl();
		return dao;
	}
	
	@Override
	public List<StudentVO> selectstudentAll() throws SQLException {
		
		return smc.queryForList("student.selectstudentAll");
	}

}
