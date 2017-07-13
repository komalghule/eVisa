package app.visa.model;

public class SetStatusModel {
	private String status;

	public SetStatusModel() {
		this("");
	}
	
	public SetStatusModel(String status) {
		this.status = status;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "SetStatusModel [status=" + status + "]";
	}
	
}
