package app.visa.model;

public class ShowFormLoginModel {
	private String id;
	private String pno;
	
	public ShowFormLoginModel() {
		this("","");
	}
	
	public ShowFormLoginModel(String id, String pno) {
		this.id = id;
		this.pno = pno;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPno() {
		return pno;
	}

	public void setPno(String pno) {
		this.pno = pno;
	}

	@Override
	public String toString() {
		return "ShowFormLoginModel [id=" + id + ", pno=" + pno + "]";
	}
	
	
	
}
