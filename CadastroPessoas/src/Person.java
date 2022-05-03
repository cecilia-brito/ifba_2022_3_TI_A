/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author aluno
 */
public class Person {
    
    private int age;
    private String name;
    
    public int getAge() {
        return age;
    }

    public boolean setAge(int age) {
        if(age <= 120 && age >= 0 ){
            this.age = age;
            return false;
        } else{
            System.out.println("Type a valid age");
            return true;
            
        }
    }

    public String getName() {
        return name;
    }

    public boolean setName(String name) {
        if(name.trim().equals("")){
            System.out.println("type the name again");
            return true;
        } else{
            this.name = name;
            return false;
        }
    }
    
}
