package egovframework.let.career.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.let.career.service.Career;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("CareerDAO")
public class CareerDAO extends EgovAbstractDAO {

	@SuppressWarnings("unchecked")
	public List<Career> careerList(String cate) throws Exception {
		return (List<Career>) list("CareerDAO.careerList", cate);
	}

}
