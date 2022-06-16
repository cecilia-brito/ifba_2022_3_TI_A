
/*@author Cecília Brito - 3TI-A*/

import javax.swing.JOptionPane;
import java.util.Scanner;
public class Teste {
   
    public static void main(String[] args) {
        Scanner scn = new Scanner(System.in);
        boolean isFinished = false;
      
            try{
            do{
                String keyboard = JOptionPane.showInputDialog("Digite 1 para adicionar um imóvel novo ou 2 para adicionar um imóvel velho, digite 0 ou qualquer outra tecla para encerrar a operação: ");
                if(Integer.parseInt(keyboard) == 1){
                    
                    ImovelNovo in = new ImovelNovo();

                    keyboard = JOptionPane.showInputDialog("Digite o endereço do imóvel novo: \n");
                    in.setAddress(keyboard);

                    keyboard = JOptionPane.showInputDialog("Digite o preço base do imóvel novo: \n");
                    in.setPrice(Double.parseDouble(keyboard));

                    keyboard = JOptionPane.showInputDialog("Digite o valor adicional sobre o preço do imóvel novo: \n");                 
                    in.setAdditionalPrice(Double.parseDouble(keyboard));

                    System.out.println("Obrigado! A operação está em andamento, aguarde...\n");

                    double fullPrice = in.getPrice() + in.getAdditionalPrice();
                    System.out.println("____||____");
                    System.out.println("///////////\\");
                    System.out.println("///////////  \\");
                    System.out.println("|    _    |  |");
                    System.out.println("|[] | | []|[]|");
                    System.out.println("|   | |   |  |");
                    System.out.println("O endereço do seu imóvel é: " +  in.getAddress());
                    System.out.println("O preço dele antes do adicional é: " + in.getPrice());
                    System.out.println("O preço total do seu imóvel novo com o adicional de " + " R$" + in.getAdditionalPrice() + " é: " + "R$"+ fullPrice);

                } else if(Integer.parseInt(keyboard) == 2){                    
                    
                    ImovelVelho iv = new ImovelVelho();

                    keyboard = JOptionPane.showInputDialog("Digite o endereço do imóvel velho: ");
                    iv.setAddress(keyboard);

                    keyboard = JOptionPane.showInputDialog("Digite o preço base do imóvel velho");
                    iv.setPrice(Double.parseDouble(keyboard));

                    keyboard = JOptionPane.showInputDialog("Digite o valor do desconto do imóvel velho");
                    iv.setDiscount(Double.parseDouble(keyboard));
                    
                    System.out.println("Obrigado! A operação está em andamento, aguarde...\n");

                    double fullPrice = iv.getPrice() - iv.getDiscount();
                    
                    System.out.println("____||____");
                    System.out.println("///////////\\");
                    System.out.println("///////////  \\");
                    System.out.println("|    _    |  |");
                    System.out.println("|[] | | []|[]|");
                    System.out.println("|   | |   |  |");
                    System.out.println("O endereço do seu imóvel é: " +  iv.getAddress());
                    System.out.println("O preço dele antes do descontoé: " + iv.getPrice());
                    System.out.println("O preço total do seu imóvel novo com o desconto de " + " R$"+ iv.getDiscount() + " é: " +" R$"+ fullPrice);

                } else{
                    System.out.println("Operação finalizada :)");
                    isFinished = true;
                }
            }while(!isFinished);
        } catch (Exception E){
                System.out.println("A operação foi finalizada, pois ocorreu o erro: \n" + E);
                System.out.println(":/");
        }
    }
}
