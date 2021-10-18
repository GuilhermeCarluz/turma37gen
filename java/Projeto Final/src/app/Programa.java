package app;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import entities.Carrinho;
import entities.Loja;
import entities.Produto;

public class Programa {
	public static void main(String[] args) {

		Scanner leia = new Scanner(System.in);
		Loja loja = new Loja();
		Carrinho carrinho = new Carrinho();
		List<Produto> vitrine = new ArrayList<>();

		vitrine.add(new Produto("Mouse	      ", "G301", 30.00, 10));
		vitrine.add(new Produto("Teclado      ", "G302", 40.00, 10));
		vitrine.add(new Produto("Webcam       ", "G303", 80.00, 10));
		vitrine.add(new Produto("Impressora   ", "G304", 500.00, 10));
		vitrine.add(new Produto("Monitor      ", "G305", 800.00, 10));
		vitrine.add(new Produto("HeadSet	  ", "G306", 100.00, 10));
		vitrine.add(new Produto("Caixa de Som ", "G307", 70.00, 10));
		vitrine.add(new Produto("Roteador     ", "G308", 150.00, 10));
		vitrine.add(new Produto("Hd Externo   ", "G309", 400.00, 10));
		vitrine.add(new Produto("Cabo HDMI    ", "G310", 30.00, 10));

		String op = "";
		String codigoProduto = "";
		String comprarNovamente = "";

		System.out.println("--------------------------Mangue-Tech--------------------------");
		System.out.println("--------------Posso comprar aqui para me organizar--------------");
		System.out.println("DESEJA FAZER COMPRAS EM NOSSO SITE? S/N]");
		op = leia.next().toUpperCase();

		if (op.equals("S")) {
			do {
				System.out.println("CODIGO\t PRODUTO\t VALOR\t ESTOQUE\n");
				for (Produto prod : vitrine) {
					System.out.println("" + prod.getCodigo() + "\t" + prod.getProduto() + "\t " + prod.getValor() + "\t"
							+ "   " + prod.getEstoque());
				}
				carrinho.mostraCarrinho();

				System.out.println("\n\n \t			Qual produto você deseja comprar? (Digite o código do produto) \n");
				codigoProduto = leia.next().toUpperCase();

				for (Produto prod : vitrine) {
					if (codigoProduto.equals(prod.getCodigo())) {
						System.out.println("\nCONFIRMA O PRODUTO?\nDIGITE | S | PARA CONFIRMAR: \n\n" + prod.getCodigo()
								+ "\t" + prod.getProduto() + "\t" + "R$" + prod.getValor());
						String confirmaProduto = leia.next().toUpperCase();
						if (confirmaProduto.equals("S")) {
							System.out.println("Qual a quantidade?");
							int quantidadeCarrinho = leia.nextInt();
							if (quantidadeCarrinho > prod.getEstoque()) {
								System.out.println("Quantidade maior que a disponivel no estoque");
							} else if (quantidadeCarrinho <= 0) {
								System.out.println("Quantidade invalida!");
							} else {
								if (carrinho.verificaCarrinho(prod.getCodigo(), quantidadeCarrinho)) {
									carrinho.mostraCarrinho();
								} else {
									carrinho.entraCarrinho(prod.getProduto(), prod.getCodigo(), prod.getValor(),
											quantidadeCarrinho);
									prod.retiraEstoque(quantidadeCarrinho);
									carrinho.mostraCarrinho();

								}
							}
						}

					}
				}
				System.out.println("\nDeseja continuar comprando? ");
				comprarNovamente = leia.next().toUpperCase();
			} while (!(comprarNovamente.equals("N")));

			int opMenuPagamento;

			loja.menuPagamento();
			opMenuPagamento = leia.nextInt();
			loja.formaPagamento(opMenuPagamento, carrinho.getValorTotal());

		}

	}
}
