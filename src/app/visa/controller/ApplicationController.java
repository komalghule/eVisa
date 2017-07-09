package app.visa.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import app.visa.model.ApplicationFormModel;
import app.visa.pojo.Application;
import app.visa.pojo.Country;
import app.visa.pojo.Visa;
import app.visa.service.ApplicationService;
import app.visa.service.CenterService;
import app.visa.service.VisaService;
import javassist.tools.rmi.AppletServer;

@Controller
public class ApplicationController {
	@Autowired
	CenterService centerService;
	@Autowired
	VisaService visaService;
	@Autowired
	ApplicationService appService;
	
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

	@RequestMapping("/appForm")
	public String showAppForm( ApplicationFormModel formModel,HttpSession session ){
		System.out.println(formModel);
		Application application = new Application();

		application.getVisa().setFromCountry( formModel.getCountry());
		application.getVisa().setIndianMission( formModel.getCenter() );
		application.getPersonal().setNationality(formModel.getNatinality());
		application.getPersonal().setBirth(formModel.getBirthDate());
		application.getContact().setEmail(formModel.getEmail());
		application.getVisa().setArrivalDate(formModel.getArrivalDate());
		application.getVisa().setVisaType(formModel.getVisaType());
		application.getVisa().setPurpose(formModel.getPurpose());
		appService.saveApp(application);
		System.out.println(application);
		session.setAttribute("visaApplication", application);
		return "ApplicationForm";
	}

	@RequestMapping("/filledPartialyForm")
	public String showRemainsForm(){
		
		return "PartialyFilledForm";
	}
	
	@RequestMapping("/printForm1")
	public String printForm(){
		return "PrintApplicationForm";
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
