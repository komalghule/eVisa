package app.visa.pojo;

import org.springframework.data.mongodb.core.mapping.Field;

public class Validity {
	@Field
	private double duration;
	@Field
	private String unit;
	
	public Validity() {
		this(0.0,"");
	}
	
	public Validity(double duration, String unit) {
		this.duration = duration;
		this.unit = unit;
	}

	public double getDuration() {
		return duration;
	}
	public void setDuration(double duration) {
		this.duration = duration;
	}
	public String getUnit() {
		return unit;
	}
	public void setUnit(String unit) {
		this.unit = unit;
	}
	@Override
	public String toString() {
		return duration + " " + unit;
	}
}
