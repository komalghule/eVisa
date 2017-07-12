package app.visa.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import app.visa.model.FilledPartialFormModel;
import app.visa.pojo.Application;
import app.visa.service.ApplicationService;

@Controller
public class StatusController {

	@Autowired
	ApplicationService service;
	
	@RequestMapping("/status")
	public String showStatusLogin(Model map){
		
		map.addAttribute("command", new FilledPartialFormModel());
		return "CheckStatus";
	}

	@RequestMapping("/showStatus")
	public String showStatusForm(FilledPartialFormModel filledPartialFormModel,Model map){
		Application application = service.getApplicationById(filledPartialFormModel.getApplicationFormId());
		map.addAttribute("application", application);
		return "UserStatus";
	}


}
