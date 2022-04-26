package vlog.service;

import java.util.List;

import vlog.vo.StudentVO;


public interface IStudentSelect {

	public List<StudentVO> selectstudentAll(); //마이페이지에서 구성원정보  불러오는 메소드 

}
