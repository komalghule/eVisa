package app.visa.pojo;

import java.util.ArrayList;
import java.util.List;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.data.mongodb.core.mapping.Field;

@Document(collection = "visas")
public class Visa {
	@Id
	private String id;
	@Field
	private String category;
	@Field
	private List<Type> types;
	@Field
	private List<DownloadDocument> documents;
	@Field
	private List<String> purposes;
	public Visa() {
		this("","",new ArrayList<>(),new ArrayList<>());
	}
	public Visa(String id, String category, List<Type> types, List<DownloadDocument> documents) {
		this.id = id;
		this.category = category;
		this.types = types;
		this.documents = documents;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public List<Type> getTypes() {
		return types;
	}

	public void setTypes(List<Type> types) {
		this.types = types;
	}

	public List<DownloadDocument> getDocuments() {
		return documents;
	}

	public void setDocuments(List<DownloadDocument> documents) {
		this.documents = documents;
	}

	public List<String> getPurposes() {
		return purposes;
	}
	public void setPurposes(List<String> purposes) {
		this.purposes = purposes;
	}
	@Override
	public String toString() {
		return "Visa [id=" + id + ", category=" + category + ", types=" + types + ", documents=" + documents
				+ ", purposes=" + purposes + "]";
	}
}
