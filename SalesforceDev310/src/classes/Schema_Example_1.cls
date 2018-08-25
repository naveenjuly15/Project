public class Schema_Example_1 {
    public Map<String,Object> resMap {set;get;}
    public Schema_Example_1(){
        Schema.DescribeSobjectResult result =Account.SobjectType.getDescribe();
        resMap=new Map<String,Object>();
        resMap.put('Label',result.getLabel());
        resMap.put('Name',result.getName());
        resMap.put('Key ',result.getKeyPrefix());
        resMap.put('Custom',result.isCustom());
        resMap.put('Read',result.isAccessible());
        resMap.put('Update',result.isUpdateable());
        resMap.put('Delete',result.isDeletable());
        resMap.put('Undelete',result.isUndeletable());
        resMap.put('Merge',result.isMergeable());
        resMap.put('Query',result.isQueryable());
        resMap.put('Searchable',result.isSearchable());
        resMap.put('Feed Enabled',result.isFeedEnabled());
    }
}