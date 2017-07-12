package app.visa.service;

import java.util.List;

import com.mongodb.WriteResult;

import app.visa.pojo.Application;

public interface AdminService {
	List<Application> getAllApplication();
	WriteResult updateApplicationStatus(String applicationId);
}
