package app.visa.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import app.visa.model.FilledPartialFormModel;
import app.visa.model.PassportFormDetail;
import app.visa.pojo.Application;
import app.visa.service.ApplicationService;

@Controller
public class FilledPartialController {
	
	@Autowired
	ApplicationService appService;
	
	@RequestMapping("/filledPartialyForm")
	public String showRemainsForm(Model map){
				
		FilledPartialFormModel filledPartialFormModel = new FilledPartialFormModel();
		map.addAttribute("command", filledPartialFormModel);
		
		return "PartialyFilledForm";
	}
	
	@RequestMapping("/filledAppForm")
	public String filledForm(FilledPartialFormModel filledPartialFormModel,Model map,HttpSession session){
		System.out.println("AppFormfill --------->>>"+filledPartialFormModel);
		//Application application = (Application) session.getAttribute("visaApplication");
		Application application = appService.getApplicationById(filledPartialFormModel.getApplicationFormId());
		System.out.println("===========app from db===========");
		System.out.println(application);
		
		session.setAttribute("fillAttribute", application);		

		PassportFormDetail passportFormDetail = new PassportFormDetail();
		passportFormDetail.setBirthDate(application.getPersonal().getBirth());
		passportFormDetail.setApplicationFormId(application.getId());
		passportFormDetail.setBirthCity(application.getPersonal().getBirthPlace());
		passportFormDetail.setBirthCountry(application.getPersonal().getBirthCountry());
		passportFormDetail.setExpiryDate(application.getPassport().getExpiryDate());
		passportFormDetail.setIssueCity(application.getPassport().getIssuePlace());
		passportFormDetail.setFirstName(application.getPersonal().getGivenname());
		passportFormDetail.setGender(application.getPersonal().getSex());
		passportFormDetail.setIssueCountry(application.getPassport().getPassportCountry());
		passportFormDetail.setIssueDate(application.getPassport().getIssueDate());
		passportFormDetail.setLastName(application.getPersonal().getGivenname());
		passportFormDetail.setNationalId(application.getPersonal().getNationalId());
		passportFormDetail.setPassportNo(application.getPassport().getPassportNo());
		passportFormDetail.setPrevName(application.getPersonal().getPreviousname());
		passportFormDetail.setQualification(application.getPersonal().getEducation());
		passportFormDetail.setReligion(application.getPersonal().getReligion());
		passportFormDetail.setTwoYearsMoreLiveForFromCountry(application.getPersonal().getResidentInFromCountry());
		passportFormDetail.setVisibleIdMark(application.getPersonal().getVisibleMarks());
		
		
		map.addAttribute("command",passportFormDetail );		
		
		return "ApplicationForm";
	}


	/*@RequestMapping("/applicantDetailForm")
	public String detailedForm(PassportFormDetail passportFormDetail, HttpSession session,Model map){
		
		
		
		ApplicantDetailsForm applicantDetailsForm = new ApplicantDetailsForm();
		map.addAttribute("command",applicantDetailsForm);
		return "ApplicantDetailForm";
	}
	
	@RequestMapping("/visaSought")
	public String showVisaSoughtForm(ApplicantDetailsForm applicantDetailsForm,HttpSession session, Model map){
		
		VisaSoughtDetails visaSoughtDetails = new VisaSoughtDetails();
		map.addAttribute("command",visaSoughtDetails);
		return "VisaSought";
	}*/	
	
}
