
package beans;

import java.time.LocalDate;
import java.time.Period;
import java.util.Calendar;
import java.util.GregorianCalendar;

public class AgeANDzodiac {

    public static int calculateAge(GregorianCalendar bornDate){
        int year = bornDate.get(Calendar.YEAR);
        int month = bornDate.get(Calendar.MONTH);
        int day = bornDate.get(Calendar.DAY_OF_MONTH);
        return Period.between(LocalDate.of(year, month, day), LocalDate.now()).getYears();
    }
    
    public static String getZodiac(GregorianCalendar bornDate){
        String zodiac = "";
        int month = bornDate.get(Calendar.MONTH);
        int day = bornDate.get(Calendar.DAY_OF_MONTH);

        switch(month){
            case 1:
                if(day >= 21){
                    zodiac = "Acuario";
                } else {
                    zodiac = "Capricornio";
                }
                break;
            case 2:
                if(day >= 20){
                    zodiac = "Piscis";
                } else {
                    zodiac = "Acuario";
                }
                break;
            case 3:
                if(day >= 21){
                    zodiac = "Aries";
                } else {
                    zodiac = "Piscis";
                }
                break;
            case 4:
                if(day >= 21){
                    zodiac = "Tauro";
                } else {
                    zodiac = "Aries";
                }
                break;
            case 5:
                if(day >= 21){
                    zodiac = "Gemini";
                } else {
                    zodiac = "Tauro";
                }
                break;
            case 6:
                if(day >= 22){
                    zodiac = "Cáncer";
                } else {
                    zodiac = "Gemini";
                }
                break;
            case 7:
                if(day >= 22){
                    zodiac = "Leo";
                } else {
                    zodiac = "Cáncer";
                }
                break;
            case 8:
                if(day >= 24){
                    zodiac = "Virgo";
                } else {
                    zodiac = "Leo";
                }
                break;
            case 9:
                if(day >= 24){
                    zodiac = "Libra";
                } else {
                    zodiac = "Virgo";
                }
                break;
            case 10:
                if(day >= 23){
                    zodiac = "Escorpio";
                } else {
                    zodiac = "Libra";
                }
                break;
            case 11:
                if(day >= 21){
                    zodiac = "Sagitario";
                } else {
                    zodiac = "Escorpio";
                }
                break;
            case 12:
                if(day >= 22){
                    zodiac = "Capricornio";
                } else {
                    zodiac = "Sagitario";
                }
        }
        
        return zodiac;
    }
}
