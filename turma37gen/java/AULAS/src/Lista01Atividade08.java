import java.util.Scanner;

public class Lista01Atividade08 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		double custoFabrica, pDistribuidor, pImpostos, custoFinal;
		
		System.out.println("Escreva o valor de f�brica: ");
		custoFabrica = leia.nextInt();
		
		pDistribuidor = (custoFabrica*0.28);
		pImpostos = (custoFabrica*0.45);
		custoFinal = custoFabrica + pDistribuidor + pImpostos;
		
		System.out.printf("O valor final ficar�: %.2f",custoFinal);
		
		
	}

}//S� funciona com printf
//%s String
//%d inteiro
//%b bolean
//%f double == casas decimais %.2f

