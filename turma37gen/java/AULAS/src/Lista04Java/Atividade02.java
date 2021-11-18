package Lista04Java;

import java.util.Random;
import java.util.Scanner;

public class Atividade02 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		Random gerador = new Random();

		int soma = 0, maior = 0, contador = 0, totalJogadas = 0;
		int jogadas[] = new int[10];

		for (int i = 0; i < 10; i++) {
			jogadas[i] = gerador.nextInt(6)+1;
			totalJogadas += jogadas[i];
			if (maior < jogadas[i]) {
				maior = jogadas[i];
			}
		}
		for (int i = 0; i < 10; i++) {
			System.out.println("Jogada " + (i + 1) + ": " + jogadas[i]);
			if (jogadas[i] == maior) {
				contador++;
			}
		}
		System.out.println("A média aritmética das jogadas foi: "+(totalJogadas/10));
		System.out.println("A maior pontuação foi: "+maior+" e ela apareceu "+ contador + " vezes");
	}
}
