package app.visa.dao;

import java.util.List;

import com.mongodb.WriteResult;

import app.visa.pojo.Application;

public interface AdminDao {
	List<Application> getAllApplication();
	WriteResult updateApplicationStatus(String applicationId);
}
