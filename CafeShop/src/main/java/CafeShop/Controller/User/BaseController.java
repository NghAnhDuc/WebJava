package CafeShop.Controller.User;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import CafeShop.Service.User.HomeServiceImpl;
@Controller
public class BaseController {
	@Autowired
	HomeServiceImpl _homeService;
	public ModelAndView _mvShare = new ModelAndView();
}
