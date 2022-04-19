package MTShop.Controller.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import MTShop.Entity.Users;
import MTShop.Service.User.AccountServiceImpl;

@Controller
public class UserController extends BaseController {
	@Autowired
	AccountServiceImpl accountService = new AccountServiceImpl();

	@RequestMapping(value = "/dang-ky", method = RequestMethod.GET)
	public ModelAndView Register() {
		_mvShare.setViewName("user/account/register");
		_mvShare.addObject("user", new Users());
		return _mvShare;
	}

	@RequestMapping(value = "/dang-nhap", method = RequestMethod.GET)
	public ModelAndView Login() {
		_mvShare.setViewName("user/account/login");
		_mvShare.addObject("user", new Users());
		return _mvShare;
	}

	@RequestMapping(value = "/dang-ky", method = RequestMethod.POST)
	public ModelAndView CreateAcc(@ModelAttribute("user") Users user) {
		int res = accountService.CheckUsers(user);
		if (res == 0) {
			int count = accountService.AddAccount(user);
			if (count > 0) {
				_mvShare.addObject("status", "Đăng ký thành công!");
			}
			if (count == 0) {
				_mvShare.addObject("status", "Đăng ký thất bại!");
			}
		} else {
			_mvShare.addObject("status", "Email đã tồn tại!");
		}
		_mvShare.setViewName("user/account/register");
		return _mvShare;
	}

	@RequestMapping(value = "/dang-nhap", method = RequestMethod.POST)
	public ModelAndView Login(HttpSession session, @ModelAttribute("user") Users user) {
		user = accountService.CheckAccount(user);
		if (user != null) {
			_mvShare.setViewName("redirect:trang-chu");
			session.setAttribute("LoginInfo", user);

		} else {
			_mvShare.addObject("statusLogin", "Đăng nhập thất bại");

		}
		return _mvShare;
	}

	@RequestMapping(value = "/dang-xuat", method = RequestMethod.GET)
	public String Logout(HttpSession session, HttpServletRequest req) {
		session.removeAttribute("LoginInfo");
		return "redirect:" + req.getHeader("Referer");
	}
}
