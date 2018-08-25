trigger Trig_Account_1 on Account (before insert) {
    for(Account acc: Trigger.new){
        acc.Rating='Hot';
        acc.Ownership='Private';
    }
}