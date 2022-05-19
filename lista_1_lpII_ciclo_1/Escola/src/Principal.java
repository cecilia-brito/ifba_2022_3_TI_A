/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author cecilia brito 3TI-A | IFBA
 */
import java.util.Scanner;
public class Principal {
    public static void main(String[] args) {
        
        Scanner s1 = new Scanner(System.in);
        Aluno aluna2022 = new Aluno();
        String keyboard;     
        
        System.out.println("Digite a matrícula do aluno: ");
        keyboard = s1.next();
        aluna2022.setMatricula(keyboard);
        
        System.out.println("Digite o nome do aluno: ");
        keyboard = s1.next();
        aluna2022.setNomeAluno(keyboard);
        
        System.out.println("Digite a nota da prova 1 do aluno: ");
        keyboard = s1.next();
        aluna2022.setNota_prova1(Double.parseDouble(keyboard));
        
        System.out.println("Digite a nota da prova 2 do aluno: ");
        keyboard = s1.next();
        aluna2022.setNota_prova2(Double.parseDouble(keyboard));
        
        System.out.println("Digite a nota do trabalho: ");
        keyboard = s1.next();
        aluna2022.setNota_trabalho(Double.parseDouble(keyboard));
                
        aluna2022.calcularMedia();
        aluna2022.estaAprovado();
    }
}
