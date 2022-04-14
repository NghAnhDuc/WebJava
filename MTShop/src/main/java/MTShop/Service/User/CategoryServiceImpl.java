package MTShop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import MTShop.Dao.ProductsDao;
import MTShop.Dto.ProductsDto;

@Service
public class CategoryServiceImpl implements ICategoryService {
	@Autowired
	ProductsDao productsDao;

	public List<ProductsDto> GetAllProductsByCategory(int id) {
		return productsDao.GetAllProductsByCategory(id);
	}
	public List<ProductsDto> GetDataProductsCategoryPaginate(int id, int start, int totalPage) {
		return productsDao.GetDataProductsCategoryPaginate(id, start, totalPage);
	}


}
