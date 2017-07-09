package app.visa.test;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import app.visa.pojo.Country;
import app.visa.service.CenterService;

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
