package app.visa.pojo;

import org.springframework.data.mongodb.core.mapping.Field;

public class Type {
	@Field
	private String category;
	@Field
	private Validity validity;
	@Field
	private double fees;
	@Field
	private String desc;
	@Field
	private boolean biometric;
	
	public Type() {
		this("",new Validity(),0.0,"",false);
	}
	
	public Type(String category, Validity validity, double fees, String desc, boolean biometric) {
		this.category = category;
		this.validity = validity;
		this.fees = fees;
		this.desc = desc;
		this.biometric = biometric;
	}

	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public Validity getValidity() {
		return validity;
	}
	public void setValidity(Validity validity) {
		this.validity = validity;
	}
	public double getFees() {
		return fees;
	}
	public void setFees(double fees) {
		this.fees = fees;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public boolean isBiometric() {
		return biometric;
	}
	public void setBiometric(boolean biometric) {
		this.biometric = biometric;
	}
	@Override
	public String toString() {
		return "Type [category=" + category + ", validity=" + validity + ", fees=" + fees + ", desc=" + desc
				+ ", biometric=" + biometric + "]";
	}
	
}
