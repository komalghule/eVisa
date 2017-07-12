package app.visa.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import app.visa.dao.ApplicationDao;
import app.visa.pojo.Application;

@Service
@Transactional
public class ApplicationServiceImpl implements ApplicationService {

	@Autowired
	ApplicationDao dao;
	
	@Override
	public void saveApp(Application app) {
		dao.saveApp(app);	
	}

	@Override
	public Application getApplicationById(String id) {
		return dao.getApplicationById(id);
	}
}
