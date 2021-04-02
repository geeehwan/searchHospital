package com.kps.hospital.info;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HospitalInfoDAO {

	@Autowired
	private SqlSession ss;
	
	
	// 검색어 치면 찾아주는 메소드
	public HospitalInfos search(HttpServletRequest req, HospitalInfo hi) {
		System.out.println(hi.getDutyaddr());
		System.out.println(hi.getDutyname());
		System.out.println(hi.getDutytel1());
		System.out.println(hi.getDutyeryn());
		System.out.println(hi.getDutytime1s());
		System.out.println(hi.getDutytime1c());
		System.out.println(req.getParameter("yoil"));
		System.out.println(req.getParameter("hour"));
		System.out.println(req.getParameter("minute"));
		// return new HospitalInfos(ss.getMapper(HospitalMapper.class).searchHospitalName(hi));
		return null;
	}
}
