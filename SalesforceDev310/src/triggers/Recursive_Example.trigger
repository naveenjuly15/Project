trigger Recursive_Example on Account (before insert) {
    Recursive_Demo.callMe();
}