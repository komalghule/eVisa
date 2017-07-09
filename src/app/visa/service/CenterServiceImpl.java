package app.visa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import app.visa.dao.CenterDao;
import app.visa.pojo.Country;

@Service
@Transactional
public class CenterServiceImpl implements CenterService{

	@Autowired
	CenterDao dao;
	@Override
	public List<Country> getCountryList() {
		
		return dao.getCenterList();
	}

}
