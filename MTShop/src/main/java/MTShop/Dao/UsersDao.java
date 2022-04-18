package MTShop.Dao;

import org.springframework.stereotype.Repository;

import MTShop.Entity.MapperUsers;
import MTShop.Entity.Users;
@Repository
public class UsersDao extends BaseDao{
	
	public int AddAccount(Users user) {
		StringBuffer  sql = new StringBuffer();
		
		sql.append("INSERT INTO `users`( ");
		sql.append("    `user`, ");
		sql.append("    `password`, ");
		sql.append("    `display_name`, ");
		sql.append("    `address` ");
		sql.append(") ");
		sql.append("VALUES( ");
		sql.append("    '"+user.getUser()+"', ");
		sql.append("    '"+user.getPassword()+"', ");
		sql.append("    '"+user.getDisplay_name()+"', ");
		sql.append("    '"+user.getAddress()+"' ");
		sql.append(")");
		
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}
	
	public int cheUsers(Users user) {
		String sql = "SELECT COUNT(user) FROM `users` WHERE user = '"+user.getUser()+"' ";
		int res = _jdbcTemplate.queryForObject(sql,Integer.class);
		return res;
	}
	
	public Users GetUserByAcc(Users user) {
		String sql = "SELECT * FROM `users` WHERE user = '"+user.getUser()+"' ";
		Users res = _jdbcTemplate.queryForObject(sql, new MapperUsers());
		return res;
	}
}
