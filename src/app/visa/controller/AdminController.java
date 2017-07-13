package app.visa.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mongodb.WriteResult;

import app.visa.model.MakeScheduleModel;
import app.visa.pojo.Application;
import app.visa.service.AdminService;
import app.visa.service.ApplicationService;

@Controller
public class AdminController {
	@Autowired
	AdminService service;
	
	@Autowired
	ApplicationService appService;
	
	@RequestMapping("/admin")
	public String showAdminIndex(){	
		return "admin";
	}
	
	@RequestMapping("/allApplicantDetails")
	public String showApplicants(Model map){
		List<Application> allApplications = service.getAllApplication();
		System.out.println("======allApplication======");
		System.out.println(allApplications);
		
		map.addAttribute("ApplicationList", allApplications);
		return "allApps";
	}
	
	@RequestMapping("/scheduleAppointment")
	public String scheduleAppoint(@RequestParam(value="id")String id,Model map,HttpSession session){
		//map.addAttribute("id", id);
		session.setAttribute("id", id);
		
		MakeScheduleModel makeScheduleModel = new MakeScheduleModel();
		map.addAttribute("makeScheduleModel", makeScheduleModel);
		return "MakeSchedule";
	}
	
	@RequestMapping("/makeSchedule")
	public String processApplicantSchedule(MakeScheduleModel makeScheduleModel,HttpSession session){
		String id = (String) session.getAttribute("id");
		System.out.println(id+"=====================");
		Application application = appService.getApplicationById(id);
		System.out.println(application+"===================");
		application.getAppointmentDetails().setMission(makeScheduleModel.getMission());
		application.getAppointmentDetails().setDate(makeScheduleModel.getDate());
		application.getAppointmentDetails().setTime(makeScheduleModel.getTime());
		
		
		System.out.println("========"+application+"=============");
		appService.saveApp(application);
		System.out.println("========"+application+"=============");
		
		
		return "redirect:allApplicantDetails";
		//return "allApps";
	}
}
