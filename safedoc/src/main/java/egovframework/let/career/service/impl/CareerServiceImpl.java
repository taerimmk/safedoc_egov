package egovframework.let.career.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.let.career.service.Career;
import egovframework.let.career.service.CareerService;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;

@Service("CareerService")
public class CareerServiceImpl extends EgovAbstractServiceImpl implements
		CareerService {

	@Resource(name = "CareerDAO")
	private CareerDAO careerDAO;

	public List<Career> careerList(String cate) throws Exception {
		List<Career> list = careerDAO.careerList(cate);

		return list;
	}

}
