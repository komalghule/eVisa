package app.visa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StatusController {

	@RequestMapping("/showStatus")
	public String showStatusForm(){
		return "UserStatus";
	}

	
	@RequestMapping("/checkStatus")
	public String showStatus(){
		return "CheckStatus";
	}
	
}
