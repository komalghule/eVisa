package app.visa.pojo;

import java.util.Date;

import org.springframework.data.mongodb.core.mapping.Field;

public class VisaDetails {
	@Field
	private String fromCountry;
	@Field
	private String indianMission;
	@Field
	private String nationality;
	@Field
	private Date birthDate;
	@Field
	private String email;
	@Field
	private Date arrivalDate;
	@Field
	private String visaType;
	@Field
	private String purpose;
	@Field
	private int visaPeriod;
	@Field
	private int entries;
	@Field
	private Date journeyDate;
	@Field
	private String arrivalPort;
	@Field
	private String exitPort;
	@Field
	private String visitPurpose;
	public VisaDetails() {
		this("","","",new Date(),"",new Date(),"","",0,0,new Date(),"","","");
	}
	public VisaDetails(String fromCountry, String indianMission, String nationality, Date birthDate, String email,
			Date arrivalDate, String visaType, String purpose, int visaPeriod, int entries, Date journeyDate,
			String arrivalPort, String exitPort, String visitPurpose) {
		this.fromCountry = fromCountry;
		this.indianMission = indianMission;
		this.nationality = nationality;
		this.birthDate = birthDate;
		this.email = email;
		this.arrivalDate = arrivalDate;
		this.visaType = visaType;
		this.purpose = purpose;
		this.visaPeriod = visaPeriod;
		this.entries = entries;
		this.journeyDate = journeyDate;
		this.arrivalPort = arrivalPort;
		this.exitPort = exitPort;
		this.visitPurpose = visitPurpose;
	}

	public String getFromCountry() {
		return fromCountry;
	}

	public void setFromCountry(String fromCountry) {
		this.fromCountry = fromCountry;
	}

	public String getIndianMission() {
		return indianMission;
	}

	public void setIndianMission(String indianMission) {
		this.indianMission = indianMission;
	}

	public String getNationality() {
		return nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
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

	public int getVisaPeriod() {
		return visaPeriod;
	}

	public void setVisaPeriod(int visaPeriod) {
		this.visaPeriod = visaPeriod;
	}

	public int getEntries() {
		return entries;
	}

	public void setEntries(int entries) {
		this.entries = entries;
	}

	public Date getJourneyDate() {
		return journeyDate;
	}

	public void setJourneyDate(Date journeyDate) {
		this.journeyDate = journeyDate;
	}

	public String getArrivalPort() {
		return arrivalPort;
	}

	public void setArrivalPort(String arrivalPort) {
		this.arrivalPort = arrivalPort;
	}

	public String getExitPort() {
		return exitPort;
	}

	public void setExitPort(String exitPort) {
		this.exitPort = exitPort;
	}

	public String getVisitPurpose() {
		return visitPurpose;
	}

	public void setVisitPurpose(String visitPurpose) {
		this.visitPurpose = visitPurpose;
	}

	@Override
	public String toString() {
		return "VisaDetails [fromCountry=" + fromCountry + ", indianMission=" + indianMission + ", nationality="
				+ nationality + ", birthDate=" + birthDate + ", email=" + email + ", arrivalDate=" + arrivalDate
				+ ", visaType=" + visaType + ", purpose=" + purpose + ", visaPeriod=" + visaPeriod + ", entries="
				+ entries + ", journeyDate=" + journeyDate + ", arrivalPort=" + arrivalPort + ", exitPort=" + exitPort
				+ ", visitPurpose=" + visitPurpose + "]";
	}

}
