package CafeShop.Service.User;

import java.util.List;

import org.springframework.stereotype.Service;

import CafeShop.Dto.ProductsDto;

@Service
public interface IProductService {	
	public ProductsDto GetProductByID(long id);
	public List<ProductsDto> GetProductByIDCategory(int id);
//	public List<ProductsDto> GetAllProductsByID(int id);
	public List<ProductsDto> GetDataProductsPaginate(int start, int totalPage);
	public List<ProductsDto> GetAllProducts();
}
