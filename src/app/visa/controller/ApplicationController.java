package app.visa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import app.visa.pojo.Country;
import app.visa.pojo.Visa;
import app.visa.service.CenterService;
import app.visa.service.VisaService;

@Controller
public class ApplicationController {
	@Autowired
	CenterService centerService;
	
	@Autowired
	VisaService visaService;
	
	@RequestMapping("/countries")
	public @ResponseBody List<Country> getCountries(){		
		List<Country> countryList = centerService.getCountryList();
		return countryList;
	}

	@RequestMapping("/visas")
	public @ResponseBody List<Visa> getVisa(){		
		List<Visa> visaList = visaService.getVisaList();  
		return visaList;
	}
	
	@RequestMapping("/onlinevisaaplication")
	public String showoOlinevisaaplication(Model map){		
		List<Country> countryList = centerService.getCountryList();
		map.addAttribute("countryList", countryList);
		return "onlinevisaaplication";
	}

	@RequestMapping("/filledPartialyForm")
	public String showRemainsForm(){
		return "PartialyFilledForm";
	}
	
	@RequestMapping("/printForm1")
	public String printForm(){
		return "PrintApplicationForm";
	}
	
	@RequestMapping("/appForm")
	public String showAppForm(){
		return "ApplicationForm";
	}
	
	@RequestMapping("/applicantDetailForm")
	public String detailedForm(){
		return "ApplicantDetailForm";
	}
	
	@RequestMapping("/docUpload")
	public String uploadDocs(){
		return "DocsUpload";
	}
	
	@RequestMapping("/upload")
	public String showUpload(){
		return "Register";
	}
	
	@RequestMapping("/payment")
	public String showPayment(){
		return "PaymentDetails";
	}

	@RequestMapping("/pay")
	public String makePayment(){
		return "MakePayment";
	}

	@RequestMapping("/confirmDetails")
	public String confirmDetails(){
		return "ConfirmDetails";
	}
	
	@RequestMapping("/confirmation")
	public String getConfirm(){
		return "Confirmation";
	}
	
}
