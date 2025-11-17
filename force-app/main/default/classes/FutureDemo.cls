public class FutureDemo {

     @future 
     public static void futureMethod() 
     { 
        system.debug('Inside Future Method');    
     } 
    
    public static void method1() 
    { 
        system.debug('Methodl '); 
        method2(); 
        system.debug('after Methodl '); 
    } 
    
    
    public static void method2() 
    {
        system.debug('Method2'); 
    }
    
}

// Anony
// FutureDemo.method1();
// FutureDemo.futureMethod(10);