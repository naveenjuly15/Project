public class Map_Field_Dependency {
    public Map<String,List<String>> cityMap {set;get;}
    public List<SelectOption> cities  		{set;get;}
    public List<SelectOption> places		{set;get;}
    public String citySelected				{Set;get;}
    public Map_Field_Dependency(){
        // We have created a map with cityName as key and list of places as values 
        cityMap=new Map<String,List<String>>();
        
        // Create a list of Hyderabad places
        List<String> hplaces =new List<String>{'SRNagar','LBNagar'};
            
        // Create a list of banglore places 
        List<String> bplaces =new List<String>{'BTM','Marthali'};
            
        // Create a list of chenai places 
        List<String> cplaces =new List<String>{'TNagar','Chromepet'};
            
        // Put the city Name along with corresponsing places as values 
        cityMap.put('Hyd',hplaces);
        cityMap.put('Ban',bplaces);
        cityMap.put('Che',cplaces);
        
        // Create none option and add them to cities and places options 
        SelectOption n=new SelectOption('none','-None-');
        cities =new List<SelectOption>();
        places =new List<SelectOption>();
        cities.add(n);
        places.add(n);
        
        // Get all the keys from the map using keySet()
        Set<String> keys =cityMap.keySet();// Hyd,Ban,Che
        // Take one by one cityNames from the set and create new Options
        for(String s: keys){
            SelectOption op=new SelectOption(s,s); // s-Hyd : ItemLabel=Hyd ,ItemValue=Hyd
            cities.add(op);
        }
    }
    public void getData(){
        // When we ever getData is invoked remove all the options from the places .
        places.clear();
        // Add none option to the places.
        SelectOption n =new SelectOption('none','-None-');
        places.add(n);
        
        // If citySelected is not equals to none then fetch corresponding places.
        if(citySelected !='none'){
            // Fetch the corresponding places based on city Name selected
            List<String> myPlaces =cityMap.get(citySelected);
            for(String s: myPlaces){
                SelectOption op=new SelectOption(s,s);
                places.add(op);
            }
        }
    }
}