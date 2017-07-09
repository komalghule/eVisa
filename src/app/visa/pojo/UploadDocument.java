package app.visa.pojo;

import java.util.Date;

import org.springframework.data.mongodb.core.mapping.Field;
import org.springframework.format.annotation.DateTimeFormat;

public class UploadDocument {
	@Field
	private String title;
	@Field
	private String path;
	@Field
	@DateTimeFormat(pattern="dd/MM/yyyy hh:mm:ss")
	private Date uploadedDate;
	
	public UploadDocument() {
		this("","",new Date());
	}
	public UploadDocument(String title, String path, Date uploadedDate) {
		this.title = title;
		this.path = path;
		this.uploadedDate = uploadedDate;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public Date getUploadedDate() {
		return uploadedDate;
	}
	public void setUploadedDate(Date uploadedDate) {
		this.uploadedDate = uploadedDate;
	}
	@Override
	public String toString() {
		return "Document [title=" + title + ", path=" + path + ", uploadedDate=" + uploadedDate + "]";
	}
}
