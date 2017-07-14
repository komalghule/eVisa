package app.visa.dao;

import java.util.List;

import com.mongodb.WriteResult;

import app.visa.pojo.Admin;
import app.visa.pojo.Application;

public interface AdminDao {
	List<Application> getAllApplication();
	WriteResult updateApplicationStatus(String applicationId);
	Admin validateAdmin(String username,String password);
}
