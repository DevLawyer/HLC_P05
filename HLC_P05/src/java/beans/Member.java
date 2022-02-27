package beans;

import java.util.GregorianCalendar;

public class Member {

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getFlagImage() {
        return flagImage;
    }

    public void setFlagImage(String flagImage) {
        this.flagImage = flagImage;
    }

    public int getContribution() {
        return contribution;
    }

    public void setContribution(int contribution) {
        this.contribution = contribution;
    }

    public GregorianCalendar getEntryDate() {
        return entryDate;
    }
    
    public void setEntryDate(GregorianCalendar entryDate) {
        this.entryDate = entryDate;
    }
    
    public Member(String name, String flagImage, int contribution, GregorianCalendar entryDate){
        this.name = name;
        this.flagImage = flagImage;
        this.contribution = contribution;
        this.entryDate = entryDate;
    }
    
    private String name = "";
    private String flagImage = "";
    private int contribution = 0;
    private GregorianCalendar entryDate;
      
}
