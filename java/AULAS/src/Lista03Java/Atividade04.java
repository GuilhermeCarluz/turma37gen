package Lista03Java;

import java.util.Scanner;

public class Atividade04 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);

		int idade;
		char sexo;
		char opcao;
		int pessoasCalmas = 0;
		int homensAgressivos = 0;
		int outrosCalmos = 0;
		int pessoasNervosasAcimaDe40Anos = 0;
		int pessoasCalmasMenos18Anos = 0;
		char op = 'S';
		int contadorHabitantes = 1;

		while (op == 'S' && contadorHabitantes <= 150) {
			System.out.println("Habitante número: "+contadorHabitantes);
			System.out.println("Digite a idade: ");
			idade = leia.nextInt();
			System.out.println("Escolha\n1-Feminino\n2-Masculino\n3-Outros : ");
			sexo = leia.next().charAt(0);
			System.out.println("Escolha\n1-Pessoa Calma\n2-Pessoa Nervosa\n3-Pessoa agressiva : ");
			opcao = leia.next().charAt(0);
			System.out.println("Continuar S/N : ");
			op = leia.next().toUpperCase().charAt(0);
			contadorHabitantes++;
			
		}
	}

}
