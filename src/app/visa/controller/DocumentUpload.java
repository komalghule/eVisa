package app.visa.controller;

import org.springframework.web.multipart.MultipartFile;

public class DocumentUpload {
	
	
	private MultipartFile file;
	
	public DocumentUpload() {
		
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
