public class Example_7 {
    public void invoke(){
        List<Opportunity> optyList =[select id,closeDate from Opportunity where stageName='Prospecting'];
        for(Opportunity opt :optyList){
            opt.closeDate=System.today();
        }
    }
}