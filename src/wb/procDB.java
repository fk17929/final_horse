package wb;

import java.sql.*;
import java.util.*;
import java.text.*;

public class procDB {
	private final String DB_URL = "jdbc:mysql://localhost:3306/webboard?useUnicode=true&characterEncoding=utf8";
	private final String DB_USER = "root";
	private final String DB_PASSWORD = "1234";
	private Connection conn;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private Vector vList;
	private dbSchema schema;

	public procDB() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = null;
			stmt = null;
			pstmt = null;
			rs = null;
			vList = new Vector();
		} catch (Exception ex) {
			System.out.println((ex.getMessage()));
		}
	}

	private boolean initDBConnection() {
		try {
			conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
			stmt = conn.createStatement();
			return true;
		} catch (Exception e) {
			System.out.println(e);
			return false;
		}
	}

	public boolean checkUser(String userid, String userpw) {
		try {

			if (userid == null || userpw == null)
				return false;
			if (!initDBConnection())
				return false;
			String query = "SELECT count(*) from member where uid='" + userid
					+ "' and upw='" + userpw + "'";

			rs = stmt.executeQuery(query);

			while (rs.next()) {
				String count = rs.getString(1);

				if (count.equals("1")) {
					return true;
				}
			}

			return false;
		} catch (Exception e) {
			System.out.println(e);
			return false;
		}
	}

	public Vector getList() {
		try {
			if (!initDBConnection())
				return null;

			String query = "SELECT * FROM board";
			rs = stmt.executeQuery(query);
			vList.removeAllElements();
			while (rs.next()) {
				schema = new dbSchema();
				schema.setDocIdx(rs.getString(1));
				schema.setUserId(rs.getString(2));
				schema.setDocTitle(rs.getString(3));
				schema.setDocDate(rs.getString(5));
				schema.setDocHits(rs.getString(6));
				vList.addElement(schema);
			}
			rs.close();
			stmt.close();
			conn.close();
			return vList;
		} catch (SQLException e) {
			System.out.println("err:" + e.getMessage());
			return null;
		}
	}

	public void addHit(String idx) {
		try {
			if (!initDBConnection())
				return;

			String Query = "UPDATE board set hits=hits+1 where idx=" + idx;
			stmt.executeUpdate(Query);
		} catch (SQLException e) {
			System.out.println("err:" + e.getMessage());
		}
	}

	public dbSchema getDoc(String idx) {
		try {
			if (!initDBConnection())
				return null;
			schema = new dbSchema();

			String Query = "SELECT * FROM board where idx=" + idx;
			rs = stmt.executeQuery(Query);
			while (rs.next()) {
				schema.setUserId(rs.getString("writer"));
				schema.setDocTitle(rs.getString("title"));
				schema.setDocContents(rs.getString("contents"));
			}

			return schema;
		} catch (SQLException e) {
			System.out.println("err:" + e.getMessage());
			return null;
		}
	}

	public void delDoc(String idx) {
		try {
			if (!initDBConnection())
				return;

			String Query = "DELETE from board where idx=" + idx;
			stmt.executeUpdate(Query);
		} catch (SQLException e) {
			System.out.println("err:" + e.getMessage());
		}
	}

	public boolean addMember(String userid, String userpw, String username) {
		try {
			if (!initDBConnection())
				return false;

			String query = "INSERT INTO member(uid,uname,upw) values(?,?,?)";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userid);
			pstmt.setString(2, username);
			pstmt.setString(3, userpw);
			pstmt.executeUpdate();
			System.out.println(userid+":::"+username +"::::"+userpw);
			return true;
		} catch (SQLException e) {
			System.out.println("err:" + e.getMessage());
			return false;
		}
	}

	public boolean addDoc(String idx, String userid, String title,
			String contents, String date) {
		try {
			if (!initDBConnection())
				return false;

			String Query;
			if (idx == "") {
				Query = "INSERT INTO board(writer, title, contents, wdate, hits) values(?,?,?,?,?)";

				pstmt = conn.prepareStatement(Query);

				pstmt.setString(1, userid);
				pstmt.setString(2, title);
				pstmt.setString(3, contents);
				pstmt.setString(4, date);
				pstmt.setString(5, "0");
			} else {
				Query = "UPDATE board set title='" + title + "', contents='"
						+ contents + "' where idx=" + idx;
				pstmt = conn.prepareStatement(Query);
			}
			pstmt.executeUpdate();
			return true;
		} catch (SQLException e) {
			System.out.println("err:" + e.getMessage());
			return false;
		}

	}
}