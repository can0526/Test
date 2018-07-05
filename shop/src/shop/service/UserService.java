package shop.service;

import java.sql.SQLException;

import shop.pojo.User;

public interface UserService {
	int addUser(User user) throws SQLException;

	User findEmail(String email) throws SQLException;

	int updatePassword(String email,String password) throws SQLException;

}
