public class Multi_Select_Example {
    public List<SelectOption> leftSide 		{set;get;}
    public List<SelectOption> rightSide 	{set;get;}
    public Set<String> selected 			{set;get;} // This will contain names of those fields which are selected
    public Set<String> notSelected			{Set;get;} // This will contain names of those fields which are notSelected
    public List<String> addFields 			{set;get;}
    public List<String> removeFields		{set;get;}
    public Multi_Select_Example(){
        addFields =new List<string>();
        removeFields=new List<String>();
        leftSide =new List<SelectOption>();
        rightSide =new List<SelectOption>();
        selected =new Set<String>();
        notSelected=new Set<String>();
        SelectOption none=new SelectOption('none','-None-');
        leftSide.add(none);
        rightSide.add(none);
        // List of fields which are available 
        List<String> fields =new List<String>{'Name','Industry','Rating','Ownership','Active__c'};
        // Add all the fields to notSelected 
        // There are no elements in the selected
        notSelected.addAll(fields);
        createOptions();
    }
    public void createOptions(){
        // Remove all the options from leftSide and rightSide
        leftSide.clear();
	        rightSide.clear();
        SelectOption no=new SelectOption('none','-None-');
        // Check weather there are any elements in the selected set
        if(selected.size()>0){
             // If there are any elements take one by one field name and create SelectOption 
            for(String s1:selected){
                SelectOption op1= new SelectOption(s1,s1);
                // Add the option to the righSide picklist
                rightSide.add(op1);
            }  
        }else{
            // if there are no elements in the set and none option to the rightSide list 
            rightside.add(no);
        }
        // Check weather there any fieldNames in the notSelected 
        if(notSelected.size()>0){
            // If there are any elements create a SelectOption based on fieldName
            for(String s2: notSelected){
                SelectOption op2 =new SelectOption(s2,s2);
                
                
                // add them leftSide list
                leftSide.add(op2);
            }
        }else{
            // if there are no elements in the set and none option to the leftSide list 
            leftSide.add(no);
        }
    }
    public void add(){
        notSelected.removeAll(addFields);
        selected.addAll(addFields);
        createOptions();
    }
    public void removeEle(){
        selected.removeAll(removeFields);
        notSelected.addAll(removeFields);
        createOptions();
    }
}