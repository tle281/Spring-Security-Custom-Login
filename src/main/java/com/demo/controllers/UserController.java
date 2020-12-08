package com.demo.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.provisioning.JdbcUserDetailsManager;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.demo.model.UserRegistration;

@Controller
public class UserController {
	@Autowired
	JdbcUserDetailsManager jdbcUserDetailsManager;
	
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder; 

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView register() {
		return new ModelAndView("registration", "user", new UserRegistration());
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ModelAndView processRegister(@ModelAttribute("user") UserRegistration userRegistrationObject) {
		// authorities to be granted
		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		authorities.add(new SimpleGrantedAuthority(userRegistrationObject.getRole()));
		String encodedPassword = bCryptPasswordEncoder.encode(userRegistrationObject.getPassword());
		User user = new User(userRegistrationObject.getUsername(), encodedPassword, authorities);
		//User user = new User(userRegistrationObject.getUsername(), userRegistrationObject.getPassword(), authorities);
		jdbcUserDetailsManager.createUser(user);
		return new ModelAndView("redirect:/welcome");
	}
}
