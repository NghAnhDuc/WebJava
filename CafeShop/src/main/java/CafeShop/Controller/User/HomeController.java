package CafeShop.Controller.User;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController extends BaseController{
	@RequestMapping(value = {"/","/trang-chu"})
	public ModelAndView Index() {
		_mvShare.addObject("slides",_homeService.GetDataSlide());
		_mvShare.addObject("categories",_homeService.GetDataCategory());
		_mvShare.addObject("productsNew",_homeService.GetDataProductsNew());
		_mvShare.addObject("productsHighlight",_homeService.GetDataProductsHighlight());
		_mvShare.setViewName("user/index2");
		return _mvShare;
	}

}
