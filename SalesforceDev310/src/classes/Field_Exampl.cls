public class Field_Exampl {
    public Map<String,List<String>> cityMap {set;get;}
    public List<SelectOption> cities  		{set;get;}
    public List<SelectOption> places		{set;get;}
    public String selected					{set;get;}
    public Field_Exampl(){
        cityMap=new Map<String,List<String>>();
        cities =new List<SelectOption>();
        places =new List<SelectOption>();
        List<String> hplaces =new List<String>{'SRNagar','LBNagar'};
        List<String> bplaces =new List<String>{'Marthali','ECity'};
        cityMap.put('Hyd',hplaces);
        cityMap.put('Ban',bplaces);
        SelectOption n=new SelectOption('none','-None-');
        cities.add(n);
        places.add(n);
        for(String s:cityMap.keySet()){
            SelectOption op=new SelectOption(s,s);
            cities.add(op);
        }
    }
    public void getData(){
         places.clear();
         SelectOption n=new SelectOption('none','-None-');
         places.add(n);
        if(selected!='none'){
            List<String> myList=cityMap.get(selected);
            for(String s:myList){
                SelectOption op=new SelectOption(s,s);
                places.add(op);
            }
        }
    }
}