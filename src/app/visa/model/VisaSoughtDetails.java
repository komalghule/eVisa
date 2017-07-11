package app.visa.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class VisaSoughtDetails {
	
	private String applicationFormId;
	private String visaType;
	private String visitPlace;
	private String duration;
	private String entries;
	private String purpose;
	private String mobile;
	private String email;
	@DateTimeFormat(pattern="dd/MM/yyyy")
	private Date arrivalDate;
	private String arrivalPortInIndia;
	private String exitPortInIndia;
	private String prevVisaNo;
	private String cities;
	private String refToCountry;
	private String refToName;
	private String refToAddress;
	private String refToMobile;
	private String refFromCountry;
	private String refFromName;
	private String refFromAddress;
	private String refFromMobile;
	
	public VisaSoughtDetails() {
		this("","","","","","","","",new Date(),"","","","","","","","","","","","");
	}
	
	public VisaSoughtDetails(String appId,String visaType, String visitPlace, String duration, String entries, String purpose,
			String mobile, String email, Date arrivalDate, String arrivalPortInIndia, String exitPortInIndia,
			String prevVisaNo, String cities, String refToCountry, String refToName, String refToAddress,
			String refToMobile, String refFromCountry, String refFromName, String refFromAddress,
			String refFromMobile) {
		this.applicationFormId = appId;
		this.visaType = visaType;
		this.visitPlace = visitPlace;
		this.duration = duration;
		this.entries = entries;
		this.purpose = purpose;
		this.mobile = mobile;
		this.email = email;
		this.arrivalDate = arrivalDate;
		this.arrivalPortInIndia = arrivalPortInIndia;
		this.exitPortInIndia = exitPortInIndia;
		this.prevVisaNo = prevVisaNo;
		this.cities = cities;
		this.refToCountry = refToCountry;
		this.refToName = refToName;
		this.refToAddress = refToAddress;
		this.refToMobile = refToMobile;
		this.refFromCountry = refFromCountry;
		this.refFromName = refFromName;
		this.refFromAddress = refFromAddress;
		this.refFromMobile = refFromMobile;
	}

	public String getApplicationFormId() {
		return applicationFormId;
	}

	public void setApplicationFormId(String appId) {
		this.applicationFormId = appId;
	}

	public String getVisaType() {
		return visaType;
	}

	public void setVisaType(String visaType) {
		this.visaType = visaType;
	}

	public String getVisitPlace() {
		return visitPlace;
	}

	public void setVisitPlace(String visitPlace) {
		this.visitPlace = visitPlace;
	}

	public String getDuration() {
		return duration;
	}

	public void setDuration(String duration) {
		this.duration = duration;
	}

	public String getEntries() {
		return entries;
	}

	public void setEntries(String entries) {
		this.entries = entries;
	}

	public String getPurpose() {
		return purpose;
	}

	public void setPurpose(String purpose) {
		this.purpose = purpose;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
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

	public String getArrivalPortInIndia() {
		return arrivalPortInIndia;
	}

	public void setArrivalPortInIndia(String arrivalPortInIndia) {
		this.arrivalPortInIndia = arrivalPortInIndia;
	}

	public String getExitPortInIndia() {
		return exitPortInIndia;
	}

	public void setExitPortInIndia(String exitPortInIndia) {
		this.exitPortInIndia = exitPortInIndia;
	}

	public String getPrevVisaNo() {
		return prevVisaNo;
	}

	public void setPrevVisaNo(String prevVisaNo) {
		this.prevVisaNo = prevVisaNo;
	}

	public String getCities() {
		return cities;
	}

	public void setCities(String cities) {
		this.cities = cities;
	}

	public String getRefToCountry() {
		return refToCountry;
	}

	public void setRefToCountry(String refToCountry) {
		this.refToCountry = refToCountry;
	}

	public String getRefToName() {
		return refToName;
	}

	public void setRefToName(String refToName) {
		this.refToName = refToName;
	}

	public String getRefToAddress() {
		return refToAddress;
	}

	public void setRefToAddress(String refToAddress) {
		this.refToAddress = refToAddress;
	}

	public String getRefToMobile() {
		return refToMobile;
	}

	public void setRefToMobile(String refToMobile) {
		this.refToMobile = refToMobile;
	}

	public String getRefFromCountry() {
		return refFromCountry;
	}

	public void setRefFromCountry(String refFromCountry) {
		this.refFromCountry = refFromCountry;
	}

	public String getRefFromName() {
		return refFromName;
	}

	public void setRefFromName(String refFromName) {
		this.refFromName = refFromName;
	}

	public String getRefFromAddress() {
		return refFromAddress;
	}

	public void setRefFromAddress(String refFromAddress) {
		this.refFromAddress = refFromAddress;
	}

	public String getRefFromMobile() {
		return refFromMobile;
	}

	public void setRefFromMobile(String refFromMobile) {
		this.refFromMobile = refFromMobile;
	}

	@Override
	public String toString() {
		return "VisaSoughtDetails [appId=" + applicationFormId + ", visaType=" + visaType + ", visitPlace=" + visitPlace
				+ ", duration=" + duration + ", entries=" + entries + ", purpose=" + purpose + ", mobile=" + mobile
				+ ", email=" + email + ", arrivalDate=" + arrivalDate + ", arrivalPortInIndia=" + arrivalPortInIndia
				+ ", exitPortInIndia=" + exitPortInIndia + ", prevVisaNo=" + prevVisaNo + ", cities=" + cities
				+ ", refToCountry=" + refToCountry + ", refToName=" + refToName + ", refToAddress=" + refToAddress
				+ ", refToMobile=" + refToMobile + ", refFromCountry=" + refFromCountry + ", refFromName=" + refFromName
				+ ", refFromAddress=" + refFromAddress + ", refFromMobile=" + refFromMobile + "]";
	}

	
}
