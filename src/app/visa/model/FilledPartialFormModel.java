package app.visa.model;

public class FilledPartialFormModel {
	
	private String applicationFormId;
	private String passportNo;
	
	public FilledPartialFormModel() {
		this("","");
	}
	
	public FilledPartialFormModel(String applicationFormId, String passportNo) {
		this.applicationFormId = applicationFormId;
		this.passportNo = passportNo;
	}
	
	public String getApplicationFormId() {
		return applicationFormId;
	}
	
	public void setApplicationFormId(String applicationFormId) {
		this.applicationFormId = applicationFormId;
	}
	
	public String getPassportNo() {
		return passportNo;
	}
	
	public void setPassportNo(String passportNo) {
		this.passportNo = passportNo;
	}
	
	@Override
	public String toString() {
		return "FilledPartialFormModel [applicationFormId=" + applicationFormId + ", passportNo=" + passportNo + "]";
	}	
}
