public class Outbound_Email_3 {
    public void callMe(){
        /* Fetch the data from document object and create EmailFileAttachment */
        Document doc=[select id,name,body from Document where name='Test'];
        Messaging.EmailFileAttachment eft1 =new Messaging.EmailFileAttachment();
        eft1.setBody(doc.body);
        eft1.setFileName(doc.name);
        /* Convert the VF page into EmailAttachment */
        PageReference p=Page.Invoice_Page;
        Blob body=p.getContentAsPDF(); // This will return the body of the VF page as blob
        Messaging.EmailFileAttachment eft2 =new Messaging.EmailFileAttachment();
        eft2.setBody(body);
        eft2.setFileName('Invoice.pdf');
        Messaging.EmailFileAttachment[] myFiles =new Messaging.EmailFileAttachment[]{eft1,eft2};
        /* Create a single email message */
        Messaging.SingleEmailMessage msg =new Messaging.SingleEmailMessage();
        String[] toadd=new String[]{'salesforcebatch300@gmail.com'};
        msg.setToAddresses(toadd);
        msg.setSubject('Test Email');
        msg.setPlainTextBody('This is a test email from the apex');
        msg.setFileAttachments(myFiles);
        msg.setSenderDisplayName('Satish Myla');
        Messaging.Email[] emails =new Messaging.Email[]{msg};
        Messaging.sendEmail(emails);
    }
}