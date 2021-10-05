package Lista03Java;

import java.util.Scanner;

public class Atividade05 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		
		int soma=0;
		int numero;
		
		do {
			System.out.println("Digite um número: ");
			numero = leia.nextInt();
			soma += numero;
			
		}while(numero!=0);
		System.out.printf("Soma = %d", soma);
		
		

	}

}
