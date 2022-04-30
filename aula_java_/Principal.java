/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplication8;

/**
 *
 * @author Cecília Brito
 */
import javax.swing.*;
import javax.swing.JOptionPane;

public class Principal {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Conta novaConta = new Conta();
        
        JOptionPane.showMessageDialog(null, "Cadastro de nova conta");
        
        novaConta.bankCode = Integer.parseInt(JOptionPane.showInputDialog("Digite o código do banco")) ;
        novaConta.bankName = JOptionPane.showInputDialog("Digite o nome do banco");
        novaConta.numAgencia = Integer.parseInt(JOptionPane.showInputDialog("Digite o código da agência"));
        novaConta.numCount = Integer.parseInt(JOptionPane.showInputDialog("Digite o número da conta"));
        novaConta.userCpf = Integer.parseInt(JOptionPane.showInputDialog("Digite o cpf do usuário"));
        novaConta.userName = JOptionPane.showInputDialog("Digite o seu nome");
        novaConta.saldo = Integer.parseInt(JOptionPane.showInputDialog("Digite seu saldo inicial"));
        novaConta.password = JOptionPane.showInputDialog("Digite a sua senha");
        
        Conta c2 = new Conta();
        
        JOptionPane.showMessageDialog(null, "Cadastro de nova conta");
        
        c2.bankCode = Integer.parseInt(JOptionPane.showInputDialog("Digite o código do banco")) ;
        c2.bankName = JOptionPane.showInputDialog("Digite o nome do banco");
        c2.numAgencia = Integer.parseInt(JOptionPane.showInputDialog("Digite o código da agência"));
        c2.numCount = Integer.parseInt(JOptionPane.showInputDialog("Digite o número da conta"));
        c2.userCpf = Integer.parseInt(JOptionPane.showInputDialog("Digite o cpf do usuário"));
        c2.userName = JOptionPane.showInputDialog("Digite o seu nome");
        c2.saldo = Integer.parseInt(JOptionPane.showInputDialog("Digite seu saldo inicial"));
        c2.password = JOptionPane.showInputDialog("Digite a sua senha");
        
        double deposito = Double.parseDouble(JOptionPane.showInputDialog("Digite o valor do deposito"));
        novaConta.depositar(deposito);
        novaConta.mostrarStatus();
        
        double saque = Double.parseDouble(JOptionPane.showInputDialog("Digite o valor do saque"));
        novaConta.sacar(saque);
         double transf = Double.parseDouble(JOptionPane.showInputDialog("Digite o valor da transferência"));
        novaConta.transferir(c2,transf);
        
        
   
    }
    
}
