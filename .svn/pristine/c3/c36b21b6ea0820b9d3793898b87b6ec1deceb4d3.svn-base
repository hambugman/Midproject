package vlog.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ResourceBundle;

public class DBUtil {
	private static ResourceBundle bundle;
	
	static{
		bundle = ResourceBundle.getBundle("kr.or.ddit.config.dbinfo");
		//dbinfo의 확장자는 항상 properties이기 때문에 확장자 안써줌
		
		try {
//			Class.forName("oracle.jdbc.driver.OracleDriver");
			Class.forName(bundle.getString("driver"));
			
		} catch (ClassNotFoundException e) {
			System.out.println("드라이버 로딩 실패");
			e.printStackTrace();
		}
	}
	
	public static Connection getConnection() {
		try {
//			return DriverManager.getConnection(
//			"jdbc:oracle:thin:@localhost:1521:xe", "pcl0725", "java");

			return DriverManager.getConnection(bundle.getString("url"),
					bundle.getString("user"), bundle.getString("pass"));
		} catch (SQLException e) {
			System.out.println("오라클 연결 실패");
			return null;
		}
	}
}
