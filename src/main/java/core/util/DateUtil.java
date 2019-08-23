/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package core.util;

import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

/**
 *
 * @author itsadeki
 */
public class DateUtil {
    
    public static String formatDate(Date date) {
        DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
        return dateFormat.format(date);
    }
    
    public static Date changeDate(Date date, String valueType, int value) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        
        switch(valueType) {
            case("YEAR"): 
                cal.add(Calendar.YEAR, value);
                break;
            case("MONTH"): 
                cal.add(Calendar.MONTH, value);
                break;
            case("DATE"): 
                cal.add(Calendar.DATE, value);
                break;
            case("HOUR"): 
                cal.add(Calendar.HOUR, value);
                break;
            case("MINUTE"): 
                cal.add(Calendar.MINUTE, value);
                break;
            case("SECOND"): 
                cal.add(Calendar.SECOND, value);
                break;
        }
        
        return cal.getTime();
    }

}
