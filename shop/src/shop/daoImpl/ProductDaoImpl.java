package shop.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import shop.dao.ProductDao;
import shop.pojo.Product;
import shop.pojo.User;
import shop.utils.DBUtils;

public class ProductDaoImpl implements ProductDao {
	Connection con = DBUtils.getCon();
	@Override
	public List<Product> findProductListByPage(int cid,int currentPage, int pageSize) throws SQLException {
		String sql="select * from s_product where cid =? limit ?,?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setInt(1, cid);
		ps.setInt(2, currentPage);
		ps.setInt(3, pageSize);
		ResultSet result = ps.executeQuery();
		List<Product> list=new ArrayList<Product>();
		 	while(result.next()) {
				 Product product = new Product();
					product.setPid(result.getString("pid"));
					product.setPname(result.getString("pname"));
					product.setMarket_price(result.getString("market_price"));
					product.setShop_price(result.getString("shop_price"));
					product.setPimage(result.getString("description"));
					product.setPimage(result.getString("pimage"));
					product.setCid(result.getString("cid"));
					product.setPdate(result.getString("pdate"));
				list.add(product);
			}
//			con.close();
		return list;
		
	}
	public int  findTotalCount(int cid) throws SQLException {
		String sql ="select count(pid) from s_product where cid=?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setInt(1, cid);
		ResultSet result = ps.executeQuery();
		int count =0;
		while(result.next()) {
			count= result.getInt(1);
		}
//		con.close();
		return count;
	}

	public List<Product> findProductListByCid(int cid,int index,int pageSize) throws SQLException {
		String sql ="select * from s_product where cid=? limit ?,?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setInt(1, cid);
		ps.setInt(2, index);
		ps.setInt(3, pageSize);
		ResultSet result = ps.executeQuery();
		List<Product> list=new ArrayList<Product>();
		while(result.next()) {
			Product 	product = new Product();
			product.setPid(result.getString("pid"));
			product.setPname(result.getString("pname"));
			product.setMarket_price(result.getString("market_price"));
			product.setShop_price(result.getString("shop_price"));
			product.setPimage(result.getString("description"));
			product.setPimage(result.getString("pimage"));
			product.setCid(result.getString("cid"));
			product.setPdate(result.getString("pdate"));
			list.add(product);
		}
//		con.close();
		return list;
	}

	@Override
	public List<Product> findNewProduct() throws SQLException {
		String sql ="SELECT * from s_product ORDER BY pdate DESC LIMIT 0,4";
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet result = ps.executeQuery();
		List<Product> list=new ArrayList<Product>();
		while(result.next()) {
			Product 	product = new Product();
			product.setPid(result.getString("pid"));
			product.setPname(result.getString("pname"));
			product.setMarket_price(result.getString("market_price"));
			product.setShop_price(result.getString("shop_price"));
			product.setPimage(result.getString("description"));
			product.setPimage(result.getString("pimage"));
			product.setCid(result.getString("cid"));
			product.setPdate(result.getString("pdate"));
			list.add(product);
		}
//		con.close();
		return list;
	}
	@Override
	public Product findProductByPid(int pid) throws SQLException {
		String sql ="select * from s_product where pid=?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setInt(1, pid);
		ResultSet result = ps.executeQuery();
		List<Product> list=new ArrayList<Product>();
		Product 	product =null;
		while(result.next()) {
			 product = new Product();
			product.setPid(result.getString("pid"));
			product.setPname(result.getString("pname"));
			product.setMarket_price(result.getString("market_price"));
			product.setShop_price(result.getString("shop_price"));
			product.setDescription(result.getString("description"));
			product.setPimage(result.getString("pimage"));
			product.setCid(result.getString("cid"));
			product.setPdate(result.getString("pdate"));
		}
//		con.close();
		return product;
	}
	
	public List<Product> searchProduct(String pname,int index,int pageSize) throws SQLException {
		
		String sql ="SELECT * from s_product where pname LIKE ? limit ?,?";
		PreparedStatement ps = con.prepareStatement(sql);
		if("%".equals(pname)) {
			ps.setString(1, "");
		}else {
			ps.setString(1, "%"+pname+"%");
		}
		ps.setInt(2, index);
		ps.setInt(3, pageSize);
		ResultSet result = ps.executeQuery();
		List<Product> list=new ArrayList<Product>();
		while(result.next()) {
			Product product = new Product();
			product.setPid(result.getString("pid"));
			product.setPname(result.getString("pname"));
			product.setMarket_price(result.getString("market_price"));
			product.setShop_price(result.getString("shop_price"));
			product.setDescription(result.getString("description"));
			product.setPimage(result.getString("pimage"));
			product.setCid(result.getString("cid"));
			product.setPdate(result.getString("pdate"));
			list.add(product);
		}
//		con.close();
		return list;
	}
	@Override
	public int findTotalCountByPname(String pname) throws SQLException {
		String sql ="select count(pid) from s_product where pname like ? ";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, "%"+pname+"%");
		ResultSet result = ps.executeQuery();
		int count =0;
		while(result.next()) {
			count= result.getInt(1);
		}
//		con.close();
		return count;
	}

}
