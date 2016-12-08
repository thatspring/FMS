package com.fms.Json;

import java.util.LinkedHashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ServletRequestAware;
import com.opensymphony.xwork2.ActionSupport;

public class JsonAction extends ActionSupport implements ServletRequestAware {
	private Map<String, String> seasonMap = new LinkedHashMap<String, String>();
	//Parameter from Jquery
	private String countryName;
	private String userMonth;
	
	public String execute() {
		System.out.println(userMonth);
		seasonMap.put("s1", "12");
		seasonMap.put("s2", "55");
		seasonMap.put("s3", "26");
		seasonMap.put("s4", "88");
		seasonMap.put("s5", "56");
		seasonMap.put("s6", "22");
		seasonMap.put("s7", "91");
		seasonMap.put("s8", "-100");
		setCountryName("China");
        return "success";
	}
	@Override
	public void setServletRequest(HttpServletRequest request) {
	}
	public Map<String, String> getSeasonMap() {
		return seasonMap;
	}
	public void setSeasonMap(Map<String, String> seasonMap) {
		this.seasonMap = seasonMap;
	}
	public String getCountryName() {
		return countryName;
	}
	public void setCountryName(String countryName) {
		this.countryName = countryName;
    }
	
	public String getUserMonth() {
		return userMonth;
	}
	public void setUserMonth(String userMonth) {
		this.userMonth = userMonth;
	}

}