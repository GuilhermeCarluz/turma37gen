import java.util.Scanner;

public class Lista01Atividade01 {

	public static void main(String[] args) {
		Scanner leia = new Scanner(System.in);
		int ano, mes, dia, mesAtual, diaAtual, anoDia, mesDia, diaTotal, totalDia;
		
		System.out.println("Quantos anos voc� tem: ");
		ano = leia.nextInt();
		System.out.println("Qual o m�s que voc� nasceu: ");
		mes = leia.nextInt();
		System.out.println("Qual o dia que voc� nasceu: ");
		dia = leia.nextInt();
		System.out.println("Qual o m�s atual: ");
		mesAtual = leia.nextInt();
		System.out.println("Qual o dia atual: ");
		diaAtual = leia.nextInt();
		anoDia = ano*365;
		
		if (mes > mesAtual) {
				mesDia = (mes - mesAtual)*30;
		}
		else {
			mesDia = (mesAtual - mes)*30;
		}
		if (dia>diaAtual) {
			diaTotal = dia - diaAtual;
		}
		else {
			diaTotal = diaAtual - dia;
		}
		totalDia = diaTotal + mesDia + anoDia;
		System.out.println("Voc� tem "+totalDia+" dia de vida.");
		
	}

}
