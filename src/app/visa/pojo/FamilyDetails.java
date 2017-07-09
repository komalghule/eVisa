package app.visa.pojo;

import org.springframework.data.mongodb.core.mapping.Field;

public class FamilyDetails {
	@Field
	private String relation;
	@Field
	private String name;
	@Field
	private String nationality;
	@Field
	private String birthCountry;
	
	public FamilyDetails() {
		this("","","","");
	}
	public FamilyDetails(String relation, String name, String nationality, String birthCountry) {
		this.relation = relation;
		this.name = name;
		this.nationality = nationality;
		this.birthCountry = birthCountry;
	}
	public String getRelation() {
		return relation;
	}
	public void setRelation(String relation) {
		this.relation = relation;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNationality() {
		return nationality;
	}
	public void setNationality(String nationality) {
		this.nationality = nationality;
	}
	public String getBirthCountry() {
		return birthCountry;
	}
	public void setBirthCountry(String birthCountry) {
		this.birthCountry = birthCountry;
	}
	@Override
	public String toString() {
		return "FamilyDetails [relation=" + relation + ", name=" + name + ", nationality=" + nationality
				+ ", birthCountry=" + birthCountry + "]";
	}
	
}
