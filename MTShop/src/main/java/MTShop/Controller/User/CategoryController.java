package MTShop.Controller.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import MTShop.Dto.PaginatesDto;
import MTShop.Service.User.CategoryServiceImpl;
import MTShop.Service.User.PaginatesServiceImpl;
@Controller
public class CategoryController extends BaseController {
	
	@Autowired
	private CategoryServiceImpl categoryService;
	@Autowired
	private PaginatesServiceImpl paginatesService;
	
	private int totalProductsPage = 6;
	
	@RequestMapping(value = "/loai-san-pham/{id}")
	public ModelAndView Product(@PathVariable String id) {
		_mvShare.setViewName("user/products/productcategory");
		int totalData = categoryService.GetAllProductsByCategory(Integer.parseInt(id)).size();
		PaginatesDto paginatesInfo = paginatesService.GetInfoPaginates(totalData, totalProductsPage, 1);
		_mvShare.addObject("categories",_homeService.GetDataCategory());
		_mvShare.addObject("idCategory", id);
		_mvShare.addObject("paginatesInfo", paginatesInfo);
		_mvShare.addObject("productsPaginate", categoryService.GetDataProductsCategoryPaginate(Integer.parseInt(id), paginatesInfo.getStart(), totalProductsPage));
		return _mvShare;
	}
	
	@RequestMapping(value = "/loai-san-pham/{id}/{currentPage}")
	public ModelAndView Product(@PathVariable String id, @PathVariable String currentPage) {
		_mvShare.setViewName("user/products/productcategory");
		int totalData = categoryService.GetAllProductsByCategory(Integer.parseInt(id)).size();
		PaginatesDto paginatesInfo = paginatesService.GetInfoPaginates(totalData, totalProductsPage, Integer.parseInt(currentPage));
		_mvShare.addObject("idCategory", id);
		_mvShare.addObject("paginatesInfo", paginatesInfo);
		_mvShare.addObject("productsPaginate", categoryService.GetDataProductsCategoryPaginate(Integer.parseInt(id), paginatesInfo.getStart(), totalProductsPage));
		return _mvShare;
	}
}
