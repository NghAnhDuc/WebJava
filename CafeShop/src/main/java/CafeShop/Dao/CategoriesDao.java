package CafeShop.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import CafeShop.Entity.Categories;
import CafeShop.Entity.MapperCategories;

@Repository
public class CategoriesDao extends BaseDao{
	public List<Categories> GetDataCategory(){
		List<Categories> list = new ArrayList<Categories>();
		String sql = "SELECT * FROM categories";
		list = _jdbcTemplate.query(sql, new MapperCategories());
		return list;
	}
}
