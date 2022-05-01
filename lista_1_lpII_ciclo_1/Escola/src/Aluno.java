/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author cecilia brito 3TI-A | IFBA
 */

import java.text.DecimalFormat;
public class Aluno {
    
    private String matricula;
    private String nomeAluno;
    private double nota_prova1;
    private double nota_prova2;
    private double nota_trabalho;
    private double media;
    
   DecimalFormat df = new DecimalFormat("#.00");
    
    public double calcularMedia(){
        this.media = Math.round(((nota_prova1 * 2.5) + (nota_prova2 * 2.5) + (nota_trabalho * 2))/ (2.5 + 2.5 + 2));
        System.out.println("A média do aluno: " + this.nomeAluno + "é: " + df.format(this.media));
        return this.media;
    }
    public boolean estaAprovado(){
        if(this.media >= 6){
            System.out.println("Aluno: " + this.nomeAluno + " Matrícula: " + this.matricula + " foi aprovado");
            return true;
        } else{
            System.out.println("Aluno: " + this.nomeAluno + " Matrícula: " + this.matricula +  " foi reprovado");
            return false;
        }
    }

    public String getNomeAluno() {
        return nomeAluno;
    }

    public void setNomeAluno(String nomeAluno) {
        this.nomeAluno = nomeAluno;
    }

    public String getMatricula() {
        return matricula;
    }

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }

    public double getNota_prova1() {
        return nota_prova1;
    }

    public void setNota_prova1(double nota_prova1) {
        this.nota_prova1 = nota_prova1;
    }

    public double getNota_prova2() {
        return nota_prova2;
    }

    public void setNota_prova2(double nota_prova2) {
        this.nota_prova2 = nota_prova2;
    }

    public double getNota_trabalho() {
        return nota_trabalho;
    }

    public void setNota_trabalho(double nota_trabalho) {
        this.nota_trabalho = nota_trabalho;
    }
}
