package app.visa.pojo;

import org.springframework.data.mongodb.core.mapping.Field;

public class OccupationDetails {
	@Field
	private String presentOccupation;
	@Field
	private String designation;
	@Field
	private String business; //or employer
	@Field
	private String address;
	@Field
	private String phone;
	@Field
	private String pastOccupation;
	@Field
	private boolean fromPoliceMilitary;
	
	public OccupationDetails() {
		this("","","","","","",false);
	}
	public OccupationDetails(String presentOccupation, String designation, String business, String address,
			String phone, String pastOccupation, boolean fromPoliceMilitary) {
		this.presentOccupation = presentOccupation;
		this.designation = designation;
		this.business = business;
		this.address = address;
		this.phone = phone;
		this.pastOccupation = pastOccupation;
		this.fromPoliceMilitary = fromPoliceMilitary;
	}
	public String getPresentOccupation() {
		return presentOccupation;
	}
	public void setPresentOccupation(String presentOccupation) {
		this.presentOccupation = presentOccupation;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public String getBusiness() {
		return business;
	}
	public void setBusiness(String business) {
		this.business = business;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPastOccupation() {
		return pastOccupation;
	}
	public void setPastOccupation(String pastOccupation) {
		this.pastOccupation = pastOccupation;
	}
	public boolean isFromPoliceMilitary() {
		return fromPoliceMilitary;
	}
	public void setFromPoliceMilitary(boolean fromPoliceMilitary) {
		this.fromPoliceMilitary = fromPoliceMilitary;
	}
	@Override
	public String toString() {
		return "OccupationDetails [presentOccupation=" + presentOccupation + ", designation=" + designation
				+ ", business=" + business + ", address=" + address + ", phone=" + phone + ", pastOccupation="
				+ pastOccupation + ", fromPoliceMilitary=" + fromPoliceMilitary + "]";
	}
	
}
