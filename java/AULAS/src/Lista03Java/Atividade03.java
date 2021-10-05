package Lista03Java;

import java.util.Scanner;

public class Atividade03 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);

		int idade;
		int vinteUm = 0;
		int cinquenta = 0;

		System.out.println("DIGITE A IDADE: ");
		idade = leia.nextInt();

		while (idade != -99) {
			if (idade < 21) {
				vinteUm++;
			}
			if (idade > 50) {
				cinquenta++;
			}
			System.out.printf("Digite a idade da pessoa (PARA SAIR DIGITE -99): ");
			idade = leia.nextInt();
		}
		System.out.printf("\nO total com menos de 21 é:%d ", vinteUm);
		System.out.printf("\nO total com mais de 50 é:%d", cinquenta);
	}

}
