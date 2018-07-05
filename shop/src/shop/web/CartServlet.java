package shop.web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import shop.pojo.Cart;
import shop.pojo.CartItem;
import shop.pojo.Product;
import shop.service.ProductService;
import shop.serviceImpl.ProductServiceImpl;

public class CartServlet extends HttpServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String s_pid = req.getParameter("pid");
		ProductService productService=new ProductServiceImpl();
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

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
