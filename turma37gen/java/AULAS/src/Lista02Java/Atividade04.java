package Lista02Java;

import java.util.Scanner;

public class Atividade04 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		double numero;
		System.out.println("Digite um valor: ");
		numero = sc.nextDouble();
		if((numero%2) == 0) {
			System.out.println("O valor é par e sua raiz é "+ Math.sqrt(numero));
		}else {
			System.out.println("O valor é impar e "+ (numero*numero)+ " é seu valor ao quadrado");

		}
		
		
		

	}

}
