	package shop.serviceImpl;

import java.sql.SQLException;

import shop.dao.UserDao;
import shop.daoImpl.UserDaoImpl;
import shop.pojo.User;
import shop.service.UserService;

public class UserServiceImpl implements UserService{
	private UserDao userDao=new UserDaoImpl();
	
	@Override
	public int addUser(User user) throws SQLException {
		return userDao.addUser(user);
	}

	@Override
	public User findEmail(String email) throws SQLException {
		
		return userDao.findEmail(email);
	}

	@Override
	public int updatePassword(String email,String password) throws SQLException {
		// TODO Auto-generated method stub
		return userDao.updatePassword(email,password);
	}



	



}
