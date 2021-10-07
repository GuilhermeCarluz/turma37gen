package app;

import java.util.Scanner;

import entities.Eletronico;

public class Programa {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);

		String modelo, marca;
		int preco, geracao, preco2;

		System.out.println("digite o modelo: ");
		modelo = sc.next();
		System.out.println("digite o preco: ");
		preco = sc.nextInt();
		System.out.println("digite o preco 02: ");
		preco2 = sc.nextInt();
		System.out.println("digite o geracao: ");
		geracao = sc.nextInt();
		System.out.println("digite o marca: ");
		marca = sc.next();

		Eletronico elet = new Eletronico(modelo, preco, geracao, marca);
		System.out.println(elet.toString());
		System.out.println(elet.somaValores(preco, preco2));

		sc.close();

	}
}
