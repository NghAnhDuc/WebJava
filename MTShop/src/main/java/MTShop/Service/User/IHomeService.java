package MTShop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import MTShop.Dto.ProductsDto;
import MTShop.Entity.Categories;
import MTShop.Entity.Slides;

@Service
public interface IHomeService {
	@Autowired
	public List<Slides> GetDataSlide();
	public List<Categories> GetDataCategory();
	public List<ProductsDto> GetDataProductsNew();
	public List<ProductsDto> GetDataProductsHighlight();
}
