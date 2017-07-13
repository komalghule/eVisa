package app.visa.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class MakeScheduleModel {
	private String mission;
	@DateTimeFormat(pattern="dd/MM/yyyy")
	private Date date;
	private String time;
	
	public MakeScheduleModel() {
		this("",new Date(),"");
	}
	public MakeScheduleModel(String mission, Date date, String time) {
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
		return "MakeScheduleModel [mission=" + mission + ", date=" + date + ", time=" + time + "]";
	}
}
