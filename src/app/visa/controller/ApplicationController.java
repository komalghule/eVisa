package app.visa.controller;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.GregorianCalendar;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import app.visa.model.ApplicantDetailsForm;
import app.visa.model.ApplicationFormModel;
import app.visa.model.ConfirmationForm;
import app.visa.model.DocsUploadModel;
import app.visa.model.PassportFormDetail;
import app.visa.model.PaymentDetailForm;
import app.visa.model.ShowFormLoginModel;
import app.visa.model.VisaSoughtDetails;
import app.visa.pojo.Application;
import app.visa.pojo.Country;
import app.visa.pojo.FamilyDetails;
import app.visa.pojo.UploadDocument;
import app.visa.pojo.Visa;
import app.visa.service.ApplicationService;
import app.visa.service.CenterService;
import app.visa.service.VisaService;

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
	public String showoOlinevisaaplication(Model map,HttpSession session){		
		List<Country> countryList = centerService.getCountryList();
		map.addAttribute("countryList", countryList);
		ApplicationFormModel applicationFormModel = new ApplicationFormModel();
		
		/*applicationFormModel.setBirthDate(new GregorianCalendar(1994, 4, 9).getTime());
		applicationFormModel.setArrivalDate(new GregorianCalendar(2017, 11, 1).getTime());
		applicationFormModel.setEmail("komalghule47@gmail.com");
*/		
		map.addAttribute("command", applicationFormModel);
		
		return "onlinevisaaplication";
	}

	@RequestMapping("/appForm")
	public String showAppForm( ApplicationFormModel formModel,HttpSession session , Model map){
		System.out.println(formModel);
		Application application = new Application();
		//Application application = (Application) session.getAttribute("fillApplication");
		
		application.setStatus("Pending");
		application.getVisa().setFromCountry( formModel.getCountry());
		application.getVisa().setIndianMission( formModel.getCenter() );
		application.getPersonal().setNationality(formModel.getNatinality());
		application.getPersonal().setBirth(formModel.getBirthDate());
		application.getContact().setEmail(formModel.getEmail());
		application.getVisa().setArrivalDate(formModel.getArrivalDate());
		application.getVisa().setVisaType(formModel.getVisaType());
		application.getVisa().setPurpose(formModel.getPurpose());
		appService.saveApp(application);
		System.out.println("------form1--------");
		System.out.println(application);
		session.setAttribute("visaApplication", application);
		
		PassportFormDetail passportFormDetail = new PassportFormDetail();
		passportFormDetail.setApplicationFormId(application.getId());
		passportFormDetail.setBirthDate(application.getPersonal().getBirth());
		
/*		passportFormDetail.setFirstName("Komal");
		passportFormDetail.setLastName("Ghule");
		passportFormDetail.setPrevName("Komal");
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
*/		
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
		application.getPersonal().setPreviousname(passportFormDetail.getPrevName());
		//insert/update into database
		appService.saveApp(application);
		System.out.println("------form2--------");
		System.out.println(application);
		
		ApplicantDetailsForm applicantDetailsForm = new ApplicantDetailsForm();
		applicantDetailsForm.setApplicationFormId(application.getId());
		applicantDetailsForm.setEmail(application.getContact().getEmail());
		
		
/*		applicantDetailsForm.setHouseNo("1234567890");
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
		applicantDetailsForm.setPinCode("123456");
*/		
		map.addAttribute("command",applicantDetailsForm);
		return "ApplicantDetailForm";
	}

	@RequestMapping("/visaSought")
	public String showVisaSoughtForm(ApplicantDetailsForm applicantDetailsForm,HttpSession session, Model map){
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
		fatherDetails.setRelation("father");
		fatherDetails.setName(applicantDetailsForm.getFatherName());
		fatherDetails.setBirthCity(applicantDetailsForm.getFatherBirthPlace());
		fatherDetails.setBirthCountry(applicantDetailsForm.getCountry());
		fatherDetails.setNationality(applicantDetailsForm.getFatherNationality());
		fatherDetails.setPrevNationality(applicantDetailsForm.getFatherPrevNationality());
		motherDetails.setRelation("mother");
		motherDetails.setName(applicantDetailsForm.getMotherName());
		motherDetails.setBirthCity(applicantDetailsForm.getMotherBirthPlace());
		motherDetails.setBirthCountry(applicantDetailsForm.getMotherBirthCountry());
		motherDetails.setNationality(applicantDetailsForm.getMotherNationality());
		motherDetails.setPrevNationality(applicantDetailsForm.getMotherPrevNationality());
		application.setFamilyMembers(listFamilyDetails);
		application.getOccupation().setBusiness(applicantDetailsForm.getBusiness());
		application.getOccupation().setDesignation(applicantDetailsForm.getDesignation());
		application.getOccupation().setPastOccupation(applicantDetailsForm.getPrevOccupation());
		application.getOccupation().setPhone(applicantDetailsForm.getMobile());
		application.getOccupation().setFromPoliceMilitary(applicantDetailsForm.getFromPoliceMilitary());
		application.getContact().setPresentAddr(applicantDetailsForm.getHouseNo()+","+applicantDetailsForm.getCity()+","+applicantDetailsForm.getState()+","+applicantDetailsForm.getCountry()+".");
		application.getContact().setPermanentAddr(applicantDetailsForm.getpHouseNo()+","+applicantDetailsForm.getpCity()+","+applicantDetailsForm.getpState()+","+applicantDetailsForm.getpCountry()+".");
		application.getResiAddress().setAddress1(applicantDetailsForm.getHouseNo()+","+applicantDetailsForm.getCity()+","+applicantDetailsForm.getState()+","+applicantDetailsForm.getCountry()+".");
		application.getResiAddress().setAddress2(applicantDetailsForm.getpHouseNo()+","+applicantDetailsForm.getpCity()+","+applicantDetailsForm.getpState()+","+applicantDetailsForm.getpCountry()+".");
		application.getResiAddress().setPhone(applicantDetailsForm.getMobileNo());
		application.getResiAddress().setPin(applicantDetailsForm.getPinCode());
		application.getResiAddress().setState(applicantDetailsForm.getState());
		//insert/update into database
		appService.saveApp(application);		
		System.out.println("=========final Application=========");
		System.out.println(application);
		
		VisaSoughtDetails visaSoughtDetails = new VisaSoughtDetails();
		visaSoughtDetails.setArrivalDate(application.getVisa().getArrivalDate());
		visaSoughtDetails.setMobile(application.getContact().getMobile());
		visaSoughtDetails.setEmail(application.getContact().getEmail());
		visaSoughtDetails.setPurpose(application.getVisa().getPurpose());
		visaSoughtDetails.setVisaType(application.getVisa().getVisaType());
		visaSoughtDetails.setApplicationFormId(application.getId());
		visaSoughtDetails.setRefFromCountry(application.getVisa().getFromCountry());
		visaSoughtDetails.setRefToCountry("INDIA");
		
/*		visaSoughtDetails.setVisitPlace("Pune");
		visaSoughtDetails.setArrivalPortInIndia("Mumbai");
		visaSoughtDetails.setCities("Mumbai,Chennai,Colcata,Pune");
		visaSoughtDetails.setDuration("6");
		visaSoughtDetails.setEntries("1");
		visaSoughtDetails.setExitPortInIndia("Mumbai");
		visaSoughtDetails.setPrevVisaNo("P1234567");
		visaSoughtDetails.setRefFromName("Minakshi Ghule");
		visaSoughtDetails.setRefFromAddress("A-401,Silver Park,Ambegaon Pathar");
		visaSoughtDetails.setRefFromMobile("0123456789");
		visaSoughtDetails.setRefToName("Sachin Punekar");
		visaSoughtDetails.setRefToAddress("B-303,Sanskriti Bhagya Residency,Ambegaon Pathar,Pune-16");
		visaSoughtDetails.setRefToMobile("1234567890");
*/		
		map.addAttribute("command",visaSoughtDetails);
		return "VisaSought";
	}
	
	@RequestMapping("/docUpload")
	public String uploadDocs(VisaSoughtDetails visaSoughtDetails,HttpSession session,Model map){
		System.out.println("========visaSoughtDetails===========");
		System.out.println(visaSoughtDetails);
		
		Application application = (Application) session.getAttribute("visaApplication");
		application.getFromCountryReference().setName(visaSoughtDetails.getRefFromName());
		application.getFromCountryReference().setCountry(visaSoughtDetails.getRefFromCountry());
		application.getFromCountryReference().setAddress(visaSoughtDetails.getRefFromAddress());
		application.getFromCountryReference().setPhone(visaSoughtDetails.getRefFromMobile());
		application.getIndiaCountryReference().setName(visaSoughtDetails.getRefToName());
		application.getIndiaCountryReference().setCountry(visaSoughtDetails.getRefToCountry());
		application.getIndiaCountryReference().setAddress(visaSoughtDetails.getRefToAddress());
		application.getIndiaCountryReference().setPhone(visaSoughtDetails.getRefToMobile());
		List<String> lastVisitedCities = new ArrayList<>();
		lastVisitedCities.add(visaSoughtDetails.getCities());
		application.setLastVisitedCities(lastVisitedCities);
		application.setLastVisaAppId(visaSoughtDetails.getPrevVisaNo());
		application.getVisa().setArrivalDate(visaSoughtDetails.getArrivalDate());
		application.getVisa().setArrivalPort(visaSoughtDetails.getArrivalPortInIndia());
		application.getVisa().setExitPort(visaSoughtDetails.getExitPortInIndia());
		application.getVisa().setEntries(Integer.parseInt(visaSoughtDetails.getEntries()));
		application.getVisa().setVisaPeriod(Integer.parseInt(visaSoughtDetails.getDuration()));
		application.getVisa().setVisitPlace(visaSoughtDetails.getVisitPlace());
		//insert/update into database
		appService.saveApp(application);		
		System.out.println("=========final Application=========");
		System.out.println(application);
		
/*		DocsUploadModel docsUploadModel = new DocsUploadModel();
		map.addAttribute("command",docsUploadModel);
*/		
		
		return "DocsUpload";
	}

	
	@RequestMapping(value="/save", method = RequestMethod.POST)
	public String save(
			@ModelAttribute("uploadForm") FileUploadForm uploadForm,
					Model map,HttpSession session) throws IOException {
		
		List<MultipartFile> files = uploadForm.getFiles();

		List<String> fileNames = new ArrayList<String>();
		
		List<UploadDocument> uploadDocumentsList = new ArrayList<>();
		if(null != files && files.size() > 0) {
			for (MultipartFile multipartFile : files) {

				String fileName = multipartFile.getOriginalFilename();
				System.out.println("========="+fileName+"==========="); 
				fileNames.add(fileName);
				//Handle file content - multipartFile.getInputStream()

				if(multipartFile!=null && multipartFile.getSize() > 0){
					InputStream in = multipartFile.getInputStream();
					System.out.println(in+"====");
					String path = this.getClass().getResource("/../../bootstrap/").getPath();
					System.out.println("PATH:"+path);
					String fname = multipartFile.getOriginalFilename();
					System.out.println("FileName::"+fname);			
				
					UploadDocument uploadDocument = new UploadDocument();
					uploadDocument.setPath(path);
					uploadDocument.setTitle(fname);
					uploadDocumentsList.add(uploadDocument);	
				}
			}
		}
				
		Application application = (Application) session.getAttribute("visaApplication");
		application.setDocuments(uploadDocumentsList);
		for (UploadDocument uploadDocument : uploadDocumentsList) {
			System.out.println(uploadDocument);
		}
		
		map.addAttribute("files", fileNames);
		return "fileUploadSuccess";
	}
	
	@RequestMapping("/payment")
	public String makePayment(@ModelAttribute("uploadForm") FileUploadForm uploadForm,DocsUploadModel docsUploadModel,HttpSession session,Model map,DocumentUpload documentUpload) throws Exception{
		Application application = (Application) session.getAttribute("visaApplication");
		/*Doc Upload*/
		//Upload Document
		List<MultipartFile> files = uploadForm.getFiles();

		List<String> fileNames = new ArrayList<String>();
		
		List<UploadDocument> uploadDocumentsList = new ArrayList<>();
		if(null != files && files.size() > 0) {
			for (MultipartFile multipartFile : files) {

				String fileName = multipartFile.getOriginalFilename();
				System.out.println("========="+fileName+"==========="); 
				fileNames.add(fileName);
				//Handle file content - multipartFile.getInputStream()

				if(multipartFile!=null && multipartFile.getSize() > 0){
					InputStream in = multipartFile.getInputStream();
					System.out.println(in+"====");
					String path = this.getClass().getResource("/../../bootstrap/").getPath();
					System.out.println("PATH:"+path);
					String fname = multipartFile.getOriginalFilename();
					System.out.println("FileName::"+fname);			
				
					UploadDocument uploadDocument = new UploadDocument();
					uploadDocument.setPath(path);
					uploadDocument.setTitle(fname);
					uploadDocumentsList.add(uploadDocument);	
				}
			}
		}
				
		application.setDocuments(uploadDocumentsList);
		for (UploadDocument uploadDocument : uploadDocumentsList) {
			System.out.println(uploadDocument);
		}
		appService.saveApp(application);
		
		PaymentDetailForm paymentDetailForm = new PaymentDetailForm();
		paymentDetailForm.setApplicationFormId(application.getId());
/*		paymentDetailForm.setAmount("100000.90");
		paymentDetailForm.setPaymentMode("Net Banking");
*/		paymentDetailForm.setTransactionId(application.getId());
		paymentDetailForm.setDate(application.getDate());
		
		map.addAttribute("id", application.getId());
		map.addAttribute("command",paymentDetailForm);
		return "MakePayment";
	}

	@RequestMapping("/confirmDetails")
	public String confirmDetails(PaymentDetailForm paymentDetailForm,HttpSession session){
		
		Application application = (Application) session.getAttribute("visaApplication");
		application.getPayment().setPaymentDate(paymentDetailForm.getDate());
		application.getPayment().setTransactionId(paymentDetailForm.getTransactionId());
		application.getPayment().setAmount(Double.parseDouble(paymentDetailForm.getAmount()));
		application.getPayment().setPaymentMode(paymentDetailForm.getPaymentMode());
		System.out.println("==============payment Application====================");
		System.out.println(application);
		appService.saveApp(application);
				
		return "ConfirmDetails";
	}
	
	@RequestMapping("/confirmation")
	public String getConfirm(HttpSession session,Model map){
		Application application = (Application) session.getAttribute("visaApplication");
		ConfirmationForm confirmationForm = new ConfirmationForm();
		confirmationForm.setApplicantName(application.getPersonal().getGivenname() + " " + application.getPersonal().getSurname());
		confirmationForm.setApplicationFormId(application.getId());
		map.addAttribute("command",confirmationForm);

		return "Confirmation";
	}
	
	@RequestMapping("/printForm")
	public String printForm(Model map){
		map.addAttribute("command", new ShowFormLoginModel());
		return "PrintApplicationForm";
	}

	@RequestMapping("/showForm")
	public String showForm(ShowFormLoginModel showFormLoginModel,Model map){
		Application application = appService.getApplicationById(showFormLoginModel.getId());
		if(application != null){
			map.addAttribute("showForm", application);
			return "ShowForm";
		}
		return "error";
	}
	
}
