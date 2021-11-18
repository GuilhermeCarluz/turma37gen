package Condicional;

import java.util.Scanner;

public class ExemploSe {

	public static void main(String[] args) {

		Scanner leia = new Scanner(System.in); // Instanciar um objeto

		final int ano_atual = 2021;
		String nome;
		int anoNascimento;
		int idade;
		char pronome;

		System.out.println("Digite o nome: ");
		nome = leia.next();
		System.out.println("Digite o ano de nascimento: ");
		anoNascimento = leia.nextInt();
		System.out.println("Qual o pronome A/O/E: ");
		pronome = leia.next().toUpperCase().charAt(0);
		idade = ano_atual - anoNascimento;

		if (idade >= 40) {
			System.out.print("Você é cringe");
		} else if (idade >= 18 && pronome == 'A') {
			System.out.print("Você é adulta");
		} else if (idade >= 18 && pronome == 'O') {
			System.out.print("Você é adulto");
		} else if (idade >= 18 && pronome == 'E') {
			System.out.print("Você é adulte");
		} else {
			System.out.print("Você é jovem");

		}
		// && (e) || (ou) != (diferente)

	}

}
