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
          Carro c1 = new Carro();
          
          String teclado;
          
          System.out.println("Digite a placa do carro: ");
          teclado = s1.next();
          c1.setPlacaCarro(teclado);
          
          System.out.println("Digite a cor do carro: ");
          teclado = s1.next();
          c1.setCor(teclado);
          
           System.out.println("Digite o ano do carro: ");
           teclado = s1.next();
           c1.setAno(Integer.parseInt(teclado));
           
           System.out.println("Digite a marca do carro: ");
           teclado = s1.next();
           c1.setMarca(teclado);
           
           System.out.println("Digite o modelo do carro: ");
           teclado = s1.next();
           c1.setModelo(teclado);
           
           System.out.println("Digite a atual velocidade do carro: ");
           teclado = s1.next();
           c1.setVelocidade(Integer.parseInt(teclado));
           
           c1.aceleraCarro(1);
           c1.freiaCarro();
           c1.aceleraCarro(1);
           
           c1.mostraStatusCarro();
      }
}
