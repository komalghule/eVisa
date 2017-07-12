package app.visa.dao;

import app.visa.pojo.UploadDocument;

public interface UploadDocsDao {

	void upload(UploadDocument f);
	public UploadDocument findImage(String imgName);

}
