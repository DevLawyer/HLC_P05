package beans;

import java.util.GregorianCalendar;

// STANDAR JAVA BEAN
public class Author{
    private String name = "Miguel María";
    private String surname = "Vázquez Martínez";
    private GregorianCalendar bornDate = new GregorianCalendar(1991, 3, 28);
    
    // SETTERS
    public void setName(String name){
        this.name = name;
    }
    
    public void setSurname(String surname){
        this.surname = surname;
    }
    
    public void setBornDate(GregorianCalendar bornDate){
        this.bornDate = bornDate;
    }
    
    // GETTERS
    public String getName(){
        return name;
    }
    
    public String getSurname(){
        return surname;
    }
    
    public GregorianCalendar getBornDate(){
        return bornDate;
    }
    
    public Author(){
        name = "Miguel María";
        surname = "Vázquez Martínez";
        bornDate = new GregorianCalendar(1991, 3, 28);
    }
    
    public static void main(String args[]) {
        Author autor = new Author();
    }
}
