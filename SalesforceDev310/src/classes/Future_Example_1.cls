public class Future_Example_1 {
    @future
    public static void show(){
        System.debug('Show Me 1 ');
        System.debug('Show Me 2');
        System.debug('Show Me 3');
        System.debug('Show Me 4');
    }
    @future
    public static void callMe(){
        System.debug('Call Me1');
        System.debug('Call Me2');
        System.debug('Call Me3');
        System.debug('Call Me4');
    }
    public void invoke(){
        System.debug('Invoke 1');
        System.debug('Invoke 2');
        show();
        System.debug('Invoke 3');
        System.debug('Invoke 4');
        callMe();
        System.debug('Invoke 5');
        System.debug('Invoke 6');
    }
}