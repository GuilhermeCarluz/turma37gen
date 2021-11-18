package app;

import java.util.Scanner;

import entities.Cliente;

public class Programa {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);

		String nome, endereco, genero, pagamento;
		int idade;

		System.out.println("Digite o nome do cliente: ");
		nome = sc.nextLine();

		System.out.println("Digite o endere�o do cliente: ");
		endereco = sc.nextLine();

		// sc.nextLine();
		System.out.println("Digite a idade do cliente: ");
		idade = sc.nextInt();

		sc.nextLine();
		System.out.println("Cliente se declara: 1-Masculino 2-Feminino 3-Outros ");
		genero = sc.nextLine();
		while (true) {
			if (genero.equals("1") || genero.equals("2") || genero.equals("3")) {
				break;
			} else {
				System.out.println("Cliente se declara: 1-Masculino 2-Feminino 3-Outros ");
				genero = sc.nextLine();
			}
		}
		if (genero.equals("1")) {
			genero = "Masculino";
		} else if (genero.equals("2")) {
			genero = "feminino";
		} else {
			genero = "outros";
		}

		System.out.println("Digite o pagamento ser�: 1-a vista 2- cart�o 3-parcelado");
		pagamento = sc.next();
		while (true) {
			if (pagamento.equals("1") || pagamento.equals("2") || pagamento.equals("3")) {
				break;
			} else {
				System.out.println("Digite o pagamento ser�: 1-a vista 2- cart�o 3-parcelado");
				pagamento = sc.next();
			}
		}
		if (pagamento.equals("1")) {
			pagamento = "a vista";
		} else if (pagamento.equals("2")) {
			pagamento = "cart�o";
		} else {
			pagamento = "parcelado";
		}

		Cliente cliente = new Cliente(nome, endereco, idade, genero, pagamento);
		System.out.println(cliente.toString());
	}

}
