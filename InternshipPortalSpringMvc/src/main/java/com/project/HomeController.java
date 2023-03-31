package com.project;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;








@Controller
public class HomeController {
	
	@Autowired
	Dao dao=new Dao();   
	@RequestMapping("/")
	public String userHome() {
		
		return "/index";
	}
	
	@RequestMapping("/admin")
	public String adminform() {
		
		return "/admin";
	}
	
	  @RequestMapping(value="/admin",method = RequestMethod.POST)    
	    public String admin(){    
	        
		  return "redirect:/admin_view";//will redirect to viewemp request mapping    
	    }  
	 
	@RequestMapping(path="/admin_view")
	public String view1(Model m ) {
	           List<Beans> list=dao.getAllStudents();
			   m.addAttribute("list",list);	   
		return "admin-submit";
	}  
	    
	    @RequestMapping(value="/save",method = RequestMethod.POST)    
	    public String save(@ModelAttribute("e") Beans e){    
	        dao.save(e);    
	        return "user_register";//will redirect to viewemp request mapping    
	    }   
	    
		@RequestMapping(path="delete/{id}",method=RequestMethod.GET)
		public String view(@PathVariable int id) {
			dao.delete(id);
			System.out.println(id);
			return "redirect:/admin_view";
		}
		
		@RequestMapping(path="edit/{id}",method=RequestMethod.GET)
		public String edit(@PathVariable int id,Model m) {
			
			Beans e=dao.getEmpById(id);
			
			
			m.addAttribute("e",e);
			return "edituser";
		}
		
		
		@RequestMapping(value="/editsave",method = RequestMethod.POST)
		public String edit1(@ModelAttribute("e") Beans e) {
			 System.out.println("Employee Id="+e.getId());
			dao.update(e,e.getId());
			return "redirect:/admin_view";
		}
		
		
		@RequestMapping("/user")
		public String userform() {
			
			return "/user";
		}
		
		@RequestMapping("/usersignup")
		public String usersignup1() {
			
			return "usersignup";
		}
		
		
		 @RequestMapping(value="/uservalidate",method = RequestMethod.POST)    
		    public String userValidate(){    
		           
		        return "user_register";//will redirect to viewemp request mapping    
		    }  
		
	    
	    
	    
}
