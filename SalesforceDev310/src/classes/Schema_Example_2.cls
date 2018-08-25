public class Schema_Example_2 {
    public List<String> fieldNames {set;get;}
    public Schema_Example_2(){
        fieldNames= new List<String>();
        /* Get the description about the object */
        Schema.DescribeSobjectResult result=Account.SobjectType.getDescribe();
        /* Get  the fields of the object in the form of the Map ,where object Name is the key 
         * and objectType is the value 
         */
        Map<String,Schema.SObjectField> fldMap =result.fields.getMap();
        Set<String> objNames =fldMap.keySet();
        fieldNames.addAll(objNames);
    }
}