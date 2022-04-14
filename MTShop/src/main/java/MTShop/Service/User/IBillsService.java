package MTShop.Service.User;

import java.util.HashMap;

import org.springframework.stereotype.Service;

import MTShop.Dto.CartDto;
import MTShop.Entity.Bills;
@Service
public interface IBillsService {
	public int AddBills(Bills bill);
	public void AddBillsDetail(HashMap<Long, CartDto> carts);
}
