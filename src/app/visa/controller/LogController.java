package app.visa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LogController {

	@RequestMapping("/logout")
	public String showLogout(){
		return "Logout";
	}
}
