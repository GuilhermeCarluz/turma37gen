import java.util.Scanner;

public class Lista01Atividade05 {

	public static void main(String[] args) {
		Scanner leia = new Scanner (System.in);
		int nota1, nota2, nota3;
		double media;
		
		System.out.println("Sua primeira nota: ");
		nota1 = leia.nextInt();
		System.out.println("Sua segunda nota: ");
		nota2 = leia.nextInt();
		System.out.println("Sua terceira nota: ");
		nota3 = leia.nextInt();
		
		media = ((nota1*2)+(nota2*3)+(nota3*5))/10;
		System.out.println("A sua média final é: "+media);
		
	}

}
