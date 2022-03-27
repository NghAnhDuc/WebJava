package CafeShop.Service.User;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import CafeShop.Dao.BillsDao;
import CafeShop.Dto.CartDto;
import CafeShop.Entity.BillDetail;
import CafeShop.Entity.Bills;
@Service
public class BillsServiceImpl implements IBillsService {
	@Autowired
	private BillsDao billsDao;
	public int AddBills(Bills bill) {
		return billsDao.AddBills(bill);
	}

	public void AddBillsDetail(HashMap<Long, CartDto> carts) {
		Long idBills = billsDao.GetIDLastBills();
		for(Map.Entry<Long, CartDto> itemCart : carts.entrySet()) {
			BillDetail billDetail = new BillDetail();
			billDetail.setId_product(itemCart.getValue().getProduct().getId_product());
			billDetail.setId_bills(idBills);
			billDetail.setQuanty(itemCart.getValue().getQuanty());
			billDetail.setTotal(itemCart.getValue().getTotalPrice());
			billsDao.AddBillsDetails(billDetail);
		}

	}

}
