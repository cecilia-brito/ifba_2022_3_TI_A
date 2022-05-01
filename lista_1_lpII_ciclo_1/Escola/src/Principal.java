/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author cecilia brito 3TI-A | IFBA
 */
public class Principal {
     public static void main(String[] args) {
       Aluno aluna2022 = new Aluno();
       aluna2022.setMatricula("20221233832");
       aluna2022.setNomeAluno("Sophia Alameda");
       aluna2022.setNota_prova1(7.4);
       aluna2022.setNota_prova2(4.5);
       aluna2022.setNota_trabalho(6.5);
       
       aluna2022.calcularMedia();
       aluna2022.estaAprovado();
     }
}
