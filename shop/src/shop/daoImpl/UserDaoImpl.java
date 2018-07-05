package shop.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import shop.dao.UserDao;
import shop.pojo.User;
import shop.utils.DBUtils;

public class UserDaoImpl implements UserDao {
	Connection con = DBUtils.getCon();
	@Override
	public int addUser(User user) throws SQLException {
		
		String sql = "insert into s_users(user_name,email,password) values(?,?,?)";
		PreparedStatement	 ps = con.prepareStatement(sql);
			 ps.setString(1, user.getUser_name());
			 ps.setString(2, user.getEmail());
			 ps.setString(3, user.getPassword());
			// con.close();
		 return ps.executeUpdate();
		 
	}

	public User findEmail(String email) throws SQLException {
		String sql ="SELECT email,password,user_name from s_users where email=?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1,email);
		ResultSet result = ps.executeQuery();
		 User user=null;
		while(result.next()) {
			 user = new User();
			 user.setEmail(result.getString("email"));
			 user.setPassword(result.getString("password"));
			 user.setUser_name(result.getString("user_name"));
		}
		return user;
	}

	public int updatePassword(String email,String password) throws SQLException {
		String sql="update s_users SET password=? WHERE email=?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, password);
		ps.setString(2,email );
		int i = ps.executeUpdate();
		return i;
	}

}
