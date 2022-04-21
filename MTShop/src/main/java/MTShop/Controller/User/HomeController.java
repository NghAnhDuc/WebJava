package MTShop.Controller.User;

import java.io.Console;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import MTShop.Dto.PaginatesDto;
import MTShop.Entity.Search;
import MTShop.Entity.Users;
import MTShop.Service.User.CategoryServiceImpl;
import MTShop.Service.User.IProductService;
import MTShop.Service.User.PaginatesServiceImpl;
import MTShop.Service.User.ProductServiceImpl;

@Controller
public class HomeController extends BaseController{
	
	// xem them san pham
	@Autowired
	private IProductService _productService;
	@Autowired
	private PaginatesServiceImpl paginatesService;
	
	private int totalProductsPage = 6;
	
	@RequestMapping(value = {"/","/trang-chu"})
	public ModelAndView Index() {
		_mvShare.addObject("slides",_homeService.GetDataSlide());
		_mvShare.addObject("categories",_homeService.GetDataCategory());
		_mvShare.addObject("productsNew",_homeService.GetDataProductsNew());
		_mvShare.addObject("productsHighlight",_homeService.GetDataProductsHighlight());
		_mvShare.setViewName("user/index");
		return _mvShare;
	}
	
	//xem them san pham noi bat
	@RequestMapping(value = {"/featured-product"})
	public ModelAndView Featured_Product() {
		_mvShare.setViewName("user/products/productmore");
		_mvShare.addObject("productname","More Featured Product");
		_mvShare.addObject("productlink","/featured-product");
		_mvShare.addObject("categories",_homeService.GetDataCategory());
		int totalData = _homeService.GetDataProductsHighlightAll().size();
		PaginatesDto paginatesInfo = paginatesService.GetInfoPaginates(totalData, totalProductsPage, 1);
		_mvShare.addObject("paginatesInfo", paginatesInfo);
		_mvShare.addObject("productsPaginate", _productService.GetDataProductsPaginate2(paginatesInfo.getStart(), totalProductsPage));
		return _mvShare;
	}
	
	@RequestMapping(value = "/featured-product/{currentPage}")
	public ModelAndView Featured_Product(@PathVariable String currentPage) {
		_mvShare.setViewName("user/products/productmore");
		int totalData = _homeService.GetDataProductsHighlightAll().size();
		PaginatesDto paginatesInfo = paginatesService.GetInfoPaginates(totalData, totalProductsPage,
				Integer.parseInt(currentPage));
		_mvShare.addObject("paginatesInfo", paginatesInfo);
		_mvShare.addObject("productsPaginate", _productService.GetDataProductsPaginate2(paginatesInfo.getStart(), totalProductsPage));

		return _mvShare;
	}
	
	//xem them san pham moi
	@RequestMapping(value = {"/new-product"})
	public ModelAndView New_Product() {
		_mvShare.setViewName("user/products/productmore");
		_mvShare.addObject("productname","More New Product");
		_mvShare.addObject("productlink","/new-product");
		int totalData = _homeService.GetDataProductsNewAll().size();
		PaginatesDto paginatesInfo = paginatesService.GetInfoPaginates(totalData, totalProductsPage, 1);
		_mvShare.addObject("categories",_homeService.GetDataCategory());
		_mvShare.addObject("paginatesInfo", paginatesInfo);
		_mvShare.addObject("productsPaginate", _productService.GetDataProductsPaginate2(paginatesInfo.getStart(), totalProductsPage));
		return _mvShare;
	}
	
	@RequestMapping(value = "/new-product/{currentPage}")
	public ModelAndView New_Product(@PathVariable String currentPage) {
		_mvShare.setViewName("user/products/productmore");
		int totalData = _homeService.GetDataProductsNewAll().size();
		PaginatesDto paginatesInfo = paginatesService.GetInfoPaginates(totalData, totalProductsPage,
				Integer.parseInt(currentPage));
		_mvShare.addObject("paginatesInfo", paginatesInfo);
		_mvShare.addObject("productsPaginate", _productService.GetDataProductsPaginate2(paginatesInfo.getStart(), totalProductsPage));

		return _mvShare;
	}
	
	//tim kiem san phan
//	@RequestMapping(value = "/search-product", method = RequestMethod.GET)
//	public ModelAndView Searchs() {
//		_mvShare.setViewName("user/index");
//		_mvShare.addObject("search", new Search());
//		return _mvShare;
//	}
	
	@RequestMapping(value = "/search-product", method = RequestMethod.POST)
	public ModelAndView Searchs(@RequestParam("content") String content) {
		_mvShare.setViewName("user/products/productsearch");
		_mvShare.addObject("categories",_homeService.GetDataCategory());
		int totalData = _productService.GetAllProductsSearch(content).size();
		_mvShare.addObject("productSearch", _productService.GetAllProductsSearch(content));
//		PaginatesDto paginatesInfo = paginatesService.GetInfoPaginates(totalData, totalProductsPage, 1);
//		_mvShare.addObject("paginatesInfo", paginatesInfo);
//		_mvShare.addObject("productsPaginate", _productService.GetDataProductsPaginate2(paginatesInfo.getStart(), totalProductsPage));
		return _mvShare;
	}
	
//	@RequestMapping(value = "/search-product/{currentPage}")
//	public ModelAndView Searchs(@ModelAttribute("search") Search search, @PathVariable String currentPage) {
//		_mvShare.setViewName("user/products/productsearch");
//		search.setContent("PNJ");
//		int totalData = _productService.GetAllProductsSearch(search.getContent()).size();
//		PaginatesDto paginatesInfo = paginatesService.GetInfoPaginates(totalData, totalProductsPage,
//				Integer.parseInt(currentPage));
//		_mvShare.addObject("paginatesInfo", paginatesInfo);
//		_mvShare.addObject("productsPaginate", _productService.GetDataProductsPaginate2(paginatesInfo.getStart(), totalProductsPage));
//
//		return _mvShare;
//	}
	
}
