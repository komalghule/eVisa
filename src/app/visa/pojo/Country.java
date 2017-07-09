package app.visa.pojo;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.data.mongodb.core.mapping.Field;

@Document(collection="countries")
public class Country implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	private String id;
	@Field
	private String country;
	@Field
	private String currency;
	@Field("center")
    private List<Center> centers;
	public Country() {
		this("","","",new ArrayList<>());
	}
	
	public Country(String id, String country, String currency, List<Center> centers) {
		this.id = id;
		this.country = country;
		this.currency = currency;
		this.centers = centers;
	}

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getCurrency() {
		return currency;
	}
	public void setCurrency(String currency) {
		this.currency = currency;
	}
	public List<Center> getCenters() {
		return centers;
	}
	public void setCenters(List<Center> centers) {
		this.centers = centers;
	}
	@Override
	public String toString() {
		return "Centers [id=" + id + ", country=" + country + ", currency=" + currency + ", centers=" + centers + "]";
	}

}
