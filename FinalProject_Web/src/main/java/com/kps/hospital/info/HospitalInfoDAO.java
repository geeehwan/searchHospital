package com.kps.hospital.info;

import java.math.BigDecimal;

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
		try {
			// mapper에서 쓰는 변수만 set해주면 된다.
			String hour = req.getParameter("hour");
			String minute = req.getParameter("minute");
			System.out.println(hour);
			System.out.println(minute);
			String time = hour + minute;
			int time2 = Integer.parseInt(time); 
			hi.setVisitTime(new BigDecimal(time2));
			 System.out.println(time2);
			hi.setDutyname(req.getParameter("searchInput"));
			hi.setDutyaddr(req.getParameter("location"));
			
			if (Integer.parseInt(req.getParameter("ery")) == 1) {
				hi.setDutyeryn(new BigDecimal(Integer.parseInt(req.getParameter("ery"))));
			} else {
				hi.setDutyeryn(new BigDecimal(Integer.parseInt(req.getParameter("ern"))));
			}
			
			if (req.getParameter("yoil").equals("mon")) {
				return new HospitalInfos(ss.getMapper(HospitalMapper.class).searchHospitalName1(hi));
			} else if (req.getParameter("yoil").equals("tue")) {
				return new HospitalInfos(ss.getMapper(HospitalMapper.class).searchHospitalName2(hi));
			} else if (req.getParameter("yoil").equals("wed")) {
				return new HospitalInfos(ss.getMapper(HospitalMapper.class).searchHospitalName3(hi));
			} else if (req.getParameter("yoil").equals("thu")) {
				return new HospitalInfos(ss.getMapper(HospitalMapper.class).searchHospitalName4(hi));
			} else if (req.getParameter("yoil").equals("fri")) {
				return new HospitalInfos(ss.getMapper(HospitalMapper.class).searchHospitalName5(hi));
			} else if (req.getParameter("yoil").equals("sat")) {
				return new HospitalInfos(ss.getMapper(HospitalMapper.class).searchHospitalName6(hi));
			} else if (req.getParameter("yoil").equals("sun")) {
				return new HospitalInfos(ss.getMapper(HospitalMapper.class).searchHospitalName7(hi));
			} else {
				return new HospitalInfos(ss.getMapper(HospitalMapper.class).searchHospitalName8(hi));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return null;
	}
}
