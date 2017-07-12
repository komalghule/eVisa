package app.visa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.mongodb.WriteResult;

import app.visa.dao.AdminDao;
import app.visa.pojo.Application;

@Repository
@Transactional
public class AdminServiceImpl implements AdminService {

	@Autowired
	AdminDao dao;
	
	@Override
	public List<Application> getAllApplication() {
		return dao.getAllApplication();
	}

	@Override
	public WriteResult updateApplicationStatus(String applicationId) {
		return dao.updateApplicationStatus(applicationId);
	}

}
