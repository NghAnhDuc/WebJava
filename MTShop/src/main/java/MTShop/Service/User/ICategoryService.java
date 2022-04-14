package MTShop.Service.User;

import java.util.List;

import org.springframework.stereotype.Service;

import MTShop.Dto.ProductsDto;
@Service
public interface ICategoryService {
	public List<ProductsDto> GetAllProductsByCategory(int id);
	public List<ProductsDto> GetDataProductsCategoryPaginate(int id, int start, int totalPage);
}
