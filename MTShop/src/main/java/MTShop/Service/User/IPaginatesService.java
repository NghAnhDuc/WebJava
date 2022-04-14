package MTShop.Service.User;

import org.springframework.stereotype.Service;

import MTShop.Dto.PaginatesDto;

@Service
public interface IPaginatesService {
	public PaginatesDto GetInfoPaginates(int totalData, int limit, int currentPage);
}
