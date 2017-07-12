package app.visa.model;

import org.springframework.web.multipart.MultipartFile;

public class DocumentUpload {
	
	private String applicationFromId;
	private MultipartFile file;
	
	public DocumentUpload() {
		
	}
	public String getApplicationFromId() {
		return applicationFromId;
	}
	public void setApplicationFromId(String applicationFromId) {
		this.applicationFromId = applicationFromId;
	}
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
	public String toString() {
		if(file==null)
			return null;
		return String.format("[MultipartFile => Name: %s, Type: %s, Size: %d KB]", file.getOriginalFilename(), file.getContentType(), file.getSize()/1024);
	}

}
