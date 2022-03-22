package CafeShop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import CafeShop.Dao.ProductsDao;
import CafeShop.Dto.ProductsDto;

@Service
public class CategoryServiceImpl implements ICategoryService {
	@Autowired
	private ProductsDao dao;

	public List<ProductsDto> GetAllProductsByID(int id) {
		return dao.GetAllProductsByID(id);
	}

	public List<ProductsDto> GetDataProductsPaginate(int id, int start, int totalPage) {
		return dao.GetDataProductsPaginate(id, start, totalPage);
	}


}
