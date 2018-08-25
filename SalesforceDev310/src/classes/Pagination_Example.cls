public class Pagination_Example {
    public Apexpages.StandardSetController controller {Set;get;}
    public List<Opportunity> getOpty(){
        List<Opportunity> optyList=(List<Opportunity>)controller.getRecords();
        return optyList;
    }
    public Pagination_Example(){
        List<Opportunity> optyList =[select id,Name,StageName,CloseDate from Opportunity];
        controller=new Apexpages.StandardSetController(optyList);
        controller.setPageSize(5);
    }
}