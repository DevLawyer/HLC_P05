package beans;

import java.util.GregorianCalendar;
import java.util.HashMap;

public class MapMembers {
    
    private HashMap<Integer, Member> members = new HashMap<Integer, Member>();
    
    public MapMembers(){        
        members.put(1, new Member("España", "spain.jpg", 169, new GregorianCalendar(1975,3,28)));
        members.put(2, new Member("Alemania", "germany.jpg", 169, new GregorianCalendar(1975,3,28)));
        members.put(3, new Member("Francia", "france.jpg", 169, new GregorianCalendar(1975,3,28)));
        members.put(4, new Member("Noruega", "norway.jpg", 169, new GregorianCalendar(1975,3,28)));
        members.put(5, new Member("Italia", "italy.jpg", 169, new GregorianCalendar(1975,3,28)));
        members.put(6, new Member("Irlanda", "ireland.jpg", 169, new GregorianCalendar(1975,3,28)));
    }
    
    public HashMap getMembers(){
        return members;
    }
}
