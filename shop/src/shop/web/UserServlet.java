package shop.web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import shop.pojo.User;
import shop.service.UserService;
import shop.serviceImpl.UserServiceImpl;


/**
 * Servlet implementation class UserServlet
 */
public class UserServlet extends BaseServlet {
		private UserService userService = new UserServiceImpl();
		
	public void regist(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException {
		String user_name = req.getParameter("user_name");
		String password = req.getParameter("password");
		String email = req.getParameter("email");
		String selectEmail=null;
//		String uuid = UUID.randomUUID().toString();
		User user = new User();
		user.setEmail(email);
		user.setPassword(password);
		user.setUser_name(user_name);
		int i=0;
		try {	
			 i = userService.addUser(user);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(i>=0) {
			resp.sendRedirect("login.jsp");
		}else {
				resp.sendRedirect("registered.jsp");
		}
	}
	
	public void checkEmail(HttpServletRequest req,HttpServletResponse resp) throws IOException {
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		User user=null;
		try {
			user=userService.findEmail(email);
		} catch (SQLException e2) {
			// TODO Auto-generated catch block	
			e2.printStackTrace();
		}
		if(user!=null) {
				resp.getWriter().write("The mailbox already exists!");
			
			}else {
					resp.getWriter().write("success");
			}
		}
	
	public void login(HttpServletRequest req,HttpServletResponse resp) throws IOException, ServletException {
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		User user=null;
		try {
			user=userService.findEmail(email);
		} catch (SQLException e2) {
			// TODO Auto-generated catch block	
			e2.printStackTrace();
		}
		if(user!=null) {
				//登录成功
				String autoLogin = req.getParameter("autoLogin");
				if("autoLogin".equals(autoLogin)){
					//要自动登录
					Cookie cookie_email = new Cookie("cookie_email",user.getEmail());
					cookie_email.setMaxAge(10*60);
					Cookie cookie_password = new Cookie("cookie_password",user.getPassword());
					cookie_password.setMaxAge(10*60);
					resp.addCookie(cookie_email);
					resp.addCookie(cookie_password);
				}
		if(user.getPassword().equals(password)) {
			HttpSession session = req.getSession();
			session.setAttribute("user", user);
			resp.sendRedirect("index.jsp");
		}else {
			req.setAttribute("loginError", "用户名或密码错误!");
			req.getRequestDispatcher("login.jsp").forward(req, resp);
			
		}
	}
}
	
	public void logout(HttpServletRequest req,HttpServletResponse resp) throws IOException {
		HttpSession session = req.getSession();
		session.removeAttribute("user");
		Cookie cookie_username = new Cookie("cookie_username","");
		cookie_username.setMaxAge(0);
		Cookie cookie_password = new Cookie("cookie_password","");
		cookie_password.setMaxAge(0);
		resp.addCookie(cookie_username);
		resp.addCookie(cookie_password);
		resp.sendRedirect("login.jsp");
	}
	
	
	public void reEmail(HttpServletRequest req,HttpServletResponse resp) throws SQLException, IOException, ServletException {
		String email = req.getParameter("email");
		User user =null;
		if(email!=null&&email!="") {
			 user = userService.findEmail(email);
		}
		if(user!=null) {
			req.setAttribute("email", email);
			req.getRequestDispatcher("repassword.jsp").forward(req, resp);
		}else {
			req.setAttribute("emailMsg", "你输入的邮箱有误!");
			req.getRequestDispatcher("reemail.jsp").forward(req, resp);
		}
	}
	
	public void	rePassword(HttpServletRequest req,HttpServletResponse resp) throws SQLException, IOException {
		String password = req.getParameter("password");
		String email = req.getParameter("email");
		int isSuccess =0;
		if(password!=null&&password!="") {
			 isSuccess=userService.updatePassword(email,password);
		}
		System.out.println(isSuccess);
		if(isSuccess>0) {
			resp.sendRedirect("success.jsp");
		}else {
			resp.sendRedirect("fail.jsp");
		}
		
	}

}
