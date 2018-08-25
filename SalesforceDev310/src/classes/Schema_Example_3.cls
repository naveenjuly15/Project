public class Schema_Example_3 {
    public List<String> options {set;get;}
    public Schema_Example_3(){
        options =new List<String>();
        /* Get the description of industry field from the account */
        Schema.DescribeFieldResult result=Account.Industry.getDescribe();
        // This method will return all the options in the given picklist field.
        // Label  and value
        List<Schema.PicklistEntry> values=result.getPickListValues();
        for(Schema.PickListEntry p:values){
            options.add('Label:'+p.getLabel()+'--Value :'+p.getValue());
        }
    }
}