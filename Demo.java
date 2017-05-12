public class singleton{
private static  Singleton singleton=new Singleton();
private Singleton(){};
 public static Singleton getSingleton(){
     return Singleton;
 }
}
