package app.visa.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import app.visa.model.AdminLoginModel;
import app.visa.model.MakeScheduleModel;
import app.visa.pojo.Admin;
import app.visa.pojo.Application;
import app.visa.pojo.Center;
import app.visa.pojo.Country;
import app.visa.service.AdminService;
import app.visa.service.ApplicationService;
import app.visa.service.CenterService;

@Controller
public class AdminController {
	@Autowired
	AdminService service;
	
	@Autowired
	ApplicationService appService;
	
	@Autowired
	CenterService centerService;
	
	@RequestMapping("/admin")
	public String showAdminlogin(Model map){
		System.out.println("go admin login");
		map.addAttribute("command", new AdminLoginModel());
		return "AdminLogin";
	}
	
	@RequestMapping("/adminLogin")
	public String showAdminIndex(AdminLoginModel adminLoginModel){
		System.out.println(adminLoginModel+"in admin");
		Admin admin = service.validateAdmin(adminLoginModel.getUsername(), adminLoginModel.getPassword());
		if(admin!=null){
			System.out.println(admin+"admin");
			return "admin";
		}else{
			return "redirect:admin";//controller
		}
		
	}
	
	@RequestMapping("/allApplicantDetails")
	public String showApplicants(Model map){
		List<Application> allApplications = service.getAllApplication();
		System.out.println("======allApplication======");
		System.out.println(allApplications);
		
		map.addAttribute("ApplicationList", allApplications);
		return "allApps";
	}
	
	@RequestMapping("/centers")
	public @ResponseBody List<Center> getCentersByCountry(HttpSession session){
		Application application = (Application)session.getAttribute("getCentersOfApplication");
		String country = application.getVisa().getFromCountry();
		List<Country> countries = centerService.getCountryList();
		List<Center> centers = null;
		for (Country country2 : countries) {
			System.out.println(country2+" in for country ");
			System.out.println(country2.getCenters());
			
			if(country2.getCountry().equals(country)){
				centers = country2.getCenters();
				System.out.println("in centers"+centers);
				break;
			}
		}
		return centers;
	}
	
	@RequestMapping("/scheduleAppointment")
	public String scheduleAppoint(@RequestParam(value="id")String id,Model map,HttpSession session){
		//map.addAttribute("id", id);
		session.setAttribute("id", id);
		
		Application application = appService.getApplicationById(id);
		session.setAttribute("getCentersOfApplication", application);
		
		MakeScheduleModel makeScheduleModel = new MakeScheduleModel();
		map.addAttribute("makeScheduleModel", makeScheduleModel);
		return "MakeSchedule";
	}
	
	@RequestMapping("/makeSchedule")
	public String processApplicantSchedule(MakeScheduleModel makeScheduleModel,HttpSession session){
		String id = (String) session.getAttribute("id");
		//System.out.println(id+"=====================");
		Application application = appService.getApplicationById(id);
		//System.out.println(application+"===================");
		application.getAppointmentDetails().setMission(makeScheduleModel.getMission());
		application.getAppointmentDetails().setDate(makeScheduleModel.getDate());
		application.getAppointmentDetails().setTime(makeScheduleModel.getTime()+" "+makeScheduleModel.getMeridiem());
		
		System.out.println("========"+application+"=============");
		appService.saveApp(application);
		System.out.println("========"+application+"=============");	
		
		return "redirect:allApplicantDetails";
		//return "allApps";
	}
}
