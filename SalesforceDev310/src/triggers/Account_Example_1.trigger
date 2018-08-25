/* When ever a new Account is created set rating as cold and ownership as public */
trigger Account_Example_1 on Account (before insert) {
    for(Account a: Trigger.New){
        a.rating='Cold';
        a.ownership='Public';
    }
}