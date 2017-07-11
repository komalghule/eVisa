package app.visa.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class PassportFormDetail {
	private String applicationFormId;
	private String lastName;
	private String firstName;
	private String prevName;
	@DateTimeFormat(pattern="dd/MM/yyyy")
	private Date birthDate;
	private String birthCity;
	private String birthCountry;
	private String gender;
	private String nationalId;
	private String religion;
	private String visibleIdMark;
	private String qualification;
	private boolean twoYearsMoreLiveForFromCountry;
	private String passportNo;
	private String issueCity;
	private String issueCountry;
	@DateTimeFormat(pattern="dd/MM/yyyy")
	private Date issueDate;
	@DateTimeFormat(pattern="dd/MM/yyyy")
	private Date expiryDate;
	
	public PassportFormDetail() {
		this("","","","",new Date(),"","","","","","","",false,"","","",new Date(),new Date());
	}
	
	public PassportFormDetail(String applicationFormId, String lastName, String firstName, String prevName, Date birthDate,
			String birthCity, String birthCountry, String gender, String nationalId, String religion,
			String visibleIdMark, String qualification, boolean isTwoYearsMoreLiveForFromCountry, String passportNo,
			String issueCity, String issueCountry, Date issueDate, Date expiryDate) {
		this.applicationFormId = applicationFormId;
		this.lastName = lastName;
		this.firstName = firstName;
		this.prevName = prevName;
		this.birthDate = birthDate;
		this.birthCity = birthCity;
		this.birthCountry = birthCountry;
		this.gender = gender;
		this.nationalId = nationalId;
		this.religion = religion;
		this.visibleIdMark = visibleIdMark;
		this.qualification = qualification;
		this.twoYearsMoreLiveForFromCountry = isTwoYearsMoreLiveForFromCountry;
		this.passportNo = passportNo;
		this.issueCity = issueCity;
		this.issueCountry = issueCountry;
		this.issueDate = issueDate;
		this.expiryDate = expiryDate;
	}

	public String getApplicationFormId() {
		return applicationFormId;
	}

	public void setApplicationFormId(String applicationFormId) {
		this.applicationFormId = applicationFormId;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public Date getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}

	public String getBirthCity() {
		return birthCity;
	}

	public void setBirthCity(String birthCity) {
		this.birthCity = birthCity;
	}

	public String getBirthCountry() {
		return birthCountry;
	}

	public void setBirthCountry(String birthCountry) {
		this.birthCountry = birthCountry;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getNationalId() {
		return nationalId;
	}

	public void setNationalId(String nationalId) {
		this.nationalId = nationalId;
	}

	public String getReligion() {
		return religion;
	}

	public void setReligion(String religion) {
		this.religion = religion;
	}

	public String getVisibleIdMark() {
		return visibleIdMark;
	}

	public void setVisibleIdMark(String visibleIdMark) {
		this.visibleIdMark = visibleIdMark;
	}

	public String getQualification() {
		return qualification;
	}

	public void setQualification(String qualification) {
		this.qualification = qualification;
	}

	public boolean getTwoYearsMoreLiveForFromCountry() {
		return twoYearsMoreLiveForFromCountry;
	}

	public void setTwoYearsMoreLiveForFromCountry(boolean isTwoYearsMoreLiveForFromCountry) {
		this.twoYearsMoreLiveForFromCountry = isTwoYearsMoreLiveForFromCountry;
	}

	public String getPassportNo() {
		return passportNo;
	}

	public void setPassportNo(String passportNo) {
		this.passportNo = passportNo;
	}

	public String getIssueCity() {
		return issueCity;
	}

	public void setIssueCity(String issueCity) {
		this.issueCity = issueCity;
	}

	public String getIssueCountry() {
		return issueCountry;
	}

	public void setIssueCountry(String issueCountry) {
		this.issueCountry = issueCountry;
	}
	public Date getIssueDate() {
		return issueDate;
	}
	public void setIssueDate(Date issueDate) {
		this.issueDate = issueDate;
	}
	public Date getExpiryDate() {
		return expiryDate;
	}
	public void setExpiryDate(Date expiryDate) {
		this.expiryDate = expiryDate;
	}
	public String getPrevName() {
		return prevName;
	}
	public void setPrevName(String prevName) {
		this.prevName = prevName;
	}
	@Override
	public String toString() {
		return "PassportFormDetail [applicationFormId=" + applicationFormId + ", lastName=" + lastName + ", firstName="
				+ firstName + ", prevName=" + prevName + ", birthDate=" + birthDate + ", birthCity=" + birthCity
				+ ", birthCountry=" + birthCountry + ", gender=" + gender + ", nationalId=" + nationalId + ", religion="
				+ religion + ", visibleIdMark=" + visibleIdMark + ", qualification=" + qualification
				+ ", twoYearsMoreLiveForFromCountry=" + twoYearsMoreLiveForFromCountry + ", passportNo=" + passportNo
				+ ", issueCity=" + issueCity + ", issueCountry=" + issueCountry + ", issueDate=" + issueDate
				+ ", expiryDate=" + expiryDate + "]";
	}
	
}
