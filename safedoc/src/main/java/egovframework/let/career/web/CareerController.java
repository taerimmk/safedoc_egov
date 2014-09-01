package egovframework.let.career.web;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.let.career.service.Career;
import egovframework.let.career.service.CareerService;

@Controller
public class CareerController {

	@Resource(name = "CareerService")
	private CareerService careerService;

	@RequestMapping("/career/career{cate}.do")
	public String careerList(@ModelAttribute("career") Career career,
			@PathVariable("cate") String cate, ModelMap model,
			HttpServletRequest request) throws Exception {

		List<Career> careerList = careerService.careerList(cate);
		
		model.addAttribute("career", careerList.get(0));
		model.addAttribute("careerList", careerList);

		return "career/career";
	}

}