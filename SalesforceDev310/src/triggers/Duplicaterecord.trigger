trigger Duplicaterecord on Account (before insert,before update ) {
    for(Account a:Trigger.new){
        List<Account>accs1=[select id,name,phone from Account where name=:a.name];
        if(accs1.size()>0){
         a.Name.addError('You Cannot Create the Duplicate Account');   
        }
    }

}