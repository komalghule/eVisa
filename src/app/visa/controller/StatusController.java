package app.visa.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import app.visa.model.SetStatusModel;
import app.visa.model.ShowFormLoginModel;
import app.visa.pojo.Application;
import app.visa.service.AdminService;
import app.visa.service.ApplicationService;

@Controller
public class StatusController {

	@Autowired
	ApplicationService service;

	@Autowired
	AdminService adminService;
	
	@Autowired
	private MailSender mailSender;
	
	@RequestMapping("/status")
	public String showStatusLogin(Model map){
		
		ShowFormLoginModel showFormLoginModel = new ShowFormLoginModel();
		map.addAttribute("command", showFormLoginModel);
		//map.addAttribute("command", new FilledPartialFormModel());
		return "CheckStatus";
	}

	@RequestMapping("/showStatus")
	public String showStatusForm(Model map,ShowFormLoginModel showFormLoginModel){
		
		//Application application = service.getApplicationById(filledPartialFormModel.getApplicationFormId());
/*		System.out.println("==application : "+application);
		System.out.println("==pid : "+application.getPassport().getPassportNo()+"==");
		System.out.println("==appid : " + application.getId());
		System.out.println("==name : " + application.getPersonal().getGivenname());
*/		
		//map.addAttribute("application", application);
		
		Application application = service.getApplicationById(showFormLoginModel.getId());
		
		if(application != null){
			map.addAttribute("application", application);
			return "UserStatus";
		}
		return "error";
	}

	
	@RequestMapping("/setStatus")
	public String update(SetStatusModel setStatusModel,HttpSession session){
		System.out.println(setStatusModel+" in set status");
		String id = (String) session.getAttribute("id");
		System.out.println(id+" id");
		Application application = service.getApplicationById(id);
		application.setStatus(setStatusModel.getStatus());
		System.out.println(application+"-===========");
		service.saveApp(application);
		System.out.println(application+"-===========");
		
		
		String msg="Your Visa Status get updated to "+application.getStatus()+", visit a web again get check out. Thank you!!";
		SimpleMailMessage mailMessage = new SimpleMailMessage();
		mailMessage.setTo(application.getContact().getEmail());
		mailMessage.setSubject("Visa Application Confirmation");
		mailMessage.setText(msg);
		
		try
		{
			mailSender.send(mailMessage);
		}
		catch (MailException e) 
		{
			System.out.println("inside mail exception");
			e.printStackTrace();
		}

		
		
		return "redirect:allApplicantDetails";
	}

	@RequestMapping("/update")
	public String updateApplication(@RequestParam(value="id",required=false)String id,Model map,HttpSession session)
	{
		System.out.println(id+" inupdate");
		SetStatusModel setStatusModel = new SetStatusModel();
		map.addAttribute("command", setStatusModel);
		session.setAttribute("id", id);
		return "SetStatus";
	}
	
	

}
