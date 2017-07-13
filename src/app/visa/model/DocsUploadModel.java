package app.visa.model;

public class DocsUploadModel {
	private String photo;
	private String doc1;
	private String doc2;
	private String doc3;
	private String doc4;
	private String doc5;
	private String doc6;
	
	
	public DocsUploadModel() {
		this("","","","","","","");
	}
	public DocsUploadModel(String photo, String doc1, String doc2, String doc3, String doc4, String doc5, String doc6) {
		this.photo = photo;
		this.doc1 = doc1;
		this.doc2 = doc2;
		this.doc3 = doc3;
		this.doc4 = doc4;
		this.doc5 = doc5;
		this.doc6 = doc6;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getDoc1() {
		return doc1;
	}
	public void setDoc1(String doc1) {
		this.doc1 = doc1;
	}
	public String getDoc2() {
		return doc2;
	}
	public void setDoc2(String doc2) {
		this.doc2 = doc2;
	}
	public String getDoc3() {
		return doc3;
	}
	public void setDoc3(String doc3) {
		this.doc3 = doc3;
	}
	public String getDoc4() {
		return doc4;
	}
	public void setDoc4(String doc4) {
		this.doc4 = doc4;
	}
	public String getDoc5() {
		return doc5;
	}
	public void setDoc5(String doc5) {
		this.doc5 = doc5;
	}
	public String getDoc6() {
		return doc6;
	}
	public void setDoc6(String doc6) {
		this.doc6 = doc6;
	}
	@Override
	public String toString() {
		return "DocsUploadModel [photo=" + photo + ", doc1=" + doc1 + ", doc2=" + doc2 + ", doc3=" + doc3 + ", doc4="
				+ doc4 + ", doc5=" + doc5 + ", doc6=" + doc6 + "]";
	}	
}
