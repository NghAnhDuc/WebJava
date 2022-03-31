package CafeShop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import CafeShop.Dao.ProductsDao;
import CafeShop.Dto.ProductsDto;
@Service
public class ProductServiceImpl implements IProductService {
	@Autowired
	ProductsDao productsDao ;
	
	public ProductsDto GetProductByID(long id) {
		List<ProductsDto> list = productsDao.GetProductByID(id);
		return list.get(0);
	}
	public List<ProductsDto> GetDataProductsPaginate2(int start, int totalPage) {
		return productsDao.GetDataProductsPaginate2(start, totalPage);
	}
	public List<ProductsDto> GetAllProducts() {
		return productsDao.GetAllProducts();
	}
	public List<ProductsDto> GetDataProductsPaginate(int id, int start, int totalPage) {
		return productsDao.GetDataProductsPaginate(id, start, totalPage);
	}
	public List<ProductsDto> GetProductsByID(long id) {
		return productsDao.GetAllProductsByID(id);
	}
}
