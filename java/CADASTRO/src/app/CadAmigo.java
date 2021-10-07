package app;

import java.util.Scanner;

import entities.Pessoa;

public class CadAmigo {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		Pessoa cad1 = new Pessoa();
		
		System.out.println("CADASTRO DE AMIGOS");
		
		System.out.println("DIGITE O NOME DO AMIGO");
		cad1.nome = leia.next();
		System.out.println("DIGITE O ANO DE NASCIMENTO");
		cad1.anoNascimento = leia.nextInt();
		System.out.println("DIGITE 1- MASCULINO, 2 - FEMININO, 3 - NEUTRE : ");
		char op = leia.next().charAt(0);
		if (op=='1') {
			cad1.pronome = 'o';
		}else if(op=='2') {
			cad1.pronome = 'a';
		}else if(op=='3') {
			cad1.pronome = 'e';
		}
		System.out.printf("Bom dia Sr%c %s, sua idade aproximada é %d anos.\n",cad1.pronome,cad1.nome.toUpperCase(),cad1.calcularIdade(2021));
		System.out.println(cad1.toString());
	}

}
