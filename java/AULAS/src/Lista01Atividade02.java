import java.util.Scanner;

public class Lista01Atividade02 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		int anos, meses, dias;
		
		System.out.println("Quantos dias você tem:");
		dias = leia.nextInt();
		anos = dias/365;
		meses = (dias%365)/30;
		dias = (dias%365)%30;
		
		System.out.println("Você tem "+anos+" anos, "+meses+" meses e "+dias+" dias");
		
		
	}

}
