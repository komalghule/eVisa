package app.visa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import app.visa.dao.VisaDao;
import app.visa.pojo.Visa;

@Service
@Transactional
public class VisaServiceImpl implements VisaService {

	
	@Autowired
	VisaDao dao;

	@Override
	public List<Visa> getVisaList() {
		
		return dao.getVisaList();
	}
}
