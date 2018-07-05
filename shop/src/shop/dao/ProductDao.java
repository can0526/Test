package shop.dao;

import java.sql.SQLException;
import java.util.List;

import shop.pojo.Product;
import shop.pojo.User;

public interface ProductDao {

	List<Product> findProductListByPage(int currentPage, int pageSize, int pageSize2)throws SQLException;

	int findTotalCount(int cid) throws SQLException;
	
	List<Product> findProductListByCid(int cid,int index,int pageSize) throws SQLException;
	
	List<Product> findNewProduct() throws SQLException;
	
	Product findProductByPid(int pid) throws SQLException;
	
	List<Product> searchProduct(String pname,int index,int pageSize) throws SQLException;

	int findTotalCountByPname(String pname) throws SQLException;
	
	

}
