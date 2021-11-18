package app;

import java.util.Scanner;

import entities.Aviao;

public class Programa {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		String modelo, fabricante, companhia;
		int qtPassageiros, preco;
		
		System.out.println("Digite o modelo do avião: ");
		modelo = sc.next();
		System.out.println("Digite o fabricante do avião: ");
		fabricante = sc.next();
		System.out.println("Digite a companhia do avião: ");
		companhia = sc.next();
		System.out.println("Digite a quantidade de passageiros do avião: ");
		qtPassageiros = sc.nextInt();
		System.out.println("Digite o preço do avião: ");
		preco = sc.nextInt();
		
		Aviao aviao = new Aviao(modelo, fabricante, companhia, qtPassageiros, preco);
		System.out.println(aviao.toString());
	}
}
