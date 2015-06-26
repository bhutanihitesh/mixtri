package com.mixtri.utils;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class MixtriUtils{


	public static boolean isValidEmailAddress(String email) {
		String ePattern = "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\])|(([a-zA-Z\\-0-9]+\\.)+[a-zA-Z]{2,}))$";
		Pattern p = Pattern.compile(ePattern);
		Matcher m = p.matcher(email);
		return m.matches();
	}

	public static boolean isValidPhonenumber(String contact){

		Pattern pattern = Pattern.compile("\\+\\d{2}-\\d{10}");

		Matcher matcher = pattern.matcher(contact);
		return matcher.matches();	      
	}
}