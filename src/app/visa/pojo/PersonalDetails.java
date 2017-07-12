package app.visa.pojo;

import java.util.Date;

import org.springframework.data.mongodb.core.mapping.Field;
import org.springframework.format.annotation.DateTimeFormat;

public class PersonalDetails {
	@Field
	private String surname;
	@Field
	private String givenname;
	@Field
	private String previousname;
	@Field
	private String sex;
	@Field
	private String maritalStatus;
	@Field
	@DateTimeFormat(pattern="dd/MM/yyyy hh:mm:ss")
	private Date birth;
	@Field
	private String birthPlace;
	@Field
	private String birthCountry;
	@Field
	private String religion;
	@Field
	private String nationalId;
	@Field
	private String education;
	@Field
	private String visibleMarks;
	@Field
	private String nationality;
	@Field
	private String natinalityReason;
	@Field
	private boolean residentInFromCountry;
	
	public PersonalDetails() {
		this("","","","","",new Date(),"","","","","","","","",false);
	}
	
	public PersonalDetails(String surname, String givenname, String previousname, String sex, String maritalStatus,
			Date birth, String birthPlace, String birthCountry, String religion, String nationalId, String education,
			String visibleMarks, String nationality, String natinalityReason, boolean residentInFromCountry) {
		this.surname = surname;
		this.givenname = givenname;
		this.previousname = previousname;
		this.sex = sex;
		this.maritalStatus = maritalStatus;
		this.birth = birth;
		this.birthPlace = birthPlace;
		this.birthCountry = birthCountry;
		this.religion = religion;
		this.nationalId = nationalId;
		this.education = education;
		this.visibleMarks = visibleMarks;
		this.nationality = nationality;
		this.natinalityReason = natinalityReason;
		this.residentInFromCountry = residentInFromCountry;
	}

	public String getSurname() {
		return surname;
	}
	public void setSurname(String surname) {
		this.surname = surname;
	}
	public String getGivenname() {
		return givenname;
	}
	public void setGivenname(String givenname) {
		this.givenname = givenname;
	}
	public String getPreviousname() {
		return previousname;
	}
	public void setPreviousname(String previousname) {
		this.previousname = previousname;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getMaritalStatus() {
		return maritalStatus;
	}
	public void setMaritalStatus(String maritalStatus) {
		this.maritalStatus = maritalStatus;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public String getBirthPlace() {
		return birthPlace;
	}
	public void setBirthPlace(String birthPlace) {
		this.birthPlace = birthPlace;
	}
	public String getBirthCountry() {
		return birthCountry;
	}
	public void setBirthCountry(String birthCountry) {
		this.birthCountry = birthCountry;
	}
	public String getReligion() {
		return religion;
	}
	public void setReligion(String religion) {
		this.religion = religion;
	}
	public String getNationalId() {
		return nationalId;
	}
	public void setNationalId(String nationalId) {
		this.nationalId = nationalId;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public String getVisibleMarks() {
		return visibleMarks;
	}
	public void setVisibleMarks(String visibleMarks) {
		this.visibleMarks = visibleMarks;
	}
	public String getNationality() {
		return nationality;
	}
	public void setNationality(String nationality) {
		this.nationality = nationality;
	}
	public String getNatinalityReason() {
		return natinalityReason;
	}
	public void setNatinalityReason(String natinalityReason) {
		this.natinalityReason = natinalityReason;
	}
	public boolean getResidentInFromCountry() {
		return residentInFromCountry;
	}
	public void setResidentInFromCountry(boolean residentInFromCountry) {
		this.residentInFromCountry = residentInFromCountry;
	}
	@Override
	public String toString() {
		return "PersonalDetails [surname=" + surname + ", givenname=" + givenname + ", previousname=" + previousname
				+ ", sex=" + sex + ", maritalStatus=" + maritalStatus + ", birth=" + birth + ", birthPlace="
				+ birthPlace + ", birthCountry=" + birthCountry + ", religion=" + religion + ", nationalId="
				+ nationalId + ", education=" + education + ", visibleMarks=" + visibleMarks + ", nationality="
				+ nationality + ", natinalityReason=" + natinalityReason + ", residentInFromCountry="
				+ residentInFromCountry + "]";
	}
	
}
