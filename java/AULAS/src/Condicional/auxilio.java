package Condicional;

import java.util.Locale;
import java.util.Scanner;

public class auxilio {

	public static void main(String[] args) {
		//Variaveis
		Scanner leia = new Scanner(System.in);
		Locale.setDefault(Locale.US);
		
		String nome;
		char pronome;
		boolean chefaFamilia=false;
		boolean outroAuxilio=false;
		final double auxilio=600.00;
		final double valorFilho=50.00;
		char op;
		int filhos=0;
		
		//Entradas
		System.out.println("Digite o nome da pessoa: ");
		nome = leia.next();
		System.out.println("Digite o pronome de tratamento A/O/E: ");
		pronome = leia.next().toUpperCase().charAt(0);
		System.out.println("Chefa de família S/N: ");
		op = leia.next().toUpperCase().charAt(0);
		if(op=='S') {
			chefaFamilia = true;
			
		}
		System.out.println("Quantidade de filhos: ");
		filhos = leia.nextInt();
		
			
		}
		
		
		
		
	
	

}
