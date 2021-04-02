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
			String hour = req.getParameter("hour");
			String minute = req.getParameter("minute");
			
			String time = hour + minute;
			int time2 = Integer.parseInt(time);
			hi.setVisitTime(new BigDecimal(time2));
			hi.setDutyname(req.getParameter("dutyname"));
			
			
			if (req.getParameter("yoil") == "mon") {
				return new HospitalInfos(ss.getMapper(HospitalMapper.class).searchHospitalName1(hi));
			} else if (req.getParameter("yoil") == "tue") {
				return new HospitalInfos(ss.getMapper(HospitalMapper.class).searchHospitalName2(hi));
			} else if (req.getParameter("yoil") == "wed") {
				return new HospitalInfos(ss.getMapper(HospitalMapper.class).searchHospitalName3(hi));
			} else if (req.getParameter("yoil") == "thu") {
				return new HospitalInfos(ss.getMapper(HospitalMapper.class).searchHospitalName4(hi));
			} else if (req.getParameter("yoil") == "fri") {
				return new HospitalInfos(ss.getMapper(HospitalMapper.class).searchHospitalName5(hi));
			} else if (req.getParameter("yoil") == "sat") {
				return new HospitalInfos(ss.getMapper(HospitalMapper.class).searchHospitalName6(hi));
			} else if (req.getParameter("yoil") == "sun") {
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
