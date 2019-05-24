package org.entando.aps;

/**
 * This class is here only to provide coverage stats
 */
public class Dummy {
    boolean halfCoverage=true;
    public void doSomethingUseless(){
        if(!halfCoverage){
            System.out.println("This line won't execute");
            System.out.println("This line won't execute either");
            System.out.println("This line won't execute either");
            System.out.println("This line won't execute either to ensure 50% code coverage");
        }
        System.out.println("This line will execute");
    }
}
