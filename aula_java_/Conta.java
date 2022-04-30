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

import javax.swing.JOptionPane;

public class Conta {
        int bankCode;
        String bankName;
        long userCpf;
        int numCount;
        int numAgencia;
        String userName;
        double saldo;
        String password;
        
        public void depositar(double money){
           
            String userPass = JOptionPane.showInputDialog("Digite sua senha para depositar"); 
            if(money > 0 && this.password.equals(userPass)){
                this.saldo += money;
            } else{
                System.out.println("");
            }
        }
        
        public void sacar(double money){
            String userPass = JOptionPane.showInputDialog("Digite sua senha para sacar"); 
            if(money > 0 && this.saldo > 0 && this.password.equals(userPass)){
                this.saldo -= money;
            }
        }
        
        public void transferir(Conta contaTransf, double value){
            String userPass = JOptionPane.showInputDialog("Digite sua senha para transferir"); 
            if(value > 0 && this.saldo > 0 &&  this.password.equals(userPass)){
                this.saldo -= value;
                contaTransf.saldo += value;
            }
             System.out.println("Transferência realizada com suscesso");
             System.out.println(this.bankCode);
             System.out.println(this.bankName);
             System.out.println(this.userCpf);
             System.out.println(this.numCount);
             System.out.println(this.numAgencia);
             System.out.println(this.userName);
             System.out.println("Seu saldo atual é" + this.saldo);
             System.out.println("Valor "+ value +" transferido para conta: " + contaTransf.numCount);
             System.out.println("Cpf: " + contaTransf.userCpf);
             System.out.println("Banco: " + contaTransf.bankName + " " + contaTransf.bankCode);
        }
        public void mostrarStatus(){
             System.out.println("bank code" + this.bankCode);
             System.out.println("bank name" + this.bankName);
             System.out.println("cpf" + this.userCpf);
             System.out.println("numero da conta" + this.numCount);
             System.out.println("numero da agendia" + this.numAgencia);
             System.out.println("username" + this.userName);
             System.out.println("saldo" + this.saldo);
        }

}
