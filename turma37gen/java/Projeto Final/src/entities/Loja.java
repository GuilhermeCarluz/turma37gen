package entities;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

public class Loja {
	DecimalFormat df = new DecimalFormat("#.00");
	Carrinho carrinho = new Carrinho();
	List<Produto> vitrine = new ArrayList<>();

	public void menuPagamento() {
		System.out.println("Formas de pagamento: ");
		System.out.println("1 - � vista com 10% de desconto: ");
		System.out.println("2 - No cart�o de cr�dito em 1x (10% de acr�scimo");
		System.out.println("3 - No cart�o de cr�dito em 2x (15% de acr�scimo");
		System.out.println("Informe a forma de pagamento [ 1 | 2 | 3 ]: ");
	}

	public void formaPagamento(int formaPagamento, double valorTotal) {

		double imposto;
		double desconto;
		double acrescimo;

		if (formaPagamento == 1) {
			System.out.print("\n\t   * NOTA FISCAL *\n\n");
			System.out.print("\nPAGAMENTO � VISTA| 10% DE DESCONTO\n");
			System.out.print("\t\nVALOR TOTAL SEM DESCONTO: R$ " + df.format(valorTotal));
			imposto = valorTotal * 0.09;
			System.out.print("\t\t\n9% DE IMPOSTO: R$ " + df.format(imposto));
			desconto = valorTotal - (valorTotal * 0.1);
			System.out.print("\t\t\nVALOR TOTAL COM DESCONTO (10%) R$ " + df.format(desconto));
			System.out.println("\nSUCESSO COM AS COMPRAS! VOLTE SEMPRE!");

		} else if (formaPagamento == 2) {
			System.out.print("\n\t\t   * NOTA FISCAL *\n\n");
			System.out.print("\n\tCART�O DE CR�DITO 1X | 10% DE ACR�SCIMO\n");
			System.out.print("\t\t\nVALOR TOTAL: R$ " + df.format(valorTotal));
			imposto = valorTotal * 0.09;
			System.out.print("\t\t\n9% DE IMPOSTO: R$ " + df.format(imposto));
			acrescimo = valorTotal + (valorTotal * 0.1);
			System.out.print("\t\t\nVALOR TOTAL COM 10% DE ACRESCIMO: R$ " + df.format(acrescimo));
			System.out.println("\nSUCESSO COM AS COMPRAS! VOLTE SEMPRE!");

		} else if (formaPagamento == 3) {
			System.out.print("\n\t\t   * NOTA FISCAL *\n\n");
			System.out.print("\n\tCART�O DE CR�DITO 2X | 15% DE ACR�SCIMO\n");
			System.out.print("\t\t\nVALOR TOTAL: R$ " + df.format(valorTotal));
			imposto = valorTotal * 0.09;
			System.out.print("\t\t\n9% DE IMPOSTO: R$ " + df.format(imposto));
			acrescimo = valorTotal + (valorTotal * 0.15);
			System.out.print("\t\t\nVALOR TOTAL COM 15% DE ACRESCIMO: R$ " + df.format(acrescimo));
			System.out.println("\t\t\nO VALOR DAS SUAS PARCELAS FICARAM DE:  R$ " + df.format(acrescimo / 2) + " cada");
			System.out.println("\nSUCESSO COM AS COMPRAS! VOLTE SEMPRE!");

		} else {
			System.out.print("\nMETODO N�O IDENTIFICADO");
			System.out.print("\nTENTE NOVAMENTE");
		}

	}

	public void mostraCabecalhoLoja() {
		System.out.println();
		System.out.println("\t\t    * Mangue-Tech *");
		System.out.println("CODIGO \t VALOR \t ESTOQUE \t NOME");

	}

	public void mostraCabecalhoNF() {
		System.out.println();
		System.out.println("\t\t    * Mangue-Tech *");
	}
}
