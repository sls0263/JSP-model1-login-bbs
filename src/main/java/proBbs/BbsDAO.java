package proBbs;

import java.sql.*;
import java.util.ArrayList;

public class BbsDAO {
	  private Connection conn;
	  private ResultSet rs;

	  public BbsDAO() {
	  	try {
	  		String url = "jdbc:mysql://localhost:3306/jspdb?serverTimezone=UTC";
	  		String id = "root";
	  		String password = "1234";
	  		Class.forName("com.mysql.cj.jdbc.Driver");	
	  		conn = DriverManager.getConnection(url, id, password);
	  	} catch (Exception e) {
	  		e.printStackTrace();
	  	}
	  }

	  public String getDate() {
	  	String SQL = "SELECT NOW()"; // 현재 시간 가져오기
	  	try {
	  		PreparedStatement pstmt = conn.prepareStatement(SQL);
	  		rs = pstmt.executeQuery();
	  		if (rs.next()) {
	  			return rs.getString(1);
	  		}
	  	} catch(Exception e) {
	  		e.printStackTrace();
	  	}
	  	return "";
	  }

	  public int getNext() { // 다음 글 가지고 오기.
	  	String SQL = "SELECT bbsID FROM BBS ORDER BY bbsID DESC";
	  	try {
	  		PreparedStatement pstmt = conn.prepareStatement(SQL);
	  		rs = pstmt.executeQuery();
	  		if (rs.next()) {
	  			return rs.getInt(1) + 1;
	  		}
	  		return 1; // 첫 번째 게시물인 경우
	  	} catch(Exception e) {
	  		e.printStackTrace();
	  	}
	  	return -1; // 데이터베이스 오류
	  }

	  public int write(String bbsTitle, String memberID, String bbsContent) {
	  	String SQL = "INSERT INTO BBS VALUES (?, ?, ?, ?, ?, ?)";
	  	try {
	  		PreparedStatement pstmt = conn.prepareStatement(SQL);
	  		pstmt.setInt(1, getNext());
	  		pstmt.setString(2, bbsTitle);
	  		pstmt.setString(3, memberID);
	  		pstmt.setString(4, getDate());
	  		pstmt.setString(5, bbsContent);
	  		pstmt.setInt(6, 1);

	  		return pstmt.executeUpdate();
	  	} catch(Exception e) {
	  		e.printStackTrace();
	  	}
	  	return -1; // 데이터베이스 오류
	  }
	  
	  public ArrayList<BbsDTO> getList(int pageNumber) {
			String SQL = "SELECT * FROM BBS WHERE bbsID < ? AND bbsAvailable = 1 ORDER BY bbsID DESC LIMIT 10";
			ArrayList<BbsDTO> list = new ArrayList<BbsDTO>();
			try {
				PreparedStatement pstmt = conn.prepareStatement(SQL);
				pstmt.setInt(1, getNext() - (pageNumber -1) * 10);
				rs = pstmt.executeQuery();
				while (rs.next()) {
					BbsDTO bbs = new BbsDTO();
					bbs.setBbsID(rs.getString(1));
					bbs.setBbsTitle(rs.getString(2));
					bbs.setMemberID(rs.getString(3));
					bbs.setBbsDate(rs.getString(4));
					bbs.setBbsContent(rs.getString(5));
					bbs.setBbsAvailable(rs.getString(1));
					list.add(bbs);
				}			
			} catch(Exception e) {
				e.printStackTrace();
			}
			return list;
		}

		public boolean nextPage(int pageNumber) {
			String SQL = "SELECT * FROM BBS WHERE bbsID < ? AND bbsAvailable = 1";

			try {
				PreparedStatement pstmt = conn.prepareStatement(SQL);
				pstmt.setInt(1, getNext() - (pageNumber -1) * 10);
				rs = pstmt.executeQuery();
				if (rs.next()) {
					return true;
				}			
			} catch(Exception e) {
				e.printStackTrace();
			}
			return false;
		}
		
		public BbsDTO getBbs(int bbsID) {
			String SQL = "SELECT * FROM BBS WHERE bbsID = ?";

			try {
				PreparedStatement pstmt = conn.prepareStatement(SQL);
				pstmt.setInt(1, bbsID);
				rs = pstmt.executeQuery();
				if (rs.next()) {
					BbsDTO bbs = new BbsDTO();
					bbs.setBbsID(rs.getString(1));
					bbs.setBbsTitle(rs.getString(2));
					bbs.setMemberID(rs.getString(3));
					bbs.setBbsDate(rs.getString(4));
					bbs.setBbsContent(rs.getString(5));
					bbs.setBbsAvailable(rs.getString(1));
					return bbs;
				}			
			} catch(Exception e) {
				e.printStackTrace();
			}
			return null;
		}
		
		public int update(int bbsID, String bbsTitle, String bbsContent) {
			String SQL = "UPDATE BBS SET bbsTitle = ?, bbsContent = ? WHERE bbsID =?";
			try {
				PreparedStatement pstmt = conn.prepareStatement(SQL);
				pstmt.setString(1, bbsTitle);
				pstmt.setString(2, bbsContent);
				pstmt.setInt(3, bbsID);

				return pstmt.executeUpdate();
			} catch(Exception e) {
				e.printStackTrace();
			}
			return -1; // 데이터베이스 오류
		}

		public int delete(int bbsID) {
			String SQL = "UPDATE BBS SET bbsAvailable = 0 WHERE bbsID = ?";
			try {
				PreparedStatement pstmt = conn.prepareStatement(SQL);
				pstmt.setInt(1, bbsID);

				return pstmt.executeUpdate();
			} catch(Exception e) {
				e.printStackTrace();
			}
			return -1; // 데이터베이스 오류
		}
		
		public ArrayList<BbsDTO> getSearch(String searchField, String searchText){//특정한 리스트를 받아서 반환
		      ArrayList<BbsDTO> list = new ArrayList<BbsDTO>();
		      String SQL ="select * from bbs WHERE "+searchField.trim();
		      try {
		            if(searchText != null && !searchText.equals("") ){//이거 빼면 안 나온다ㅜ 왜지?
		                SQL +=" LIKE '%"+searchText.trim()+"%' order by bbsID desc limit 10";
		            }
		            PreparedStatement pstmt=conn.prepareStatement(SQL);
					rs=pstmt.executeQuery();//select
		         while(rs.next()) {
		            BbsDTO bbs = new BbsDTO();
		            bbs.setBbsID(rs.getString(1));
		            bbs.setBbsTitle(rs.getString(2));
		            bbs.setMemberID(rs.getString(3));
		            bbs.setBbsDate(rs.getString(4));
		            bbs.setBbsContent(rs.getString(5));
		            bbs.setBbsAvailable(rs.getString(6));
		            list.add(bbs);//list에 해당 인스턴스를 담는다.
		         }         
		      } catch(Exception e) {
		         e.printStackTrace();
		      }
		      return list;//ㄱㅔ시글 리스트 반환
		   }
		
		public int getCount() {
			String SQL = "select count(*) from bbs";
			try {
				PreparedStatement pstmt=conn.prepareStatement(SQL);
				rs=pstmt.executeQuery();
				if(rs.next()) {
					return rs.getInt(1);
				}			
			} catch(Exception e) {
				e.printStackTrace();
			}
			return -1;
		}
	}