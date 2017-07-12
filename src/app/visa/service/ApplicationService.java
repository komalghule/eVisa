package app.visa.service;

import app.visa.pojo.Application;

public interface ApplicationService {
	public void saveApp(Application app);

	public Application getApplicationById(String id);
}
