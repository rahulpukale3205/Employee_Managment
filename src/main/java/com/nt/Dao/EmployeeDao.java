package com.nt.Dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.nt.Entity.Employee;

@Component
public class EmployeeDao {
	
	@Autowired
	private JdbcTemplate template;
	
	public Boolean add(Employee e) {
	try {
		Object[] args = {e.getEmployee_id(),e.getName(),e.getEmail(),e.getAddress(),e.getDob(),e.getGender(),e.getAge(),e.getJoining_date(),e.getDesignation(),e.getDeparment(),e.getPhone()};;
		int result= template.update("insert into employee values(?,?,?,?,?,?,?,?,?,?,?)",args);
		if (result==1) {
			return true;
		}
		
	} catch (Exception e2) {
		// TODO: handle exception
	}
	return false;
}

	
	public Employee selectid(int employee_id) {
		Object[] args = { employee_id };
		Employee e = template.queryForObject( "select * from employee where employee_id=?", new RowMapper<Employee>() {

			@Override
			public Employee mapRow( ResultSet rs, int rowNum ) throws SQLException {
				int i = rs.getInt( "employee_id" );
				String name = rs.getString( "name" );
				String email=rs.getString("email");	
				String address = rs.getString("address");
				String dob=rs.getString("dob");
				String gender = rs.getString("gender");
				int age= rs.getInt("age");
				String joining_date=rs.getString("joining_date");
				String designation =rs.getString("designation");
				String department =rs.getString("department");
				String phone=rs.getString("phone");
				Employee e1=new Employee(i,name,email,address,dob,gender,age,joining_date,designation,department,phone);
				return e1;
			}
		}, args );
          return e;
	}
	
	     public List<Employee> selectall() {
		  List<Employee> employees=template.query(" select * from employee", new RowMapper<Employee>() {
              @Override
			public Employee mapRow(ResultSet rs, int rowNum) throws SQLException {
				Employee employee = new Employee();
				employee.setEmployee_id(rs.getInt("employee_id"));
				employee.setName(rs.getString("name"));
				employee.setEmail(rs.getString("email"));
				employee.setAddress(rs.getString("address"));
				employee.setDob(rs.getString("dob"));
				employee.setGender(rs.getString("gender"));
				employee.setAge(rs.getInt("age"));
				employee.setJoining_date(rs.getString("joining_date"));
				employee.setDesignation(rs.getString("designation"));
				employee.setDeparment(rs.getString("department"));
				employee.setPhone(rs.getString("phone"));
				return employee;
			}
		 });
		         return employees;
		}
	     
	     
	     public boolean delete( int employee_id) {
	    	 Object[] arg= {employee_id};
	 		int result=template.update("delete from employee where employee_id=?",arg);
	    		  if (result==1) {
	    			  return true;
					
				}
	    		  else {
	    			  return false;
					
				}
	}
	     
	     public boolean update(int employee_id,String name,String email,String address,String dob,String gender,int age,String joining_date,String designation,String deparment,String phone) {
	    	 try {
				Object[] obj= {name,email,address,dob,gender,age,joining_date,designation,deparment,phone,employee_id};
				int result =template.update("update employee set name=?,email=?,address=?,dob=?,gender=?,age=?,joining_date=?,designation=?,department=?,phone=? where employee_id=?",obj);
					return true;
				}
			 catch (Exception e) {
                e.printStackTrace();
			}
	    	 return false;
	     }


	     public List<Employee> empselect() {
			  List<Employee> employees=template.query(" select * from employee", new RowMapper<Employee>() {
	              @Override
				public Employee mapRow(ResultSet rs, int rowNum) throws SQLException {
					Employee employee = new Employee();
					employee.setEmployee_id(rs.getInt("employee_id"));
					employee.setName(rs.getString("name"));
					employee.setEmail(rs.getString("email"));
					employee.setAddress(rs.getString("address"));
					employee.setDob(rs.getString("dob"));
					employee.setGender(rs.getString("gender"));
					employee.setAge(rs.getInt("age"));
					employee.setJoining_date(rs.getString("joining_date"));
					employee.setDesignation(rs.getString("designation"));
					employee.setDeparment(rs.getString("department"));
					employee.setPhone(rs.getString("phone"));
					return employee;
				}
			 });
			         return employees;
			}
		     
}