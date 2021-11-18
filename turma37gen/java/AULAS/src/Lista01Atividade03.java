import java.util.Scanner;

public class Lista01Atividade03 {
	
	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		int horas, minutos, segundos;		
		
		System.out.println("Quantos segundos durou o evento? ");
		segundos = leia.nextInt();
		horas = segundos/3600;
		minutos = (segundos%3600)/60;
		segundos = (segundos%3600)%60;
		
		System.out.println("O evento durará: "+horas+" horas, "+minutos+" minutos e "+segundos+" segundos.");
	}
}
