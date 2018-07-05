package shop.serviceImpl;

import java.sql.SQLException;
import java.util.List;

import shop.dao.ProductDao;
import shop.daoImpl.ProductDaoImpl;
import shop.pojo.Product;
import shop.service.ProductService;

public class ProductServiceImpl implements ProductService {
	
	private ProductDao productDao=new ProductDaoImpl();
	public List<Product> findProductListByPage(int cid,int currentPage, int pageSize) throws SQLException {
		return productDao.findProductListByPage(cid, currentPage,  pageSize);
		// TODO Auto-generated method stub
	}
	@Override
	public int findTotalCount(int cid) throws SQLException {
		return productDao.findTotalCount(cid);
	}
	@Override
	public List<Product> findProductListByCid(int cid,int index,int pageSize) throws SQLException {
		// TODO Auto-generated method stub
		return productDao.findProductListByCid(cid,index,pageSize);
	}
	@Override
	public List<Product> findNewProduct() throws SQLException {
		// TODO Auto-generated method stub
		return productDao.findNewProduct();
	}
	@Override
	public Product findProductByPid(int pid) throws SQLException {
		// TODO Auto-generated method stub
		return productDao.findProductByPid(pid);
	}
	
	public List<Product> searchProduct(String pname,int index,int pageSize) throws SQLException {
		// TODO Auto-generated method stub
		return productDao.searchProduct(pname,index,pageSize);
	}
	@Override
	public int findTotalCountByPname(String pname) throws SQLException {
		// TODO Auto-generated method stub
		return productDao.findTotalCountByPname(pname);
	}

}
