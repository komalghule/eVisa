package app.visa.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class ApplicantDetailsForm {
	private String houseNo;
	private String city;
	private String state;
	private String Country;
	private String mobileNo;
	private String email;
	private String marriedStatus;
	
	private String pHouseNo;
	private String pCity;
	private String pState;
	private String pCountry;
	
	private String fatherName;
	private String fatherNationality;
	private String fatherPrevNationality;
	private String fatherBirthPlace;
	private String fatherBirthCountry;
	@DateTimeFormat(pattern="dd/MM/yyyy")
	private Date fatherBirthDate;
	
	private String motherName;
	private String motherNationality;
	private String motherPrevNationality;
	private String motherBirthPlace;
	private String motherBirthCountry;
	@DateTimeFormat(pattern="dd/MM/yyyy")
	private Date motherBirthDate;

	
	private String occupation;
	private String gardian;
	private String business;
	private String designation;
	private String address;
	private String mobile;
	private String prevOccupation;
	
	public ApplicantDetailsForm() {
		this("","","","","","","","","","","","","","","","",new Date(),"","","","","",new Date(),"","","","","","","");
	}
	

	public ApplicantDetailsForm(String houseNo, String city, String state, String country, String mobileNo,
			String email, String marriedStatus, String pHouseNo, String pCity, String pState, String pCountry,
			String fatherName, String fatherNationality, String fatherPrevNationality, String fatherBirthPlace,
			String fatherBirthCountry, Date fatherBirthDate, String motherName, String motherNationality,
			String motherPrevNationality, String motherBirthPlace, String motherBirthCountry, Date motherBirthDate,
			String occupation, String gardian, String business, String designation, String address, String mobile,
			String prevOccupation) {
		this.houseNo = houseNo;
		this.city = city;
		this.state = state;
		Country = country;
		this.mobileNo = mobileNo;
		this.email = email;
		this.marriedStatus = marriedStatus;
		this.pHouseNo = pHouseNo;
		this.pCity = pCity;
		this.pState = pState;
		this.pCountry = pCountry;
		this.fatherName = fatherName;
		this.fatherNationality = fatherNationality;
		this.fatherPrevNationality = fatherPrevNationality;
		this.fatherBirthPlace = fatherBirthPlace;
		this.fatherBirthCountry = fatherBirthCountry;
		this.fatherBirthDate = fatherBirthDate;
		this.motherName = motherName;
		this.motherNationality = motherNationality;
		this.motherPrevNationality = motherPrevNationality;
		this.motherBirthPlace = motherBirthPlace;
		this.motherBirthCountry = motherBirthCountry;
		this.motherBirthDate = motherBirthDate;
		this.occupation = occupation;
		this.gardian = gardian;
		this.business = business;
		this.designation = designation;
		this.address = address;
		this.mobile = mobile;
		this.prevOccupation = prevOccupation;
	}


	public String getHouseNo() {
		return houseNo;
	}
	public void setHouseNo(String houseNo) {
		this.houseNo = houseNo;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCountry() {
		return Country;
	}
	public void setCountry(String country) {
		Country = country;
	}
	public String getMobileNo() {
		return mobileNo;
	}
	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMarriedStatus() {
		return marriedStatus;
	}
	public void setMarriedStatus(String marriedStatus) {
		this.marriedStatus = marriedStatus;
	}
	public String getpHouseNo() {
		return pHouseNo;
	}
	public void setpHouseNo(String pHouseNo) {
		this.pHouseNo = pHouseNo;
	}
	public String getpCity() {
		return pCity;
	}
	public void setpCity(String pCity) {
		this.pCity = pCity;
	}
	public String getpState() {
		return pState;
	}
	public void setpState(String pState) {
		this.pState = pState;
	}
	public String getpCountry() {
		return pCountry;
	}
	public void setpCountry(String pCountry) {
		this.pCountry = pCountry;
	}
	public String getFatherName() {
		return fatherName;
	}
	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}
	public String getFatherNationality() {
		return fatherNationality;
	}
	public void setFatherNationality(String fatherNationality) {
		this.fatherNationality = fatherNationality;
	}
	public String getFatherPrevNationality() {
		return fatherPrevNationality;
	}
	public void setFatherPrevNationality(String fatherPrevNationality) {
		this.fatherPrevNationality = fatherPrevNationality;
	}
	public String getFatherBirthPlace() {
		return fatherBirthPlace;
	}
	public void setFatherBirthPlace(String fatherBirthPlace) {
		this.fatherBirthPlace = fatherBirthPlace;
	}
	public Date getFatherBirthDate() {
		return fatherBirthDate;
	}
	public void setFatherBirthDate(Date fatherBirthDate) {
		this.fatherBirthDate = fatherBirthDate;
	}
	public String getMotherName() {
		return motherName;
	}
	public void setMotherName(String motherName) {
		this.motherName = motherName;
	}
	public String getMotherNationality() {
		return motherNationality;
	}
	public void setMotherNationality(String motherNationality) {
		this.motherNationality = motherNationality;
	}
	public String getMotherPrevNationality() {
		return motherPrevNationality;
	}
	public void setMotherPrevNationality(String motherPrevNationality) {
		this.motherPrevNationality = motherPrevNationality;
	}
	public String getMotherBirthPlace() {
		return motherBirthPlace;
	}
	public void setMotherBirthPlace(String motherBirthPlace) {
		this.motherBirthPlace = motherBirthPlace;
	}
	public Date getMotherBirthDate() {
		return motherBirthDate;
	}
	public void setMotherBirthDate(Date motherBirthDate) {
		this.motherBirthDate = motherBirthDate;
	}
	public String getOccupation() {
		return occupation;
	}
	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}
	public String getGardian() {
		return gardian;
	}
	public void setGardian(String gardian) {
		this.gardian = gardian;
	}
	public String getBusiness() {
		return business;
	}
	public void setBusiness(String business) {
		this.business = business;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getPrevOccupation() {
		return prevOccupation;
	}
	public void setPrevOccupation(String prevOccupation) {
		this.prevOccupation = prevOccupation;
	}
	
	public String getFatherBirthCountry() {
		return fatherBirthCountry;
	}


	public void setFatherBirthCountry(String fatherBirthCountry) {
		this.fatherBirthCountry = fatherBirthCountry;
	}


	public String getMotherBirthCountry() {
		return motherBirthCountry;
	}


	public void setMotherBirthCountry(String motherBirthCountry) {
		this.motherBirthCountry = motherBirthCountry;
	}


	@Override
	public String toString() {
		return "ApplicantDetailsForm [houseNo=" + houseNo + ", city=" + city + ", state=" + state + ", Country="
				+ Country + ", mobileNo=" + mobileNo + ", email=" + email + ", marriedStatus=" + marriedStatus
				+ ", pHouseNo=" + pHouseNo + ", pCity=" + pCity + ", pState=" + pState + ", pCountry=" + pCountry
				+ ", fatherName=" + fatherName + ", fatherNationality=" + fatherNationality + ", fatherPrevNationality="
				+ fatherPrevNationality + ", fatherBirthPlace=" + fatherBirthPlace + ", fatherBirthDate="
				+ fatherBirthDate + ", motherName=" + motherName + ", motherNationality=" + motherNationality
				+ ", motherPrevNationality=" + motherPrevNationality + ", motherBirthPlace=" + motherBirthPlace
				+ ", motherBirthDate=" + motherBirthDate + ", occupation=" + occupation + ", gardian=" + gardian
				+ ", business=" + business + ", designation=" + designation + ", address=" + address + ", mobile="
				+ mobile + ", prevOccupation=" + prevOccupation + "]";
	}
		
}
