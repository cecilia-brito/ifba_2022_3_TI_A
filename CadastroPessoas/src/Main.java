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
           try{
           teclado = JOptionPane.showInputDialog("Type person age: ");
            IsValid = p1.setAge(Integer.parseInt(teclado));
            } catch(NumberFormatException Ex){
                System.out.println("Type a valid age: ");
                ex.printStackTrace();
                IsValid = true;
            }
        } while(IsValid);
       
        System.out.println(p1);
    }
}
