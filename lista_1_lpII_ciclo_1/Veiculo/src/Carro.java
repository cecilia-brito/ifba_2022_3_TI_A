/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * cecilia brito 3TI-A | IFBA
 */
public class Carro {
    private String placaCarro;
    private String modelo;
    private String cor;
    private int ano;
    private String marca;
    private int velocidade;
    
    public String getPlacaCarro(){
        return placaCarro;
    }
    
    public void setPlacaCarro(String placaCarro){
        this.placaCarro = placaCarro;
    }
    
    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public String getCor() {
        return cor;
    }

    public void setCor(String cor) {
        this.cor = cor;
    }

    public int getAno() {
        return ano;
    }

    public void setAno(int ano) {
        this.ano = ano;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public int getVelocidade() {
        return velocidade;
    }

    public void setVelocidade(int velocidade) {
        this.velocidade = velocidade;
    }
    
    public void aceleraCarro(int num){
        if(num == 1){
            this.velocidade += 5;
            System.out.println("A velocidade é de: "+ this.velocidade +"km/h");
        } else if(num == -1 && this.velocidade > 0){
            this.velocidade -= 5;
            System.out.println("A velocidade é de: "+ this.velocidade +"km/h");
        } else if(num == 0){
            freiaCarro();
        } else{
            System.out.println("ERRO. INSIRA UM PARÂMETRO VÁLIDO");
        }
    }
    
    public void freiaCarro(){
        this.velocidade = 0;
        System.out.println("O carro foi freiado!\n");
    }
    
    public void mostraStatusCarro(){
        System.out.println("\n");
        System.out.println("  ______");
        System.out.println(" //|_||_\\`.__");
        System.out.println("(   _    _ _\\");
        System.out.println("=`-(_)--(_)-'"); 
        System.out.println("A placa do carro é:" + this.placaCarro);
        System.out.println("A marca do carro é: " + this.marca);
        System.out.println("O modelo do carro é: " + this.modelo);
        System.out.println("A cor do carro é: " + this.cor);
        System.out.println("O ano do carro é: " + this.ano);
        System.out.println("A velocidade atual do carro é: " + this.velocidade);   
    }
}    
