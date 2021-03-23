package com.kps.hospital.info;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HospitalInfo {

	@Autowired
	private SqlSession ss;

	// 파일을 가지고와서 디비에 넣고싶다
	public String fileToDB() {

		BufferedReader br = null;
		try {

			FileInputStream fis = new FileInputStream("/Users/yjson/Downloads/s_hospital.txt");
			InputStreamReader isr = new InputStreamReader(fis, "utf-8");
			br = new BufferedReader(isr);

			String line = null;
			StringBuffer sb = new StringBuffer(); // 이거 여기 필요한가?

			while ((line = br.readLine()) != null) {
				sb.append(line);
			}

			return sb.toString();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
		// br.close(); 언제해
	}
}