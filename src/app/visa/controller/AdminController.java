package app.visa.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mongodb.WriteResult;

import app.visa.pojo.Application;
import app.visa.service.AdminService;

@Controller
public class AdminController {
	@Autowired
	AdminService service;
	
	@RequestMapping("/admin")
	public String showAdminIndex(HttpSession session,Model map){
		List<Application> allApplications = service.getAllApplication();
		System.out.println("======allApplication======");
		System.out.println(allApplications);
		
		map.addAttribute("ApplicationList", allApplications);
		
		
		return "admin";//"allApps";//"admin";
	}

	@RequestMapping("/update")
	public String updateApplication(@RequestParam(value="applicationId",required=false)String applicationId,Model map)
	{
		WriteResult updateResult = service.updateApplicationStatus(applicationId);
		System.out.println(updateResult);
		List<Application> allApplications = service.getAllApplication();
		map.addAttribute("ApplicationList", allApplications);
		return "admin";
	}
}
