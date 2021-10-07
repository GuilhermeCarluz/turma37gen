package app;

import java.util.Scanner;

import entities.Pessoa;
import entities.Produto;

public class CadProduto {

	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		Pessoa cad1 = new Pessoa();
		Produto p1 = new Produto();
		int quantidade = 0;
		System.out.print("Digite o nome do amigo : ");
		cad1.nome = scan.next();
		System.out.print("Digite 1-masculino, 2-feminina, 3-neutre :");
		char op = scan.next().charAt(0);
		if (op == '1') {
			cad1.pronome = 'o';
		} else if (op == '2') {
			cad1.pronome = 'a';
		} else {
			cad1.pronome = 'e';
		}
		System.out.print("Digite o código que você deseja: ");
		p1.codigo = scan.next();
		System.out.print("Quer colocar(1) ou tirar(2) do estoque: ");
		op = scan.next().charAt(0);
		if (op == '1') {
			System.out.print("Digite quantidade que você deseja colocar: ");
			quantidade = scan.nextInt();
			p1.colocarEstoque(quantidade);
		} else {
			System.out.print("Digite quantidade que você deseja tirar: ");
			quantidade = scan.nextInt();
			p1.tirarEstoque(quantidade);
		}
		System.out.println(p1.toString());
		System.out.println(cad1.toString());

	}
}
