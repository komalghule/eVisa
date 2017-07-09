package app.visa.dao;

import java.util.List;

import app.visa.pojo.Visa;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class VisaDaoImpl implements VisaDao {

	@Autowired
	private MongoTemplate mongoTemplate;
	
	@Override
	public List<Visa> getVisaList() {
		return mongoTemplate.findAll(Visa.class);
	}

}
