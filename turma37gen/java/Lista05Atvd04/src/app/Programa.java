package app;

import java.util.Scanner;

import entities.Conta;

public class Programa {

public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);

		double  saque, deposito;
		int opUsuario, opUsuarioConta;
		
		Conta conta = new Conta();
		
		while(true) {
		
		System.out.println("Digite seu nome: ");
		conta.Nome = sc.nextLine();
		
		System.out.println("A conta está: 1-ativa 2-desativada ");
		opUsuarioConta = sc.nextInt();
		if(opUsuarioConta == 1) {
			conta.Ativo = true;
		}else {
			conta.Ativo = false;
			break;
		}
		
		
		System.out.println("Digite a agencia: ");
		conta.Agencia = sc.next();
		
		sc.nextLine();
		System.out.println("Digite seu cpf: ");
		conta.Cpf = sc.nextLine();
		
		
		System.out.println("O seu saldo é "+ conta.Saldo+ " $");
		
		
		System.out.println("O que você deseja fazer: 1-saque 2-deposito");
		opUsuario = sc.nextInt();
		
		if(opUsuario == 1) {
			System.out.println("digite o valor a ser sacado: ");
			saque = sc.nextDouble();
			System.out.println(" o novo saldo da conta é "+ conta.saque(saque)+ " $");
		}else {
			System.out.println("digite o valor a ser depositado: ");
			deposito = sc.nextDouble();
			System.out.println(" o novo saldo da conta é "+ conta.deposito(deposito)+ " $");
			
		}
		
		System.out.println(conta.toString());
		
		}
		
		System.out.println("ENCERROU ED");
		
		
		

		

	}


}
