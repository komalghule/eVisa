package app.visa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import app.visa.pojo.Country;
import app.visa.pojo.Visa;
import app.visa.service.CenterService;
import app.visa.service.VisaService;

@Controller
public class HomeController {
	@Autowired
	VisaService visaService;

	@RequestMapping("/home")
	public String showHome(Model map)
	{
		List<Visa> visaList = visaService.getVisaList();
		map.addAttribute("visaList",visaList);
		return "home";
	}
	

}
