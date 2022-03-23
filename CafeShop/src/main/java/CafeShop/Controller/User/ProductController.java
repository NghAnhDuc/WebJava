package CafeShop.Controller.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import CafeShop.Service.User.IProductService;
import CafeShop.Service.User.PaginatesServiceImpl;
import CafeShop.Service.User.ProductServiceImpl;

@Controller
public class ProductController extends BaseController{
	
	@Autowired
	private IProductService _productService;
//	@Autowired
//	private PaginatesServiceImpl paginatesService;
//	@Autowired
//	private ProductServiceImpl productService;
//	
//	private int totalProductsPage = 9;
	
	@RequestMapping(value = {"/chi-tiet-san-pham/{id}"})
	public ModelAndView Index(@PathVariable long id ) {
		_mvShare.setViewName("user/products/product");
		_mvShare.addObject("product", _productService.GetProductByID(id) );
		int idCategory = _productService.GetProductByID(id).getId_category();
		_mvShare.addObject("productByIDCategory", _productService.GetProductByIDCategory(idCategory) );
		return _mvShare;
	}
	
}