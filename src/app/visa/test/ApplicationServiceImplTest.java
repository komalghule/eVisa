package app.visa.test;

import static org.junit.Assert.assertTrue;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.support.GenericXmlContextLoader;

import app.visa.pojo.Application;
import app.visa.service.ApplicationService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="file:WebContent/WEB-INF/spring4-servlet.xml", loader=GenericXmlContextLoader.class)
public class ApplicationServiceImplTest {
	@Autowired
	private ApplicationService service;
	
	@Test
	public void testSaveAppication(){
		Application app = new Application();
		service.saveApp(app);
		System.out.println(app);
		assertTrue("testSaveAppication()", app.getId()!=null && !app.getId().isEmpty());
		
	}
	
	@Test
	public void testSaveAppication2(){
		Application app2 = new Application();
		service.saveApp(app2);
		System.out.println(app2);
		assertTrue("testSaveAppication2()", app2.getId()!=null && !app2.getId().isEmpty());
		
	}
	
}
