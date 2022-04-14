package MTShop.Controller.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import MTShop.Dto.PaginatesDto;
import MTShop.Service.User.ICategoryService;
import MTShop.Service.User.IProductService;
import MTShop.Service.User.PaginatesServiceImpl;
import MTShop.Service.User.ProductServiceImpl;

@Controller
public class ProductController extends BaseController {

	@Autowired
	private IProductService _productService;
	@Autowired
	private PaginatesServiceImpl paginatesService;
//	@Autowired
//	private ICategoryService __categoryService;

	private int totalProductsPage = 9;

	@RequestMapping(value = { "chi-tiet-san-pham/{id}" })
	public ModelAndView Index(@PathVariable long id) {
		_mvShare.setViewName("user/products/productdetail");
		_mvShare.addObject("product", _productService.GetProductByID(id));
//		long idProduct = _productService.GetProductByID(id).getId_product();
//		int idCat = (int) _productService.GetProductByID(id).getId_category();
//		_mvShare.addObject("productByCat", __categoryService.GetProductByCategory(idCat));
		return _mvShare;
	}

	@RequestMapping(value = "/san-pham")
	public ModelAndView Product() {
		_mvShare.setViewName("user/products/allproduct");
		_mvShare.addObject("categories",_homeService.GetDataCategory());
		int totalData = _productService.GetAllProducts().size();
		PaginatesDto paginatesInfo = paginatesService.GetInfoPaginates(totalData, totalProductsPage, 1);
		_mvShare.addObject("paginatesInfo", paginatesInfo);
		_mvShare.addObject("productsPaginate", _productService.GetDataProductsPaginate2(paginatesInfo.getStart(), totalProductsPage));
		return _mvShare;
	}

	@RequestMapping(value = "/san-pham/{currentPage}")
	public ModelAndView Product(@PathVariable String currentPage) {
		_mvShare.setViewName("user/products/allproduct");
		int totalData = _productService.GetAllProducts().size();
		PaginatesDto paginatesInfo = paginatesService.GetInfoPaginates(totalData, totalProductsPage,
				Integer.parseInt(currentPage));
		_mvShare.addObject("paginatesInfo", paginatesInfo);
		_mvShare.addObject("productsPaginate", _productService.GetDataProductsPaginate2(paginatesInfo.getStart(), totalProductsPage));

		return _mvShare;
	}
}
