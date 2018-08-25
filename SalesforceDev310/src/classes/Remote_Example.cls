global class Remote_Example {
    @RemoteAction
    global static String callMe(String name){
        String result='Your Name is:'+name;
        return result;
    }
}