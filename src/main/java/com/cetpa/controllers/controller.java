package com.cetpa.controllers;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cetpa.models.Student;

@Controller
public class controller {

	@Autowired
	public com.cetpa.services.service service;
	

	@RequestMapping("/")
	public String getLoginView() {
		return "login.jsp";
	}
	
	@RequestMapping("login-action")
	public String authenticateUser(String username,String password,Model model)
	{
		if(username.equals("username") && password.equals("password"))
		{
			return "navbar.jsp";
		}
		model.addAttribute("msg","Authentication failed...");
		model.addAttribute("uid",username);
		return "login.jsp";
	}

//	@RequestMapping("/login-action")
//	public String authenticateUser(@PathVariable("username") String username, @PathVariable("password") String password, Model model) 
//	{
//		if (username.equals("afsartyagi") && password.equals("tyagi")) {
//			return "navbar.jsp"; // Assuming this is the successful login page
//		}
//		model.addAttribute("ui", "Incorrect...");
//		return "login.jsp";
//	}
//
//	
//       @RequestMapping("/")
//	    public String homepage()
//         {  
//     	return "navbar.jsp"	;
//             }
    
// For record insert
    
    @RequestMapping(value ="insert", method = RequestMethod.POST)
   	public String insertrecord(Student student)
   	{
    	service.insertrecord(student);
   	return "recsave.jsp"	;
   	}
    
   
    //For record list
    
    
    @RequestMapping("list")
   	public String listpage(Student student,Model model)
   	{
    List<Student> student1 =service.listStudent();
    System.out.println(student1);
     model.addAttribute("student", student1);
   	return "list.jsp";
   	
   	}
    
    
    //For  search record
    
    
    @RequestMapping("search")
   	public String searchpage()
   	{
   	return "searchh.jsp"	;
   	}
    @RequestMapping("searchrecord")
   	public String searchrecord(int cid,Model model)
   	{
    	Student student=service.searchrecord(cid);
    	if(student==null)
    	{
    		model.addAttribute("msg", "student with id  "+cid+"  is not found");
    		return "searchh.jsp";
    	}
    	model.addAttribute("student",student);
   	return "searchrecord.jsp"	;
   	}
    
    
    //For delete the record
    
    @RequestMapping("delete")
   	public String deletepage()
   	{
   	return "deleteh.jsp"	;
   	}
    @RequestMapping("deleterecord")
   	public String deleterecord(int cid,Model model)
   	{
    	Student student1=service.searchrecord(cid);
    	
    	if(student1==null)
    	{
    		model.addAttribute("msg", "student with id  "+cid+"  is not found");
    		return "deleteh.jsp";
    	}
    	model.addAttribute("student",student1);
   	return "confirmdelete.jsp"	;
   	}
    
    @RequestMapping("deleterecord1")
 	public String deleteProductRecord(int cid,Model model)
	{
		service.deleterecord1(cid);
		model.addAttribute("msg","Studennt with id "+cid+" has been deleted");
		return "deleteh.jsp";
	}
  
    //For update the record
    
    @RequestMapping("update")
   	public String updatepage()
   	{
   	return "update.jsp"	;
   	}
    @RequestMapping("updaterecord")
   	public String updaterecord(int cid,Model model)
   	{
    	Student student1=service.searchrecord(cid);
    	if(student1==null)
    	{
    		model.addAttribute("msg", "student with id  "+cid+"  is not found");
    		return "update.jsp";
    	}
    	model.addAttribute("student",student1);
   	return "confirmupdate.jsp"	;
   	}
    
    
    @RequestMapping("confirmrecord1")
   	public String updaterecord(Student student)
   	{
    	service.insertrecord1(student);
   	return "recsave.jsp"	;
   	}
    
    
    
    
   
}