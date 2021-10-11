package com.rst.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.rst.project.daos.UserRepository;
import com.rst.project.entities.User;
import com.rst.project.services.UserService;


@Controller
public class UserController {
	
	 @Autowired
	 private UserRepository userReposito;
	 
	 @Autowired
	 private UserService userService;
	
	 @GetMapping("/viewprofile")
	    public String viewProfile(Model model) {
		 String name = SecurityContextHolder.getContext().getAuthentication().getName();
	        
		  User user1 = userReposito.findByUserName(name);
	        model.addAttribute("user", user1);
	    	 	return "view_profile";
	    	
	    }
	 
	 @GetMapping("/editprofile")
	    public String editProfile(Model model) {
		 String name = SecurityContextHolder.getContext().getAuthentication().getName();
	        
		  User user = userReposito.findByUserName(name);
	        model.addAttribute("user", user);
	    	 	return "edit_profile";
	    	
	    }
	 
	 @PostMapping("saveprofile")
	 public String edit(Model model, String name, String userName,String password,long id){
		 userService.updateProfile(name, userName, password, id);
		 System.out.println(name+userName+password+id);
		 String namee = SecurityContextHolder.getContext().getAuthentication().getName();
		 User user1 = userReposito.findByUserName(namee);
	     model.addAttribute("user", user1);
	     return "view_profile";
	 }
	
/* Doesn't work as expected
	 @PostMapping("saveprofile")
	 public String edit(Model model, User user) {
		 System.out.println("ID:" + user.getId()+ "."+"Name:"+user.getName()+"."+"username:"+user.getUserName()+"."+"Password:"+user.getPassword()+".");
		 userService.updateUser(user);
		 String name = SecurityContextHolder.getContext().getAuthentication().getName();
		 User user1 = userReposito.findByUserName(name);
	     model.addAttribute("user", user1);
	     return "view_profile";
	 }
*/	

}
