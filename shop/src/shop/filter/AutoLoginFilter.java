package shop.filter;

import java.io.IOException;

import java.sql.SQLException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shop.pojo.User;
import shop.service.UserService;
import shop.serviceImpl.UserServiceImpl;



public class AutoLoginFilter implements Filter{
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		
		User user = (User) req.getSession().getAttribute("user");
		
		if(user==null){
			String cookie_email = null;
			String cookie_password = null;
			
			Cookie[] cookies = req.getCookies();
			if(cookies!=null){
				for(Cookie cookie:cookies){
					if("cookie_email".equals(cookie.getName())){
						cookie_email = cookie.getValue();
					}
					if("cookie_password".equals(cookie.getName())){
						cookie_password = cookie.getValue();
					}
				}
			}
			if(cookie_email!=null&&cookie_password!=null&&cookie_email!=""&&cookie_password!=""){
				UserService service = new UserServiceImpl();
				try {
					user = service.findEmail(cookie_email);
				} catch (SQLException e) {
					e.printStackTrace();
				}
				req.getSession().setAttribute("user", user);
				
			}
		}
		chain.doFilter(req, (HttpServletResponse)response);
		
	}
	

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		
	}

	

	@Override
	public void destroy() {
		
	}

}
