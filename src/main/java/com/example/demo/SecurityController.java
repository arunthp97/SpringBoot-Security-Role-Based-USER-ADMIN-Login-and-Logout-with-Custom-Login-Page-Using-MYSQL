package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SecurityController {
	
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	@Autowired
	private UserRepository userRepository;
	
	@RequestMapping("/")
	public String First_Page() {
		return "redirect:/user";
	}
	
	@RequestMapping("/user")
	public String Security_Login_User() {
		return "User_Dashboard.jsp";
	}
	
	@RequestMapping("/registers")
	public String Security_Register_Users() {
		return "Register.jsp";
	}
	
	@RequestMapping("/register")
	public String Security_Register_User(User user) {
		user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
		userRepository.save(user);
		return "redirect:/user";
	}
	
	
	@RequestMapping("/admin")
	public String Security_Login_Admin() {
		return "Admin_Dashboard.jsp";
	}
	
	
	@RequestMapping("/signin")
	public String Security_SignIn_User() {
		return "Login.jsp";
	}
	
	@RequestMapping("/login-fail")
	public String Security_loginfail_User() {
		return "Login-fail.jsp";
	}
	@RequestMapping("/403")
	public String Security_authorized_access() {
		return "403.jsp";
	}
	
	
}
