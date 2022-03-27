package CafeShop.Service.User;

import java.util.HashMap;

import org.springframework.stereotype.Service;

import CafeShop.Dto.CartDto;
import CafeShop.Entity.Bills;
@Service
public interface IBillsService {
	public int AddBills(Bills bill);
	public void AddBillsDetail(HashMap<Long, CartDto> carts);
}
