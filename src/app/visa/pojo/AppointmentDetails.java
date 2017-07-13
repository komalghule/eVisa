package app.visa.pojo;

import java.util.Date;

import org.springframework.data.mongodb.core.mapping.Field;
import org.springframework.format.annotation.DateTimeFormat;

public class AppointmentDetails {
	@Field
	private String mission;
	@Field
	@DateTimeFormat(pattern="dd/MM/yyyy hh:mm:ss")
	private Date date;
	@Field
	private String time;
	
	public AppointmentDetails() {
		this("",new Date(),"");
	}
	
	public AppointmentDetails(String mission, Date date, String time) {
		this.mission = mission;
		this.date = date;
		this.time = time;
	}

	public String getMission() {
		return mission;
	}

	public void setMission(String mission) {
		this.mission = mission;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	@Override
	public String toString() {
		return "AppointmentDetails [mission=" + mission + ", date=" + date + ", time=" + time + "]";
	}
}
