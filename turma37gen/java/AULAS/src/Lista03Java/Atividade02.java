package Lista03Java;

import java.util.Scanner;

public class Atividade02 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);

		int numero, Par = 0, Impar = 0, zero=0;

		for (int i = 0; i <= 10; i++) {
			System.out.println("Digite o " + i + "º número");
			numero = leia.nextInt();

			if (numero % 2 == 0 && numero>0) {
				Par++;

			}

			if (numero % 2 == 1) {
				Impar++;
			}
			
			

		}
		System.out.println("Foram digitados " + Par + " números pares \n");
		System.out.println("Foram digitados " + Impar + " números ímpares \n");
	}

}
