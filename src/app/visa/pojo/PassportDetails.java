package app.visa.pojo;

import java.util.Date;

import org.springframework.data.mongodb.core.mapping.Field;
import org.springframework.format.annotation.DateTimeFormat;

public class PassportDetails {
	@Field
	private String passportNo;
	@Field
	private String issuePlace;
	@Field
	@DateTimeFormat(pattern="dd/MM/yyyy hh:mm:ss")
	private Date issueDate;
	@Field
	@DateTimeFormat(pattern="dd/MM/yyyy hh:mm:ss")
	private Date expiryDate;
	@Field
	private String passportCountry;
	
	public PassportDetails() {
		this("","",new Date(),new Date(),"");
	}
	public PassportDetails(String passportNo, String issuePlace, Date issueDate, Date expiryDate,
			String passportCountry) {
		this.passportNo = passportNo;
		this.issuePlace = issuePlace;
		this.issueDate = issueDate;
		this.expiryDate = expiryDate;
		this.passportCountry = passportCountry;
	}
	public String getPassportNo() {
		return passportNo;
	}
	public void setPassportNo(String passportNo) {
		this.passportNo = passportNo;
	}
	public String getIssuePlace() {
		return issuePlace;
	}
	public void setIssuePlace(String issuePlace) {
		this.issuePlace = issuePlace;
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
	public String getPassportCountry() {
		return passportCountry;
	}
	public void setPassportCountry(String passportCountry) {
		this.passportCountry = passportCountry;
	}
	@Override
	public String toString() {
		return "PassportDetails [passportNo=" + passportNo + ", issuePlace=" + issuePlace + ", issueDate=" + issueDate
				+ ", expiryDate=" + expiryDate + ", passportCountry=" + passportCountry + "]";
	}
	
	
}

