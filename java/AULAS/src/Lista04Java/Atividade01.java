package Lista04Java;

import java.util.Scanner;

public class Atividade01 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);

		int numero[] = new int[5];
		int maior = 0;

		for (int i = 0; i < 5; i++) {
			System.out.println("Digite um valor: ");
			numero[i] = leia.nextInt();
			if (numero[i] > maior) {
				maior = numero[i];
			}
		}
		for (int i = 0; i < 5; i++) {
			System.out.println(numero[i]);
		}
		System.out.println("O maior número é: " + maior);
	}
}
