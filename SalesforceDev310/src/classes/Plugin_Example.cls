public class Plugin_Example implements Process.Plugin {
    public process.PluginResult invoke(Process.PluginRequest request){
        String name=(String)request.inputParameters.get('Name');
        Decimal exp=(Decimal)request.inputparameters.get('Exp');
        Decimal salary,bonus;
        if(exp>5){
            salary=50000;
            bonus=5000;
        }else{
            salary=30000;
            bonus=3000;
        }
        Map<String,Object> resMap=new Map<String,Object>();
        resMap.put('Salary',salary);
        resMap.put('Bonus',bonus);
        Process.PluginResult result =new Process.PluginResult(resMap);
        return result;
    }
    public Process.PluginDescribeResult describe(){
        Process.PluginDescribeResult result =new Process.PluginDescribeResult();
        Process.PluginDescribeResult.Inputparameter ip1 =new Process.PluginDescribeResult.Inputparameter('Name',Process.PluginDescribeResult.parameterType.String,true);
        Process.PluginDescribeResult.Inputparameter ip2 =new Process.PluginDescribeResult.Inputparameter('Exp',Process.PluginDescribeResult.ParameterType.Decimal,true);
        Process.PluginDescribeResult.Outputparameter op1=new Process.PluginDescribeResult.OutputParameter('Salary',Process.PluginDescribeResult.ParameterType.Decimal);
        Process.PluginDescribeResult.Outputparameter op2=new Process.PluginDescribeResult.Outputparameter('Bonus',Process.PluginDescribeResult.ParameterType.Decimal);
        result.inputparameters =new List<Process.PluginDescribeResult.inputParameter>{ip1,ip2};
        result.outputParameters=new List<Process.PluginDescribeResult.outputParameter>{op1,op2};
        return result;
    }
}