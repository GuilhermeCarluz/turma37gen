package Lista02Java;

import java.util.Scanner;

public class Atividade03 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		int idade;
		
		System.out.println("Digite sua idade: ");
		idade = leia.nextInt();
		
		if(idade<=0) {
			System.out.println("Este número é inválido.");
		}
		if(idade>=1 && idade<=9) {
			System.out.println("Infelizmente você não pertence a uma categoria");
		}
		else if(idade>=10 && idade<=14) {
			System.out.println("Você pertence a categoria Infantil");	
		}	
		else if(idade>=15 && idade<=14) {
			System.out.println("Você pertence a categoria Juvenil");
		}
		else if(idade>=15 && idade<=17) {
			System.out.println("Você pertence a categoria Adulto");
		}
		else 
			System.out.println("Infelizmente você não pertence a uma categoria");
		
		
		//10-14 infantil
		//15-17 juvenil
		//18-25 adulto

	}

}
