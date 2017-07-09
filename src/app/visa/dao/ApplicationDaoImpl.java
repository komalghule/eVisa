package app.visa.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Repository;

import app.visa.pojo.Application;

@Repository
public class ApplicationDaoImpl implements ApplicationDao {

	@Autowired
	private MongoTemplate mongoTemplate;

	@Override
	public void saveApp(Application app) {
		mongoTemplate.save(app);
		//mongoTemplate.insert(app);
	
	}

}
