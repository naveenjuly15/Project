public class Action_Pooler_Example {
    public Integer count {set;get;}
    public String result {set;get;}
    public Action_Pooler_Example(){
        count=0;
        result='Time:'+system.now()+' Count :'+count;
    }
    public void getData(){
        count=count+1;
        result='Time:'+system.now()+' Count :'+count;
    }
}