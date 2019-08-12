package common;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Util {
		
	public static String isTwo(String msg) {
		return (msg.length()<2)?"0"+msg:msg;
	}
	
	public Date setTodates(String mdate) {
		
		Date date = null;
		
		try {
			date = new SimpleDateFormat("yyyy-MM-dd 00:00:00").parse(mdate);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		
		return date;
		
	}
	
	public static String dateformat(Date date) {
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		String res = format.format(date);

		
		return res;
	}

}
