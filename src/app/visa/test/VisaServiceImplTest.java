package app.visa.test;

import static org.junit.Assert.assertTrue;
import java.util.List;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.support.GenericXmlContextLoader;

import app.visa.pojo.Visa;
import app.visa.service.VisaService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="file:WebContent/WEB-INF/spring4-servlet.xml", loader=GenericXmlContextLoader.class)
public class VisaServiceImplTest {
	@Autowired
	private VisaService visaService;
	@Test
	public void testGetVisa(){
		List<Visa> visaList = visaService.getVisaList();		
		System.out.println("------------------------ Visa List ----------------------------");
		for (Visa visa : visaList) {
			System.out.println(visa);
		}
		assertTrue("Visa Records Fetched", visaList.size() == 4);
	}
}
