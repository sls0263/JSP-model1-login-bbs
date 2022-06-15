package user;

import java.sql.*;

public class UserDAO {

	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs= null;

	public UserDAO() {
		try {
			String URL = "jdbc:mysql://localhost:3306/jspdb?serverTimezone=UTC";
			String ID = "root";
			String Password = "1234";
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(URL, ID, Password);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public int login(String memberID, String password) {
		String SQL = "SELECT password FROM membertbl WHERE memberID = ?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1,  memberID);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				if (rs.getString(1).equals(password)) {
					return 1; // 로그인 성공
				} else {
					return 0; // 비밀번호 불일치
				}
			}
			return -1; // 아이디가 없음
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2; // 데이터베이스 오류
	}
	
	public int join(UserDTO user) {
		String SQL = "INSERT INTO membertbl VALUES (?, ?, ?, ?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user.getMemberID());
			pstmt.setString(2, user.getPassword());
			pstmt.setString(3, user.getName());
			pstmt.setString(5, user.getEmail());
			pstmt.setString(4, user.getGender());
			pstmt.setString(6, user.getPhone());

			return pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	public int update(UserDTO user) {
		String SQL = "update membertbl set password=?, email=?, gender=?, phone=?  where memberid=?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user.getPassword());
			pstmt.setString(2, user.getEmail());
			pstmt.setString(3, user.getGender());
			pstmt.setString(4, user.getPhone());
			pstmt.setString(5, user.getMemberID());

			return pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1;
	
	}
	
}