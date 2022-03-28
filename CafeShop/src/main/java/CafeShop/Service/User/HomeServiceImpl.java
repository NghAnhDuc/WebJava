package CafeShop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import CafeShop.Dao.CategoriesDao;
import CafeShop.Dao.MenuDao;
import CafeShop.Dao.ProductsDao;
import CafeShop.Dao.SlidesDao;
import CafeShop.Dto.ProductsDto;
import CafeShop.Entity.Categories;
import CafeShop.Entity.Menu;
import CafeShop.Entity.Slides;

@Service
public class HomeServiceImpl implements IHomeService {
	@Autowired
	private SlidesDao slidesDao;
	@Autowired
	private CategoriesDao categoriesDao;
	@Autowired
	private MenuDao menuDao;
	@Autowired
	private ProductsDao productsDao;
	
	public List<Slides> GetDataSlide() {	
		return slidesDao.GetDataSlide();
	}

	public List<Categories> GetDataCategory() {
		return categoriesDao.GetDataCategory();
	}
	
	public List<Menu> GetDataMenu() {
		return menuDao.GetDataMenu();
	}
	public List<ProductsDto> GetDataProducts() {
		List<ProductsDto> list = productsDao.GetDataProductsNew();
		return list;
	}
	public List<ProductsDto> GetDataProductsHighlight() {
		List<ProductsDto> list = productsDao.GetDataProductsHighlight();
		return list;
	}
	public List<ProductsDto> GetDataProductsNew() {
		List<ProductsDto> list = productsDao.GetDataProductsNew();
		return list;
	}

}
