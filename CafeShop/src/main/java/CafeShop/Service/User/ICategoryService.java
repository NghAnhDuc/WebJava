package CafeShop.Service.User;

import java.util.List;

import org.springframework.stereotype.Service;


import CafeShop.Dto.ProductsDto;
@Service
public interface ICategoryService {
	public List<ProductsDto> GetAllProductsByID(int id);
	public List<ProductsDto> GetDataProductsPaginate(int id, int start, int totalPage);
}
