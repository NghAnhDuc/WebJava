package MTShop.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import MTShop.Dto.ProductsDto;
import MTShop.Dto.ProductsDtoMapper;

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

	/* Open New Product, Highlight Product */
	private String SqlProduct(boolean newProduct, boolean highlight) {
		StringBuffer sql = SqlString();
		sql.append("WHERE 1 = 1 ");
		if (newProduct) {
			sql.append("AND p.new_product = true ");
		}
		if (highlight) {
			sql.append("AND p.highlight = true ");
		}
		sql.append("GROUP BY p.id, c.id_product ");
		sql.append("ORDER BY RAND() ");
		sql.append("LIMIT 8 ");
		return sql.toString();
	}

	public List<ProductsDto> GetDataProductsNew() {
		String sql = SqlProduct(YES, NO);
		List<ProductsDto> list = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return list;
	}

	public List<ProductsDto> GetDataProductsHighlight() {
		String sql = SqlProduct(NO, YES);
		List<ProductsDto> list = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return list;
	}
	/* End New Product, Highlight Product */

	
	
	/* Open Product Cat */
	private StringBuffer SqlProductsByCategory(int id) {
		StringBuffer sql = SqlString();
		sql.append("WHERE 1 = 1 ");
		sql.append("AND id_category =  " + id + " ");
		return sql;
	}
	
//	private StringBuffer SqlProductByCategory(int id) {
//		StringBuffer sql = SqlString();
//		sql.append("WHERE 1 = 1 ");
//		sql.append("AND p.id_category =  " + id + " ");
//		sql.append("LIMIT 1 ");
//		return sql;
//	}

	public List<ProductsDto> GetAllProductsByCategory(int id) {
		String sql = SqlProductsByCategory(id).toString();
		List<ProductsDto> list = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return list;
	}
	
//	public List<ProductsDto> GetProductByCategory(int id) {
//		String sql = SqlProductByCategory(id).toString();
//		List<ProductsDto> list = _jdbcTemplate.query(sql, new ProductsDtoMapper());
//		return list;
//	}
	
	private String SqlProductCategoryPaginate(int id, int start, int totalPage) {
		StringBuffer sql = SqlProductsByCategory(id);
		sql.append("LIMIT  " + start + ", " + totalPage);
		return sql.toString();
	}
	
	public List<ProductsDto> GetDataProductsCategoryPaginate(int id, int start, int totalPage) {
		StringBuffer sqlGetDataByCat = SqlProductsByCategory(id);
		List<ProductsDto> listProductsByCat = _jdbcTemplate.query(sqlGetDataByCat.toString(), new ProductsDtoMapper());
		List<ProductsDto> list = new ArrayList<ProductsDto>();
		if (listProductsByCat.size() > 0) {
			String sql = SqlProductCategoryPaginate(id, start, totalPage);
			list = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		}
		return list;
	}
	/* End Product Cat */


	
	/* Open Product Id */
	private StringBuffer SqlProductsByID(long id) {
		StringBuffer sql = SqlString();
		sql.append("WHERE 1 = 1 ");
		sql.append("AND id_product =  " + id + " ");
		return sql;
	}
	
	public List<ProductsDto> GetAllProductsByID(long id) {
		String sql = SqlProductsByID(id).toString();
		List<ProductsDto> list = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return list;
	}
	
	private String SqlProductPaginate(int id, int start, int totalPage) {
		StringBuffer sql = SqlProductsByID(id);
		sql.append("LIMIT  " + start + ", " + totalPage);
		return sql.toString();
	}
	
	public List<ProductsDto> GetDataProductsPaginate(int id, int start, int totalPage) {
		StringBuffer sqlGetDataByID = SqlProductsByID(id);
		List<ProductsDto> listProductsByID = _jdbcTemplate.query(sqlGetDataByID.toString(), new ProductsDtoMapper());
		List<ProductsDto> list = new ArrayList<ProductsDto>();
		if (listProductsByID.size() > 0) {
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
	/* End Product Id */

	

	/* Open All Product  */
	public List<ProductsDto> GetAllProducts() {
		String sql = SqlString().toString();
		List<ProductsDto> list = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return list;
	}

	private String SqlProductPaginate2(int start, int totalPage) {
		StringBuffer sql = SqlString();
		sql.append("LIMIT  " + start + ", " + totalPage);
		return sql.toString();
	}

	public List<ProductsDto> GetDataProductsPaginate2(int start, int totalPage) {
		StringBuffer sqlGetData = SqlString();
		List<ProductsDto> listProducts = _jdbcTemplate.query(sqlGetData.toString(), new ProductsDtoMapper());
		List<ProductsDto> list = new ArrayList<ProductsDto>();
		if (listProducts.size() > 0) {
			String sql = SqlProductPaginate2(start, totalPage);
			list = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		}
		return list;
	}
	/* End All Product  */
	
	
	
	public List<ProductsDto> GetDataProducts() {
		String sql = SqlProduct(YES, NO);
		List<ProductsDto> list = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return list;
	}
}
