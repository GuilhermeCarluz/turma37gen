import java.util.Scanner;

public class Lista01Atividade04 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		int A, B, C, D, R, S;
		
		System.out.println("Digite o valor: ");
		A = leia.nextInt();
		System.out.println("Digite o valor: ");
		B = leia.nextInt();
		System.out.println("Digite o valor: ");
		C = leia.nextInt();
		
		R = (A+B)*(A+B);
		S = (B+C)*(B+C);
		D = (R+S)/2;
		
		System.out.println("O valor é: "+D);
	}
}	