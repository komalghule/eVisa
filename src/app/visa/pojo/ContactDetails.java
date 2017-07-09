package app.visa.pojo;

import org.springframework.data.mongodb.core.mapping.Field;

public class ContactDetails {
	@Field
	private String presentAddr;
	@Field
	private String permanentAddr;
	@Field
	private String phone;
	@Field
	private String mobile;
	@Field
	private String email;
	
	public ContactDetails() {
		this("","","","","");
	}
	
	public ContactDetails(String presentAddr, String permanentAddr, String phone, String mobile, String email) {
		this.presentAddr = presentAddr;
		this.permanentAddr = permanentAddr;
		this.phone = phone;
		this.mobile = mobile;
		this.email = email;
	}

	public String getPresentAddr() {
		return presentAddr;
	}
	public void setPresentAddr(String presentAddr) {
		this.presentAddr = presentAddr;
	}
	public String getPermanentAddr() {
		return permanentAddr;
	}
	public void setPermanentAddr(String permanentAddr) {
		this.permanentAddr = permanentAddr;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
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
	@Override
	public String toString() {
		return "ContactDetails [presentAddr=" + presentAddr + ", permanentAddr=" + permanentAddr + ", phone=" + phone
				+ ", mobile=" + mobile + ", email=" + email + "]";
	}
}
