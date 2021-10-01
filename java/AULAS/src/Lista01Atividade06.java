import java.util.Scanner;

public class Lista01Atividade06 {

	public static void main(String[] args) {
		
		Scanner leia = new Scanner(System.in);
		double d;
		double x2,x1,y1,y2;
		
		System.out.println("Digite o valor de x1: ");
		x1 = leia.nextInt();
		System.out.println("Digite o valor de x2: ");
		x2 = leia.nextInt();
		System.out.println("Digite o valor de y1: ");
		y1 = leia.nextInt();
		System.out.println("Digite o valor de y2: ");
		y2 = leia.nextInt();
		d= Math.sqrt(Math.pow((x2-x1),2)+Math.pow((y2-y1),2));
		
		
		System.out.printf("Valor de d é: %.2f ",d);
		

	}

}
