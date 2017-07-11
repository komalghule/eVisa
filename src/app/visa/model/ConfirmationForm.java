package app.visa.model;

public class ConfirmationForm {
	private String applicationFormId;
	private String applicantName;
	public ConfirmationForm() {
		this("","");
	}
	public ConfirmationForm(String applicationFormId, String applicantName) {
		this.applicationFormId = applicationFormId;
		this.applicantName = applicantName;
	}
	public String getApplicationFormId() {
		return applicationFormId;
	}
	public void setApplicationFormId(String applicationFormId) {
		this.applicationFormId = applicationFormId;
	}
	public String getApplicantName() {
		return applicantName;
	}
	public void setApplicantName(String applicantName) {
		this.applicantName = applicantName;
	}
	@Override
	public String toString() {
		return "ConfirmationForm [applicationFormId=" + applicationFormId + ", applicantName=" + applicantName + "]";
	}
}
