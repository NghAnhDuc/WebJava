package CafeShop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import CafeShop.Dto.ProductsDto;
import CafeShop.Entity.Categories;
import CafeShop.Entity.Menu;
import CafeShop.Entity.Slides;

@Service
public interface IHomeService {
	@Autowired
	public List<Slides> GetDataSlide();
	public List<Categories> GetDataCategory();
	public List<Menu> GetDataMenu();
	public List<ProductsDto> GetDataProducts();
}