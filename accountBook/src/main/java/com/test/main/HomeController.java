package com.test.main;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.test.main.login.dao.UserDao;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	//Log4j 보안 취약점 관련으로 인해 일단 사용보류.
	//private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	UserDao userDao;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {

		//Log4j 보안 취약점 관련으로 인해 일단 사용보류.
		//logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		//viewResolver → /WEB-INF/views/ + home. jsp
		return "home";
	}
	
		
	
	
}
