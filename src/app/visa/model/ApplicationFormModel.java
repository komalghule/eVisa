package app.visa.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import app.visa.pojo.Application;

public class ApplicationFormModel {
	private String country;
	private String center;
	private String natinality;
	@DateTimeFormat(pattern="dd/MM/yyyy")
	private Date birthDate;
	private String email;
	@DateTimeFormat(pattern="dd/MM/yyyy")
	private Date arrivalDate;
	private String visaType;
	private String purpose;
	
	public ApplicationFormModel() {
		this("","","",new Date(),"",new Date(),"","");
	}
	public ApplicationFormModel(String country, String center, String natinality, Date birthDate, String email, Date arrivalDate,
			String visaType, String purpose) {
		this.country = country;
		this.center = center;
		this.natinality = natinality;
		this.birthDate = birthDate;
		this.email = email;
		this.arrivalDate = arrivalDate;
		this.visaType = visaType;
		this.purpose = purpose;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getCenter() {
		return center;
	}
	public void setCenter(String center) {
		this.center = center;
	}
	public String getNatinality() {
		return natinality;
	}
	public void setNatinality(String natinality) {
		this.natinality = natinality;
	}
	public Date getBirthDate() {
		return birthDate;
	}
	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getArrivalDate() {
		return arrivalDate;
	}
	public void setArrivalDate(Date arrivalDate) {
		this.arrivalDate = arrivalDate;
	}
	public String getVisaType() {
		return visaType;
	}
	public void setVisaType(String visaType) {
		this.visaType = visaType;
	}
	public String getPurpose() {
		return purpose;
	}
	public void setPurpose(String purpose) {
		this.purpose = purpose;
	}
	
	public void fillApplicationForm(Application application){
		
	}
	
	@Override
	public String toString() {
		return "ApplicationFormModel [country=" + country + ", center=" + center + ", natinality=" + natinality
				+ ", birthDate=" + birthDate + ", email=" + email + ", arrivalDate=" + arrivalDate + ", visaType="
				+ visaType + ", purpose=" + purpose + "]";
	}
	
}
