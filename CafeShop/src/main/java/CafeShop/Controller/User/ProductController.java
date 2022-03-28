package CafeShop.Controller.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import CafeShop.Dto.PaginatesDto;
import CafeShop.Service.User.IProductService;
import CafeShop.Service.User.PaginatesServiceImpl;
import CafeShop.Service.User.ProductServiceImpl;

@Controller
public class ProductController extends BaseController {

	@Autowired
	private IProductService _productService;
	@Autowired
	private PaginatesServiceImpl paginatesService;

	private int totalProductsPage = 9;

	@RequestMapping(value = { "/chi-tiet-san-pham/{id}" })
	public ModelAndView Index(@PathVariable long id) {
		_mvShare.setViewName("user/products/product");
		_mvShare.addObject("product", _productService.GetProductByID(id));
		int idCategory = _productService.GetProductByID(id).getId_category();
		_mvShare.addObject("productByIDCategory", _productService.GetProductByIDCategory(idCategory));
		return _mvShare;
	}

	@RequestMapping(value = "/san-pham")
	public ModelAndView Product() {
		_mvShare.setViewName("user/products/allproduct");
		int totalData = _productService.GetAllProducts().size();
		PaginatesDto paginatesInfo = paginatesService.GetInfoPaginates(totalData, totalProductsPage, 1);
		_mvShare.addObject("paginatesInfo", paginatesInfo);
		_mvShare.addObject("productsPaginate", _productService.GetDataProductsPaginate(paginatesInfo.getStart(), totalProductsPage));
		return _mvShare;
	}

	@RequestMapping(value = "/san-pham/{currentPage}")
	public ModelAndView Product(@PathVariable String currentPage) {
		_mvShare.setViewName("user/products/allproduct");
		int totalData = _productService.GetAllProducts().size();
		PaginatesDto paginatesInfo = paginatesService.GetInfoPaginates(totalData, totalProductsPage,
				Integer.parseInt(currentPage));
		_mvShare.addObject("paginatesInfo", paginatesInfo);
		_mvShare.addObject("productsPaginate", _productService.GetDataProductsPaginate(paginatesInfo.getStart(), totalProductsPage));

		return _mvShare;
	}
}
