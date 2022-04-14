package MTShop.Service.User;

import java.util.List;

import org.springframework.stereotype.Service;

import MTShop.Dto.ProductsDto;

@Service
public interface IProductService {	
	public List<ProductsDto> GetProductsByID(long id);
	public List<ProductsDto> GetDataProductsPaginate(int id, int start, int totalPage);
	public ProductsDto GetProductByID(long id);
	public List<ProductsDto> GetDataProductsPaginate2(int start, int totalPage);
	public List<ProductsDto> GetAllProducts();
}
