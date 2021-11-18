package app;

import java.util.Scanner;

import entities.Aviao;

public class Programa {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		String modelo, fabricante, companhia;
		int qtPassageiros, preco;
		
		System.out.println("Digite o modelo do avi�o: ");
		modelo = sc.next();
		System.out.println("Digite o fabricante do avi�o: ");
		fabricante = sc.next();
		System.out.println("Digite a companhia do avi�o: ");
		companhia = sc.next();
		System.out.println("Digite a quantidade de passageiros do avi�o: ");
		qtPassageiros = sc.nextInt();
		System.out.println("Digite o pre�o do avi�o: ");
		preco = sc.nextInt();
		
		Aviao aviao = new Aviao(modelo, fabricante, companhia, qtPassageiros, preco);
		System.out.println(aviao.toString());
	}
}
