package Lista02Java;

import java.util.Scanner;

public class Atividade01 {
	public static void main(String args[]) {
        Scanner leia = new Scanner(System.in);
        int numero1;
		int numero2;
		int number3;
		
		int soma;
        int local;
		int numero3 = 0;
		
		System.out.println("Digite o primeiro n�mero:   ");
		numero1 = leia.nextInt();
		
		System.out.println("Digite o segundo n�mero:    ");
		numero2 = leia.nextInt();
		
		System.out.println("Digite o terceiro n�mero:   ");
		number3 = leia.nextInt();
		
		if (numero1 > numero2)
	    	   local = numero1;
	       else
	    	   local = numero2;
	       
	       if(local > number3)
	    	   System.out.printf("O n�mero maior �: %d", local);
	       else
	           System.out.printf("O n�mero maior �: %d", number3);
		
		
	}


}
