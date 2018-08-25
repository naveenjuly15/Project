trigger Customer_Delete on Customer__c (before delete) {
    /* From the customers whom we are deleting  from those which ever the customer is inactive 
     * fetch their id's and put them in separate list
     */
	List<Id> Customers =new List<Id>();
    for(Customer__c c:Trigger.old){
        if(c.Active__c ==false){
            customers.add(c.id);
        }
    }
    /* Write a query to fetch all the child records if any */
    List<Employee__c> emps =[select id from Employee__c where Customer__c in:customers];
    delete emps;
}