package com.kps.hospital;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kps.hospital.info.HospitalInfo;
import com.kps.hospital.info.HospitalInfoDAO;


@Controller
public class HomeController {
	
	
	@Autowired
	private HospitalInfoDAO hiDAO;
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpServletRequest req, HospitalInfo hi) {
		return "index";
	}
	
}
