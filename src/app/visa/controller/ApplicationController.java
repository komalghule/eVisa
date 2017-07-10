package app.visa.controller;

import java.util.ArrayList;
import java.util.GregorianCalendar;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import app.visa.model.ApplicantDetailsForm;
import app.visa.model.ApplicationFormModel;
import app.visa.model.PassportFormDetail;
import app.visa.pojo.Application;
import app.visa.pojo.Country;
import app.visa.pojo.FamilyDetails;
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
		ApplicationFormModel applicationFormModel = new ApplicationFormModel();
		
		applicationFormModel.setBirthDate(new GregorianCalendar(1994, 4, 9).getTime());
		applicationFormModel.setArrivalDate(new GregorianCalendar(2017, 11, 1).getTime());
		applicationFormModel.setEmail("komalghule47@gmail.com");
		
		map.addAttribute("command", applicationFormModel);
		return "onlinevisaaplication";
	}

	@RequestMapping("/appForm")
	public String showAppForm( ApplicationFormModel formModel,HttpSession session , Model map){
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
		//System.out.println("------form1--------");
		//System.out.println(application);
		session.setAttribute("visaApplication", application);
		
		PassportFormDetail passportFormDetail = new PassportFormDetail();
		passportFormDetail.setApplicationFormId(application.getId());
		passportFormDetail.setBirthDate(application.getPersonal().getBirth());
		
		passportFormDetail.setFirstName("Komal");
		passportFormDetail.setLastName("Ghule");
		passportFormDetail.setBirthCity("Junnar");
		passportFormDetail.setBirthCountry("India");
		passportFormDetail.setNationalId("12345");
		passportFormDetail.setReligion("Hindu");
		passportFormDetail.setVisibleIdMark("mask on nose");
		passportFormDetail.setQualification("PH.D");
		passportFormDetail.setPassportNo("P1234567");
		passportFormDetail.setIssueCity("Mumbai");
		passportFormDetail.setIssueCountry("India");
		passportFormDetail.setIssueDate(new GregorianCalendar(2017, 7, 29).getTime());
		passportFormDetail.setExpiryDate(new GregorianCalendar(2020, 4, 9).getTime());
		
		map.addAttribute("command",passportFormDetail );
		
		return "ApplicationForm";
	}

	@RequestMapping("/applicantDetailForm")
	public String detailedForm(PassportFormDetail passportFormDetail, HttpSession session,Model map){
		System.out.println(passportFormDetail);
		Application application = (Application) session.getAttribute("visaApplication");
		
		application.getPersonal().setGivenname(passportFormDetail.getFirstName());
		application.getPersonal().setSurname(passportFormDetail.getLastName());
		application.getPersonal().setBirthPlace(passportFormDetail.getBirthCity());
		application.getPersonal().setBirthCountry(passportFormDetail.getBirthCountry());
		application.getPersonal().setSex(passportFormDetail.getGender());
		application.getPersonal().setNationalId(passportFormDetail.getNationalId());
		application.getPersonal().setReligion(passportFormDetail.getReligion());
		application.getPersonal().setVisibleMarks(passportFormDetail.getVisibleIdMark());
		application.getPersonal().setEducation(passportFormDetail.getQualification());
		application.getPersonal().setResidentInFromCountry(passportFormDetail.getTwoYearsMoreLiveForFromCountry());
		application.getPassport().setPassportNo(passportFormDetail.getPassportNo());
		application.getPassport().setIssueDate(passportFormDetail.getIssueDate());
		application.getPassport().setExpiryDate(passportFormDetail.getExpiryDate());
		application.getPassport().setIssuePlace(passportFormDetail.getIssueCity());
		application.getPassport().setPassportCountry(passportFormDetail.getIssueCountry());
		//insert/update into database
		appService.saveApp(application);
		//System.out.println("------form2--------");
		//System.out.println(application);
		ApplicantDetailsForm applicantDetailsForm = new ApplicantDetailsForm();
		applicantDetailsForm.setEmail(application.getContact().getEmail());
		
		
		applicantDetailsForm.setHouseNo("1234567890");
		applicantDetailsForm.setCity("Junnar");
		applicantDetailsForm.setState("Maharashtra");
		applicantDetailsForm.setCountry("India");
		applicantDetailsForm.setMobileNo("1234567890");
		applicantDetailsForm.setpHouseNo("1234567890");
		applicantDetailsForm.setpCity("Junnar");
		applicantDetailsForm.setpState("Maharashtra");
		applicantDetailsForm.setpCountry("India");
		applicantDetailsForm.setFatherName("Kailas");
		applicantDetailsForm.setFatherBirthPlace("Junnar");
		applicantDetailsForm.setFatherBirthCountry("India");
		applicantDetailsForm.setFatherNationality("Indian");
		applicantDetailsForm.setFatherPrevNationality("India");
		applicantDetailsForm.setMotherName("Aasha");
		applicantDetailsForm.setMotherBirthPlace("Junnar");
		applicantDetailsForm.setMotherBirthCountry("India");
		applicantDetailsForm.setMotherNationality("Indian");
		applicantDetailsForm.setMotherPrevNationality("Indian");
		applicantDetailsForm.setOccupation("Student");
		applicantDetailsForm.setBusiness("Farming");
		applicantDetailsForm.setDesignation("Student");
		applicantDetailsForm.setAddress("address");
		applicantDetailsForm.setMobile("1234567890");
		applicantDetailsForm.setPrevOccupation("nothing");
		
		
		map.addAttribute("command",applicantDetailsForm);
		return "ApplicantDetailForm";
	}

	@RequestMapping("/docUpload")
	public String uploadDocs(ApplicantDetailsForm applicantDetailsForm,HttpSession session){
		System.out.println("--------------applicantDetailsForm------------");
		System.out.println(applicantDetailsForm);
		
		Application application = (Application) session.getAttribute("visaApplication");
		application.getContact().setMobile(applicantDetailsForm.getMobileNo());
		application.getPersonal().setMaritalStatus(applicantDetailsForm.getMarriedStatus());
		
		FamilyDetails fatherDetails = new FamilyDetails();
		
		FamilyDetails motherDetails = new FamilyDetails();
		List<FamilyDetails> listFamilyDetails = new ArrayList<>();
		listFamilyDetails.add(fatherDetails);
		listFamilyDetails.add(motherDetails);
		application.setFamilyMembers(listFamilyDetails);

		
		
		fatherDetails.setName(applicantDetailsForm.getFatherName());
		fatherDetails.setBirthCity(applicantDetailsForm.getFatherBirthPlace());
		fatherDetails.setBirthCountry(applicantDetailsForm.getCountry());
		fatherDetails.setNationality(applicantDetailsForm.getFatherNationality());
		fatherDetails.setPrevNationality(applicantDetailsForm.getFatherPrevNationality());
		
		motherDetails.setName(applicantDetailsForm.getMotherName());
		motherDetails.setBirthCity(applicantDetailsForm.getMotherBirthPlace());
		motherDetails.setBirthCountry(applicantDetailsForm.getMotherBirthCountry());
		motherDetails.setNationality(applicantDetailsForm.getMotherNationality());
		motherDetails.setPrevNationality(applicantDetailsForm.getMotherPrevNationality());
		
		
		application.getOccupation().setBusiness(applicantDetailsForm.getBusiness());
		application.getOccupation().setDesignation(applicantDetailsForm.getDesignation());
		application.getOccupation().setPastOccupation(applicantDetailsForm.getPrevOccupation());
		application.getOccupation().setPhone(applicantDetailsForm.getMobile());
		application.getOccupation().setFromPoliceMilitary(applicantDetailsForm.getFromPoliceMilitary());
		System.out.println("=========final Application=========");
		System.out.println(application);
		return "DocsUpload";
	}

	@RequestMapping("/filledPartialyForm")
	public String showRemainsForm(){
		return "PartialyFilledForm";
	}
	
	@RequestMapping("/printForm1")
	public String printForm(){
		return "PrintApplicationForm";
	}
	
	@RequestMapping("/upload")
	public String showUpload(){
		return "home";
	}
	
	@RequestMapping("/payment")
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
