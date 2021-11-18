package Lista04Java;

import java.util.Scanner;

public class Atividade03 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);

		int N1[][] = new int[4][6];
		int N2[][] = new int[4][6];
		int M1[][] = new int[4][6];
		int M2[][] = new int[4][6];

		System.out.println("Digite valores de N1: ");
		for (int i = 0; i < 4; i++) {
			for (int j = 0; j < 6; j++) {
				System.out.println("Digite um valor para a linha " + i + " e coluna " + j + ": ");
				N1[i][j] = leia.nextInt();
			}
		}
		System.out.println("----------------------------- \n");
		System.out.println("digite valores para a matriz N2: ");
		for (int i = 0; i < 4; i++) {
			for (int j = 0; j < 6; j++) {
				System.out.println("Digite um valor para a linha " + i + " e coluna " + j + ": ");
				N2[i][j] = leia.nextInt();
			}
		}
		for (int i = 0; i < 4; i++) {
			for (int j = 0; j < 6; j++) {
				M1[i][j] = N1[i][j] + N2[i][j];
			}
		}
		for (int i = 0; i < 4; i++) {
			for (int j = 0; j < 6; j++) {
				M2[i][j] = N1[i][j] - N2[i][j];
			}
		}
		System.out.println("Matriz gerada da soma: ");
		for (int i = 0; i < 4; i++) {
			for (int j = 0; j < 6; j++) {
				System.out.println("Matriz M1 linha " + i + " e coluna " + j + ": " + M1[i][j]);
			}
		}
		System.out.println("Matriz gerada da subtração: ");
		for (int i = 0; i < 4; i++) {
			for (int j = 0; j < 6; j++) {
				System.out.println("Matriz M2 linha " + i + " e coluna " + j + ": " + M2[i][j]);
			}
		}
	}
}
