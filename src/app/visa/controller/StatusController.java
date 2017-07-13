package app.visa.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mongodb.WriteResult;

import app.visa.dao.AdminDao;
import app.visa.model.FilledPartialFormModel;
import app.visa.model.SetStatusModel;
import app.visa.pojo.Application;
import app.visa.service.AdminService;
import app.visa.service.ApplicationService;

@Controller
public class StatusController {

	@Autowired
	ApplicationService service;

	@Autowired
	AdminService adminService;
	@RequestMapping("/status")
	public String showStatusLogin(Model map){
		
		map.addAttribute("command", new FilledPartialFormModel());
		return "CheckStatus";
	}

	@RequestMapping("/showStatus")
	public String showStatusForm(FilledPartialFormModel filledPartialFormModel,Model map){
		
		Application application = service.getApplicationById(filledPartialFormModel.getApplicationFormId());
/*		System.out.println("==application : "+application);
		System.out.println("==pid : "+application.getPassport().getPassportNo()+"==");
		System.out.println("==appid : " + application.getId());
		System.out.println("==name : " + application.getPersonal().getGivenname());
*/		
		map.addAttribute("application", application);
		return "UserStatus";
	}

	
	@RequestMapping("/setStatus")
	public String update(SetStatusModel setStatusModel,HttpSession session){
		String id = (String) session.getAttribute("id");
		Application application = service.getApplicationById(id);
		application.setStatus(setStatusModel.getStatus());
		service.saveApp(application);
		return "redirect:allApplicantDetails";
	}
	@RequestMapping("/update")
	public String updateApplication(@RequestParam(value="id",required=false)String id,Model map,HttpSession session)
	{
		SetStatusModel setStatusModel = new SetStatusModel();
		map.addAttribute("command", setStatusModel);
		map.addAttribute("id", id);
		return "SetStatus";
	}
	
	

}
