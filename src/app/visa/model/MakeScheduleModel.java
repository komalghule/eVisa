package app.visa.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class MakeScheduleModel {
	private String mission;
	@DateTimeFormat(pattern="dd/MM/yyyy")
	private Date date;
	private String time;
	private String meridiem;
	
	public MakeScheduleModel() {
		this("",new Date(),"","");
	}
	public MakeScheduleModel(String mission, Date date, String time,String meridiem) {
		this.mission = mission;
		this.date = date;
		this.time = time;
		this.meridiem = meridiem;
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
	
	public String getMeridiem() {
		return meridiem;
	}
	public void setMeridiem(String meridiem) {
		this.meridiem = meridiem;
	}
	@Override
	public String toString() {
		return "MakeScheduleModel [mission=" + mission + ", date=" + date + ", time=" + time + ", meridiem=" + meridiem
				+ "]";
	}

}
