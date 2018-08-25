public class Schema_Example_4 {
    public List<String> names {set;get;}
    public Schema_Example_4(){
        names =new List<String>();
        // This will return all the objects in the salesforce in the form of map.
        // Object Name is the key and objectType is the value
        Map<String,Schema.SobjectType> objects =Schema.getGlobalDescribe();
        Set<String> objNames =objects.keySet();
        for(String s: objNames){
            // If we given object Name ,it will return objectType
            Schema.SObjectType obj=objects.get(s);
            Schema.DescribeSobjectResult result=obj.getDescribe();
            if(result.isCustom()==true){
                names.add(s);
            }
        }
        
    }
}