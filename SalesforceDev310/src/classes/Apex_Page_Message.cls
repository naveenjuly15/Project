public class Apex_Page_Message {
    public Apex_Page_Message(){
        Apexpages.Message msg1 =new Apexpages.Message(ApexPages.Severity.CONFIRM,'Success Message');
        Apexpages.Message msg2 =new Apexpages.Message(Apexpages.Severity.ERROR,'Error Message');
        Apexpages.Message msg3 =new Apexpages.Message(Apexpages.Severity.WARNING,'Warning Message');
        Apexpages.Message msg4 =new Apexpages.Message(Apexpages.Severity.INFO,'Info Message');
        Apexpages.addMessage(msg1);
        Apexpages.addMessage(msg2);
        Apexpages.addMessage(msg3);
        Apexpages.addMessage(msg4);
    }
}