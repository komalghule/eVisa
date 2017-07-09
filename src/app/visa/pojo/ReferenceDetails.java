package app.visa.pojo;

import org.springframework.data.mongodb.core.mapping.Field;

public class ReferenceDetails {
	@Field
	private String country;
	@Field
	private String name;
	@Field
	private String address;
	@Field
	private String phone;
	
	public ReferenceDetails() {
		this("","","","");
	}
	public ReferenceDetails(String country, String name, String address, String phone) {
		this.country = country;
		this.name = name;
		this.address = address;
		this.phone = phone;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	@Override
	public String toString() {
		return "ReferenceDetails [country=" + country + ", name=" + name + ", address=" + address + ", phone=" + phone
				+ "]";
	}
	
}
