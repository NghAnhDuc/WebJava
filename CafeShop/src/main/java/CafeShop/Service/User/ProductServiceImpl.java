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
	public List<ProductsDto> GetProductByIDCategory(int id) {
		return productsDao.GetAllProductsByID(id);
	}
//	public List<ProductsDto> GetAllProductsByID(int id) {
//		return productsDao.GetAllProductsByID(id);
//	}
	public List<ProductsDto> GetDataProductsPaginate(int start, int totalPage) {
		return productsDao.GetDataProductsPaginate2(start, totalPage);
	}
	public List<ProductsDto> GetAllProducts() {
		return productsDao.GetAllProducts();
	}
}
