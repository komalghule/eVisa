
package app.visa.pojo;

import org.springframework.data.mongodb.core.mapping.Field;

public class DownloadDocument {
	@Field
	private String category;
	@Field
	private String doc;
	@Field
	private String desc;
	@Field
	private String download;
	
	public DownloadDocument() {
		this("","","","");
	}
	
	
	public DownloadDocument(String category, String doc, String desc, String download) {
		this.category = category;
		this.doc = doc;
		this.desc = desc;
		this.download = download;
	}


	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getDoc() {
		return doc;
	}
	public void setDoc(String doc) {
		this.doc = doc;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public String getDownload() {
		return download;
	}
	public void setDownload(String download) {
		this.download = download;
	}
	@Override
	public String toString() {
		return "Doc [category=" + category + ", doc=" + doc + ", desc=" + desc + ", download=" + download + "]";
	}
	
	
}
