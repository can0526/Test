package shop.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.google.gson.JsonArray;

import shop.pojo.Cart;
import shop.pojo.CartItem;
import shop.pojo.Money;
import shop.pojo.PageBean;
import shop.pojo.Product;
import shop.service.ProductService;
import shop.serviceImpl.ProductServiceImpl;


public class ProductServlet extends BaseServlet {
	private ProductService productService=new ProductServiceImpl();
	//分页
	public void findProductListByPage(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		resp.setContentType("text/html;charset=UTF-8");
		resp.setCharacterEncoding("UTF-8");
		String s_currentPage = req.getParameter("currentPage");
		String s_pageSize = req.getParameter("pageSize");
		String s_cid=req.getParameter("cid");
		int currentPage =0;
		int pageSize=0;
		int cid=0;
		if(s_cid==null) {
			cid=0;
		}else {
			cid = Integer.parseInt(s_cid);
		}
		
		if(s_currentPage==null) {
			currentPage=1;
		}else {
		 currentPage = Integer.parseInt(s_currentPage);
		}
		if(s_pageSize==null) {
			pageSize=9;
		}else {
			pageSize= Integer.parseInt(s_pageSize);
		}
		int index = (currentPage-1)*pageSize;
		List<Product> list=null;
		try {
			list= productService.findProductListByPage(cid, index, pageSize);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		int totalCount=0;
		try {
			 totalCount=productService.findTotalCount(cid);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		PageBean<Product> pageBean = new PageBean<Product>();
		pageBean.setCurrentPage(currentPage);
		pageBean.setList(list);
		pageBean.setPageSize(pageSize);
		pageBean.setTotalCount(totalCount);
		int totalPage=(totalCount+pageSize-1)/pageSize;
		pageBean.setTotalPage(totalPage);
		req.setAttribute("pageBean", pageBean);
//		out.flush();
		System.out.println(pageBean.getPageSize());
		req.getRequestDispatcher("products.jsp").forward(req, resp);
	}
	//ajax异步分类分页显示商品数据
	public void findPage(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		resp.setContentType("text/html;charset=UTF-8");
		resp.setCharacterEncoding("UTF-8");
		String s_currentPage = req.getParameter("currentPage");
		String s_pageSize = req.getParameter("pageSize");
		String s_cid=req.getParameter("cid");
		int currentPage =0;
		int pageSize=0;
		int cid=0;
		if(s_cid==null&&s_cid=="") {
			cid=0;
		}else {
			cid = Integer.parseInt(s_cid);
		}
		
		if(s_currentPage==null) {
			currentPage=1;
		}else {
		 currentPage = Integer.parseInt(s_currentPage);
		}
		if(s_pageSize==null) {
			pageSize=9;
		}else {
			pageSize= Integer.parseInt(s_pageSize);
		}
		int index = (currentPage-1)*pageSize;
		List<Product> list=null;
		try {
			list= productService.findProductListByPage(cid, index, pageSize);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		int totalCount=0;
		try {
			 totalCount=productService.findTotalCount(cid);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		PageBean<Product> pageBean = new PageBean<Product>();
		pageBean.setCurrentPage(currentPage);
		pageBean.setList(list);
		pageBean.setPageSize(pageSize);
		pageBean.setTotalCount(totalCount);
		int totalPage=(totalCount+pageSize-1)/pageSize;
		pageBean.setTotalPage(totalPage);
	
//		HttpSession session = req.getSession();
//		session.setAttribute("pageBean1", pageBean);
		Gson gson = new Gson();
		String json = gson.toJson(pageBean);
		PrintWriter out = resp.getWriter();
		out.write(json);
		out.flush();
		out.close();
		System.out.println(pageBean.getPageSize());
	}
	
	
	//锟斤拷示锟斤拷页锟斤拷品
	public void indexProduct(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Product> drinkProductList=null;
		List<Product> fruitProductList=null;
		List<Product> newProductList=null;
		HttpSession session = req.getSession();
		try {
			fruitProductList=productService.findProductListByCid(1,0,6);
			drinkProductList=productService.findProductListByCid(2,0,6);
			newProductList=productService.findNewProduct();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		req.setAttribute("drinkProductList", drinkProductList);
		req.setAttribute("fruitProductList", fruitProductList);
		session.setAttribute("newProductList", newProductList);
		req.getRequestDispatcher("index1.jsp").forward(req, resp);
	}
	
	public void productInfo(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String s_pid = req.getParameter("pid");
		int pid=Integer.parseInt(s_pid);
		Product product=null;
		try {
			product=productService.findProductByPid(pid);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		req.setAttribute("product", product);
		req.getRequestDispatcher("single.jsp").forward(req, resp);;
	}
	
	
	public void searchProduct(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=UTF-8");
		resp.setCharacterEncoding("UTF-8");
		String s_currentPage = req.getParameter("currentPage");
		String s_pageSize = req.getParameter("pageSize");
		String pname = req.getParameter("pname");
		int currentPage =0;
		int pageSize=0;
		if(s_currentPage==null) {
			currentPage=1;
		}else {
		 currentPage = Integer.parseInt(s_currentPage);
		}
		if(s_pageSize==null) {
			pageSize=9;
		}else {
			pageSize= Integer.parseInt(s_pageSize);
		}
		
		int index = (currentPage-1)*pageSize;
		
		List<Product> searchProductList =null;
		if(pname!=null&&pname!="") {
		try {
			searchProductList=productService.searchProduct(pname,index,pageSize);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			}
		}
		
		int totalCount=0;
		try {
			 totalCount=productService.findTotalCountByPname(pname);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		PageBean<Product> pageBean = new PageBean<Product>();
		pageBean.setCurrentPage(currentPage);
		pageBean.setList(searchProductList);
		pageBean.setPageSize(pageSize);
		pageBean.setTotalCount(totalCount);
		int totalPage=(totalCount+pageSize-1)/pageSize;
		pageBean.setTotalPage(totalPage);
		req.setAttribute("pageBean", pageBean);
		req.setAttribute("pname", pname);
		req.setAttribute("searchProductList", searchProductList);
//		out.flush();
		System.out.println(pageBean.getPageSize());
		req.getRequestDispatcher("household.jsp").forward(req, resp);
		
		//--------------------------------
		
		
	}

	
	public void shopCart(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String s_pid = req.getParameter("pid");
		//获取商品数量
		String s_buyNum = req.getParameter("buyNum");
		int pid = Integer.parseInt(s_pid);
		Product product=null;
		try {
			product=productService.findProductByPid(pid);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		Cart cart = (Cart) session.getAttribute("cart");
		if(cart==null) {
			 cart =new Cart();
		}
		
		Map<String, CartItem> map = cart.getCartItems();

		int buyNum = 0;
		if(s_buyNum!=null&&s_buyNum!="") {
			 buyNum = Integer.parseInt(s_buyNum);
		}else {
			buyNum=1;
		}
		
		System.out.println(buyNum);
		double shop_price=Double.parseDouble(product.getShop_price());
		//单类商品总价格
		double subtotal=buyNum*shop_price;
		//购物项
		CartItem cartItem =null;
		if(!map.containsKey(product.getPid())) {
			 cartItem = new CartItem();
			cartItem.setProduct(product);
			cartItem.setBuyNum(buyNum);
			cartItem.setSubtotal(subtotal);
			
		}else {
			 cartItem = map.get(product.getPid());
			int cartItemBuyNum = cartItem.getBuyNum();
			cartItemBuyNum+=buyNum;
			double cartItemSubtotal = cartItem.getSubtotal();
			cartItemSubtotal+=subtotal;
			cartItem.setBuyNum(cartItemBuyNum);
			cartItem.setSubtotal(cartItemSubtotal);
		}
		map.put(product.getPid(), cartItem);
		cart.setCartItems(map);
		double total = cart.getTotal();
		total+=subtotal;
		cart.setTotal(total);
		session.setAttribute("cart", cart);
		req.getRequestDispatcher("checkout.jsp").forward(req, resp);
		
	}
	
	public void cleanOneProduct(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		String s_pid = req.getParameter("pid");
		HttpSession session = req.getSession();
		Cart cart = (Cart) session.getAttribute("cart");
		//取出购物车里的购物项集合
		Map<String, CartItem> cartItems = cart.getCartItems();
		//取出购物项集合里s_pid的购物项
		CartItem cartItem = cartItems.get(s_pid);
		//购物项的总资金
		double subtotal = 0;
		if(cartItems.containsKey(s_pid)) {
			 subtotal = cartItem.getSubtotal();
		}
		cartItems.remove(s_pid);
		cart.setCartItems(cartItems);
		cart.setTotal(cart.getTotal()-subtotal);
//		session.removeAttribute("cart");
		session.setAttribute("cart", cart);
		resp.sendRedirect("checkout.jsp");
	}
	public void removeAllCart(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		HttpSession session = req.getSession();
		session.removeAttribute("cart");
		resp.sendRedirect("checkout.jsp");
	}
	
//	public void decreaseOneProduct(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
//		String s_pid=req.getParameter("pid");
////		String buyNum=req.getParameter("buyNum");
//		HttpSession session = req.getSession();
//		Cart cart = (Cart) session.getAttribute("cart");
//		
//		//取出购物车里的购物项集合
//		Map<String, CartItem> cartItems = cart.getCartItems();
//		//取出购物项集合里s_pid的购物项
//		CartItem cartItem = cartItems.get(s_pid);
//		cart.setTotal(cart.getTotal()-Double.parseDouble(cartItem.getProduct().getShop_price()));
//		int cartItemBuyNum = cartItem.getBuyNum();
//		double subtotal = 0;
//		if(cartItemBuyNum>1) {
//			cartItemBuyNum--;
//			//购物项的总资金
//			//double subtotal = cartItemBuyNum*Double.parseDouble(cartItem.getProduct().getShop_price());
//			 subtotal=cartItem.getSubtotal()-Double.parseDouble(cartItem.getProduct().getShop_price());
//			 cartItem.setSubtotal(subtotal);
//			//数量减一添加进购物项
//			cartItem.setBuyNum(cartItemBuyNum);
//			cartItems.put(s_pid, cartItem);
//		}else {
//			cartItems.remove(s_pid);
//		}
//		//cartItems.remove(s_pid);
//		cart.setCartItems(cartItems);
////		session.removeAttribute("cart");
////		Gson gson=new Gson();
////		String json = gson.toJson(cart);
////		PrintWriter writer = resp.getWriter();
////		writer.write(json);
////		writer.flush();
////		writer.close();
//		session.setAttribute("cart", cart);
//		resp.sendRedirect("checkout.jsp");
////		req.getRequestDispatcher("checkout.jsp").forward(req, resp);
//	}
//	public void addOneProduct(HttpServletRequest req, HttpServletResponse resp) throws IOException {
//		String s_pid=req.getParameter("pid");
//		String s_buyNum=req.getParameter("buyNum");
//		int buyNum=Integer.parseInt(s_buyNum)+1;
//		HttpSession session = req.getSession();
//		Cart cart = (Cart) session.getAttribute("cart");
//		//取出购物车里的购物项集合
//		Map<String, CartItem> cartItems = cart.getCartItems();
//		//取出购物项集合里s_pid的购物项
//		CartItem cartItem = cartItems.get(s_pid);
//		Product product = cartItem.getProduct();
//		double sub=buyNum*Double.parseDouble(product.getShop_price());
//		cartItem.setBuyNum(buyNum);
//		cartItem.setSubtotal(sub);
//		double total = cart.getTotal()+Double.parseDouble(product.getShop_price());
//		cart.setTotal(total);
//		cart.setCartItems(cartItems);
//		session.setAttribute("cart", cart);
//		Gson gson=new Gson();
//		String json = gson.toJson(sub);
//		String json1 = gson.toJson(total);
//		String json2=gson.toJson(buyNum);
//		String json3=json+json1+json2;
//		PrintWriter writer = resp.getWriter();
//		writer.write(json3);
//		writer.flush();
//		writer.close();
//		
//		
//	}
	
	
	//搜索异步分页
		public void searchProductByPage(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
			resp.setContentType("text/html;charset=UTF-8");
			resp.setCharacterEncoding("UTF-8");
			String s_currentPage = req.getParameter("currentPage");
			String s_pageSize = req.getParameter("pageSize");
			String pname=req.getParameter("pname");
			int currentPage =0;
			int pageSize=0;
//			int cid=0;
//			if(s_cid==null&&s_cid=="") {
//				cid=0;
//			}else {
//				cid = Integer.parseInt(s_cid);
//			}
			
			if(s_currentPage==null) {
				currentPage=1;
			}else {
			 currentPage = Integer.parseInt(s_currentPage);
			}
			
			if(s_pageSize==null) {
				pageSize=9;
			}else {
				pageSize= Integer.parseInt(s_pageSize);
			}
			
			int index = (currentPage-1)*pageSize;
			List<Product> searchProductList =null;
			if(pname!=null&&pname!="") {
			try {
				searchProductList=productService.searchProduct(pname,index,pageSize);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				}
			}
			
			int totalCount=0;
			try {
				 totalCount=productService.findTotalCountByPname(pname);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			PageBean<Product> pageBean = new PageBean<Product>();
			pageBean.setCurrentPage(currentPage);
			pageBean.setList(searchProductList);
			pageBean.setPageSize(pageSize);
			pageBean.setTotalCount(totalCount);
			int totalPage=(totalCount+pageSize-1)/pageSize;
			pageBean.setTotalPage(totalPage);
		
//			HttpSession session = req.getSession();
//			session.setAttribute("pageBean1", pageBean);
			Gson gson = new Gson();
			String json = gson.toJson(pageBean);
			PrintWriter out = resp.getWriter();
			out.write(json);
			out.flush();
			out.close();
			System.out.println(pageBean.getPageSize());
		}
		
		public void addOneProduct(HttpServletRequest req, HttpServletResponse resp) throws IOException {
			String s_pid=req.getParameter("pid");
			String s_buyNum=req.getParameter("buyNum");
			
			int buyNum=Integer.parseInt(s_buyNum)+1;
			HttpSession session = req.getSession();
			Cart cart = (Cart) session.getAttribute("cart");
			//取出购物车里的购物项集合
			Map<String, CartItem> cartItems = cart.getCartItems();
			//取出购物项集合里s_pid的购物项
			CartItem cartItem = cartItems.get(s_pid);
			Product product = cartItem.getProduct();
			double sub=buyNum*Double.parseDouble(product.getShop_price());
			cartItem.setBuyNum(buyNum);
			cartItem.setSubtotal(sub);
			double total = cart.getTotal()+Double.parseDouble(product.getShop_price());
			cart.setTotal(total);
			cart.setCartItems(cartItems);
			session.setAttribute("cart", cart);
			Gson gson=new Gson();
			Money money = new Money();
			money.setBuyNum(buyNum);
			money.setSubtotal(sub);
			money.setTotal(total);
			String json = gson.toJson(money);
			PrintWriter writer = resp.getWriter();
//			String s="{'total':'"+total+"','buyNum':'"+buyNum+"','subtotal':'"+sub+"'}";
//			System.out.println(s);
			System.out.println(json);
			writer.write(json);
			writer.flush();
			writer.close();
		}
		
		
		public void decreaseOneProduct(HttpServletRequest req, HttpServletResponse resp) throws IOException {
			String s_pid=req.getParameter("pid");
			String s_buyNum=req.getParameter("buyNum");
			int buyNum=Integer.parseInt(s_buyNum);
			HttpSession session = req.getSession();
			Cart cart = (Cart) session.getAttribute("cart");
			//取出购物车里的购物项集合
			Map<String, CartItem> cartItems = cart.getCartItems();
			//取出购物项集合里s_pid的购物项
			CartItem cartItem = null;
			Product product = 	null;
			if(cartItems.containsKey(s_pid)) {
				 cartItem = cartItems.get(s_pid);
				 product = cartItem.getProduct();
				 double sub=0;
				 double total =0;
					if(buyNum>=1) {
						buyNum--;
						sub=buyNum*Double.parseDouble(product.getShop_price());
						cartItem.setBuyNum(buyNum);
						cartItem.setSubtotal(sub);
						
						total = cart.getTotal()-Double.parseDouble(product.getShop_price());
						cart.setTotal(total);
					}else {
						cartItems.remove(s_pid);
					}
					
					cart.setCartItems(cartItems);
					session.setAttribute("cart", cart);
					Gson gson=new Gson();
					Money money = new Money();
					money.setBuyNum(buyNum);
					money.setSubtotal(sub);
					money.setTotal(total);
					String json = gson.toJson(money);
					PrintWriter writer = resp.getWriter();
//					String s="{'total':'"+total+"','buyNum':'"+buyNum+"','subtotal':'"+sub+"'}";
//					System.out.println(s);
					System.out.println(json);
					writer.write(json);
					writer.flush();
					writer.close();
			}else {
				System.out.println("无法重定向");
				req.getRequestDispatcher("checkout.jsp");
			}
			
			
		}
		
	

}
