package com.kps.hospital.info;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HospitalInfoController {
	
	@Autowired
	private HospitalInfoDAO hiDAO;

	@RequestMapping(value = "/list.get", method = RequestMethod.GET)
	public String getList(HttpServletRequest req, HttpServletResponse res, HospitalInfo hi) {
		hiDAO.search(req, hi);
		req.setAttribute("contentPage", "list.jsp");
		return "index";
	}
	
	// list에서 클릭하면 detailInfo 보여줌
	@RequestMapping(value = "/detailInfo.go", method = RequestMethod.GET)
	public String showDetailInfo(HttpServletRequest req, HttpServletResponse res, HospitalInfo hi) {
		req.setAttribute("contentPage", "detailInfo.jsp");
		return "index";
	}
	

	
	
	
	
}
