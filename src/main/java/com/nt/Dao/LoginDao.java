package com.nt.Dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

@Component
public class LoginDao {

	@Autowired
	private JdbcTemplate template;

	public boolean loginValidation( String username, String password ) {
		Object[] args = { username, password };
		Integer count = template.queryForObject( "select count(*) from hrlogin where username=? and password=?", Integer.class, args );
		if ( count == 1 ) {
			return true;
		}
		return false;
	}
	

	public boolean empValidation( String username, String password ) {
		Object[] args = { username, password };
		Integer count = template.queryForObject( "select count(*) from emplogin where username=? and password=?", Integer.class, args );
		if ( count == 1 ) {
			return true;
		}
		return false;
	}
}

	
