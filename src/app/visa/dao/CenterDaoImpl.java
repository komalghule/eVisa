package app.visa.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Repository;

import app.visa.pojo.Country;
//import app.visa.pojo.Test;

@Repository
public class CenterDaoImpl implements CenterDao{
	
	@Autowired
	private MongoTemplate mongoTemplate;
	
	@Override
	public List<Country> getCenterList() {
/*		
		List<Test> t = mongoTemplate.findAll(Test.class);
		for (Test test : t) {
			System.out.println(test);
		}
		System.out.println("-------------------------------------------------------");
*/		return mongoTemplate.findAll(Country.class);
	}

}
