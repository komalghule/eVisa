package app.visa.test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.support.GenericXmlContextLoader;

import app.visa.pojo.Country;
import app.visa.service.CenterService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="file:WebContent/WEB-INF/spring4-servlet.xml", loader=GenericXmlContextLoader.class)
public class CenterServiceImplTest {
	@Autowired
	@Qualifier("centerServiceImpl")
	private CenterService centerService;

	@Test
	public void testGetCnters(){
		List<Country> cList = centerService.getCountryList();		
		for (Country centers : cList) {
			System.out.println("-----------------------------centersList--------------------------------");
			System.out.println(centers);
		}
	}

}
