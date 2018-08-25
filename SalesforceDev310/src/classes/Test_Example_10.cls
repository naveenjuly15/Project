@isTest
public class Test_Example_10 {
	@isTest(seeAllData=true)
    static void testMe(){
        Schedule_Test_1 st =new Schedule_Test_1();
        Test.startTest();
        String cron='0 0 10 15 3 ?';
        Id jobId=System.schedule('MyJob1',cron,st);
        CronTrigger ct=[select id,cronExpression from CronTrigger where id=:jobId];
        Test.stopTest();
        Integer count=[select count() from Account where createdDate=TODAY];
        System.assertEquals(count,0);
        System.assertEquals(ct.CronExpression,cron);
    }
}