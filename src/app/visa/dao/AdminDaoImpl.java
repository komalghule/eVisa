package app.visa.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.CriteriaDefinition;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.stereotype.Repository;

import com.mongodb.WriteResult;

import app.visa.pojo.Admin;
import app.visa.pojo.Application;

@Repository
public class AdminDaoImpl implements AdminDao {
	@Autowired
	private MongoTemplate mongoTemplate;

	@Override
	public List<Application> getAllApplication() {
		return mongoTemplate.findAll(Application.class);
	}

	@Override
	public WriteResult updateApplicationStatus(String applicationId) {
		return mongoTemplate.updateFirst(new Query(Criteria.where("id").is(applicationId)),
				Update.update("status", "Pending"), Application.class);		
	}

	@Override
	public Admin validateAdmin(String username,String password) {
		//Query query = new Query(Criteria.where("username").lt(username).and("password").gt(password));
		Query query = new Query(Criteria.where("username").is(username).and("password").is(password));
		/*where("age").lt(50).and("accounts.balance").gt(1000.00d)*/
		System.out.println("in admin dao");
		return mongoTemplate.findOne(query, Admin.class);
	}

	@Override
	public void removeApplication(String id) {
		Query query = new Query(Criteria.where("id").is(id));
		mongoTemplate.remove(query, Application.class);		
	}

}
