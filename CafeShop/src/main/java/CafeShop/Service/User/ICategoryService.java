package CafeShop.Service.User;

import java.util.List;

import org.springframework.stereotype.Service;

import CafeShop.Dao.CategoriesDao;
import CafeShop.Dto.ProductsDto;
@Service
public interface ICategoryService {
	public List<ProductsDto> GetAllProductsByCategory(int id);
	public List<ProductsDto> GetDataProductsCategoryPaginate(int id, int start, int totalPage);
//	public ProductsDto GetProductByCategory(int id);
}
