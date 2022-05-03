/**
 *
 * @author aluno
 */
import javax.swing.*;
public class Main {
    public static void main(String[] args) {
        
        Person p1 = new Person();
        String teclado;
        boolean IsValid;
        
        do{
           teclado = JOptionPane.showInputDialog("Type person name: ");
           IsValid = p1.setName(teclado);
        }while(IsValid);
        
        do{
           teclado = JOptionPane.showInputDialog("Type person age: ");
            IsValid = p1.setAge(Integer.parseInt(teclado));
        } while(IsValid);
       
        System.out.println(p1.getName() + " " + p1.getAge());
    }
}
