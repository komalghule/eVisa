package app.visa.pojo;


import org.springframework.data.mongodb.core.mapping.Field;

public class Center {
	@Field
	private String city;
	@Field
	private String address;
	@Field
	private String contactno;
	public Center() {
		this("","","");
	}
	
	public Center(String city, String address, String contactno) {
		this.city = city;
		this.address = address;
		this.contactno = contactno;
	}

	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getContactno() {
		return contactno;
	}
	public void setContactno(String contactno) {
		this.contactno = contactno;
	}
	@Override
	public String toString() {
		return "Center [city=" + city + ", address=" + address + ", contactno=" + contactno + "]";
	}
	
}
