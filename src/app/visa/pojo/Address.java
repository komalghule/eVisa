package app.visa.pojo;

import org.springframework.data.mongodb.core.mapping.Field;

public class Address {
	@Field
	private String address1;
	@Field
	private String address2;
	@Field
	private String state;
	@Field
	private String pin;
	@Field
	private String phone;
	
	public Address() {
		this("","","","","");
	}
	public Address(String address1, String address2, String state, String pin, String phone) {
		this.address1 = address1;
		this.address2 = address2;
		this.state = state;
		this.pin = pin;
		this.phone = phone;
	}
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getPin() {
		return pin;
	}
	public void setPin(String pin) {
		this.pin = pin;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	@Override
	public String toString() {
		return "Address [address1=" + address1 + ", address2=" + address2 + ", state=" + state + ", pin=" + pin
				+ ", phone=" + phone + "]";
	}
}

