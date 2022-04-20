package MTShop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import MTShop.Dao.CategoriesDao;
import MTShop.Dao.ProductsDao;
import MTShop.Dao.SlidesDao;
import MTShop.Dto.ProductsDto;
import MTShop.Entity.Categories;
import MTShop.Entity.Slides;

@Service
public class HomeServiceImpl implements IHomeService {
	@Autowired
	private SlidesDao slidesDao;
	@Autowired
	private CategoriesDao categoriesDao;
	
	@Autowired
	private ProductsDao productsDao;
	
	public List<Slides> GetDataSlide() {	
		return slidesDao.GetDataSlide();
	}

	public List<Categories> GetDataCategory() {
		return categoriesDao.GetDataCategory();
	}
	
//	public List<ProductsDto> GetDataProducts() {
//		List<ProductsDto> list = productsDao.GetAllProducts();
//		return list;
//	}
	public List<ProductsDto> GetDataHighlightProducts() {
		List<ProductsDto> list = productsDao.GetDataHighlightProducts();
		return list;
	}
	public List<ProductsDto> GetDataNewProducts() {
		List<ProductsDto> list = productsDao.GetDataNewProducts();
		return list;
	}

}
