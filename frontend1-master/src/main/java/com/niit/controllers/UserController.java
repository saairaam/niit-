package com.niit.controllers;

import java.util.Collection;

import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.dao.ProductDAO;
import com.niit.dao.UserDetailDAO;
import com.niit.model.UserDetail;

@Controller
public class UserController {

	@Autowired
	ProductDAO productDAO;
	@Autowired
	UserDetailDAO userDetailDAO;
	
	@RequestMapping(value="/Register",method=RequestMethod.POST)
	public String saveuser(@ModelAttribute("userDetail")UserDetail userDetail, Model m ){
		userDetail.setEnabled("True");
		userDetail.setRole("User");
		userDetailDAO.registerUser(userDetail);
		
		/*UserDetail userDetail1=new UserDetail();
		m.addAttribute(userDetail1);*/
		return "Login1";
	}

	@RequestMapping("/login_success")
	public String loginProcess(HttpSession session,Model m) {
		
		String page=null;
		boolean loggedIn=true;
		
		SecurityContext securityContext = SecurityContextHolder.getContext();
		
		Authentication authentication = securityContext.getAuthentication();
		
		String username = authentication.getName();
		
		Collection<GrantedAuthority> roles = (Collection<GrantedAuthority>)authentication.getAuthorities();
		
		for(GrantedAuthority role:roles) {
			
			String roleName = role.getAuthority();
			session.setAttribute("loggedIn", loggedIn);
			session.setAttribute("username", username);
			session.setAttribute("role", roleName);
			if(roleName.equals("ROLE_USER")) 
			{
				page="index";
			}
			else 
			{
				page="Admin1";
			}
		}
		return page;
	}
	
	@RequestMapping("/perform_logout")
	public String loggingOut(HttpSession session,Model m) {
		
		session.invalidate();
		m.addAttribute("errorInfo", "Logout successfully!");
		
		return "index";
	}
	}

	
