package com.nt.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nt.Dao.EmployeeDao;
import com.nt.Entity.Employee;

@Controller
public class HomeController {

	@Autowired
	private EmployeeDao Dao;

	@RequestMapping("/")
	public String index() {
		return "index";
	}
	

	@RequestMapping("/emphr")
	public String emphr() {
		return "empHR";
	}

	@RequestMapping("/home")
	public String home() {
		return "home";
	}

	@RequestMapping("/register-form")
	public String empadd() {
		return "empadd";
	}

	@RequestMapping("/registe")
	 public String register(@ModelAttribute Employee e,Model model ) {
	
		boolean added= Dao.add(e);
	 
	 if (added) {
		model.addAttribute("msg","Record Is Added");
	    	return "added";
	  }
	 else {
		model.addAttribute("errorMsg","Record is Not AAddd");
		return "error";
	}
}
	
	
	@RequestMapping("/selectid")
	 public String selectid() {
	 return "selectid";
	 }
	 
	@RequestMapping( "/select-id" )
	public String selecRecord( @RequestParam int employee_id, Model model ) {
		Employee e = Dao.selectid(employee_id);
		model.addAttribute( "emp", e );
		return "dispaly";
	}
	
	@RequestMapping("select-all")
	public String selectall(Model model) {
		List<Employee> list = Dao.selectall();
		model.addAttribute("emp",list);
		return "displayall";
	}
	
	
	@RequestMapping("/delete-form")
	public String delete(@RequestParam int employee_id,Model model) 
	{
		  boolean result = Dao.delete(employee_id);
		  if (result) {
			  model.addAttribute("msg","Record Is  Deleted");
			return "added";
		}
		  else {
			model.addAttribute("errorMsg","Record Is Not Deleted");
			return "error";
		}
	}
	
	//for update
	@RequestMapping("/update")
	public String update() {
		return "update";
	}
	
    @RequestMapping("/updatedata")
    public String updatedata(@RequestParam int employee_id,@RequestParam String name,@RequestParam String email,@RequestParam String address,@RequestParam String dob,@RequestParam String gender,@RequestParam int age,@RequestParam String joining_date,@RequestParam String designation,@RequestParam String deparment,@RequestParam String phone,Model model)
   {
	boolean update=Dao.update(employee_id, name, email, address, dob, gender, age, joining_date, designation, deparment, phone);
	if (update) {
		
		model.addAttribute("msg","Record Is Updated");
	    return "added";
		
	}
	else {
		model.addAttribute("errorMsg","Recoed Is Not Updated");
		return "error";
	}
}

@RequestMapping("/emphome")
public String emphome() {
	return "empHome";
}

//for display list of employee
@RequestMapping("/employee-list")
public String empList() {
	return "empDisplay";
}

@RequestMapping("/select-allemp")
public String empselectall(Model model) {
	List<Employee> list = Dao.empselect();
	model.addAttribute("emp",list);
	return "empDisplay";
}


}


