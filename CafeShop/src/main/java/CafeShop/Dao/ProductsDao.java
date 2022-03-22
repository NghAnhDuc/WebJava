package CafeShop.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import CafeShop.Dto.ProductsDto;
import CafeShop.Dto.ProductsDtoMapper;

@Repository
public class ProductsDao extends BaseDao {
	
	private final boolean YES = true;
	private final boolean NO = false;
	
	private StringBuffer SqlString() {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT ");
		sql.append("p.id as id_product ");
		sql.append(", p.id_category ");
		sql.append(", p.sizes ");
		sql.append(", p.name ");
		sql.append(", p.price ");
		sql.append(", p.sale ");
		sql.append(", p.title ");
		sql.append(", p.highlight ");
		sql.append(", p.new_product ");
		sql.append(", p.details ");
		sql.append(", c.id as id_color ");
		sql.append(", c.name as name_color ");
		sql.append(", c.code as code_color ");
		sql.append(", c.img ");
		sql.append(", p.created_at ");
		sql.append(", p.updated_at ");
		sql.append("FROM ");
		sql.append("products AS p ");
		sql.append("INNER JOIN ");
		sql.append("colors AS c ");
		sql.append("ON p.id = c.id_product ");
		return sql;
	}

	private String SqlProduct(boolean newProduct, boolean highlight) {
		StringBuffer sql = SqlString();
		sql.append("WHERE 1 = 1 ");
		if(newProduct) {
			sql.append("AND p.highlight = true ");
		}
		if(highlight) {
			sql.append("AND p.new_product = true ");		
		}
		sql.append("GROUP BY p.id, c.id_product ");
		sql.append("ORDER BY RAND() ");
		if(highlight) {
			sql.append("LIMIT 9 ");
		}
		if(newProduct) {
			sql.append("LIMIT 12 ");		
		}
		return sql.toString();
	}
	
	private StringBuffer SqlProductsByID(int id) {
		StringBuffer sql = SqlString();
		sql.append("WHERE 1 = 1 ");
		sql.append("AND id_category =  " + id + " ");
		return sql;
	}
	
	private String SqlProductPaginate(int id, int start, int totalPage) {
		StringBuffer sql = SqlProductsByID(id);
		sql.append("LIMIT  " + start + ", " + totalPage);
		return sql.toString();
	}

	public List<ProductsDto> GetDataProducts() {
		String sql = SqlProduct(YES, NO);
		List<ProductsDto> list = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return list;
	}
	
	public List<ProductsDto> GetAllProductsByID(int id) {
		String sql = SqlProductsByID(id).toString();
		List<ProductsDto> list = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return list;
	}
	
	public List<ProductsDto> GetDataProductsPaginate(int id, int start, int totalPage) {
		StringBuffer sqlGetDataByID = SqlProductsByID(id);
		List<ProductsDto> listProductsByID = _jdbcTemplate.query(sqlGetDataByID.toString(), new ProductsDtoMapper());
		List<ProductsDto> list = new ArrayList<ProductsDto>();
		if(listProductsByID.size() > 0) {
			String sql = SqlProductPaginate(id, start, totalPage);
			list = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		}
		return list;
	}

	private String SqlProductByID(long id) {
		StringBuffer sql = SqlString();
		sql.append("WHERE 1 = 1 ");
		sql.append("AND p.id =  " + id + " ");
		sql.append("LIMIT 1 ");
		return sql.toString();
	}
	
	public List<ProductsDto> GetProductByID(long id) {
		String sql = SqlProductByID(id);
		List<ProductsDto> list = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return list;
	}
	
	public ProductsDto FindProductByID(long id) {
		String sql = SqlProductByID(id);
		ProductsDto product = _jdbcTemplate.queryForObject(sql, new ProductsDtoMapper());
		return product;
	}
	////
	
	
}
