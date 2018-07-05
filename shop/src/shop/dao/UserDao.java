package shop.dao;

import java.sql.SQLException;

import shop.pojo.User;

public interface UserDao {
	int addUser(User user) throws SQLException;

	User findEmail(String email) throws SQLException;

	int updatePassword(String email,String password) throws SQLException;
	
	}
