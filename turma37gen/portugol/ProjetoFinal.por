programa
{
	inclua biblioteca Matematica --> math
	
	funcao inicio()
	{
	// VETORES DA LOJA
	
		real preco[10] = {30.00,40.00,80.00,500.00,800.00,100.00,70.00,150.00,400.00,30.00}  		// Preço dos produtos da loja
		inteiro estoque [10] 	// Estoque dos produtos ( no máximo 10)
		cadeia produto[10] = {"mouse           ","teclado           ","webcam           ","impressora           ","monitor           ","headset           ","caixa de som           ","roteador           ", "hd externo           ", "cabo hdmi           "}	// Produtos exibidos na loja
		cadeia codigo [10] = {"G3-01","G3-02","G3-03","G3-04","G3-05","G3-06","G3-07","G3-08","G3-09","G3-10"} 	// códigos dos produtos 

	// VETORES CARRINHO DE COMPRAS

		cadeia ProdutoFinal [10] // Produto no carrinho
		real VALORFINAL [10]	// Guardar preço dos produtos no carrinho
		inteiro QuantFinal [10]  // Guardar quantidade de cada produto comprado

	// VARIAVEIS DE LEITURA

		cadeia compra  			// Leitura do pedido do cliente
		caracter sn = 'S'			// Variavél para continaur ou sair da compra
		inteiro quantidade			// Quantidade de produtos pedido
		real carrinho = 0.0			// Variavel de preço para calcular e colocar no carrinho
		inteiro QuantdeCompra = 0	// Variavel de quantidade de comrpa para finalizar o pedido
		real ValorFinal = 0.0   		// Variável para calcular o preço final com  vários produtos
		real imposto = 0.09			// Imposto da atividade comercial
		real pgVista				// Forma de pagamento 1 - 10% desconto
		real pgCarao				// Forma de pagamento 2 - 10% acrescimo
		real pgParcelado			// Forma de pagamento 3 - 15% a mais ( tem que mostar o valor de cada parcela)
		real ValorFechado			// Variável para calcular o preço final, com as alterações de impostos e descontos
		cadeia y="grupo3" 			//Variável coringa para a ultima tela guardar um input, pode ser qualquer coisa, desde que seja lida
		inteiro formaDePagamento		// cariável para escolher a forma de pagamento (1 , 2 ou 3)

		para (inteiro i=0; i<10; i++){   // Laço de repetição para definir o código do produto
			codigo[i]=("G3-" + (i + 1)) // G3 (Grupo 3) e 01 ordem do produto na tabela
		}
		para (inteiro i=0; i<10; i++){ //Laço de repetição para saber o estoque do produto
			estoque[i]=(10)		// o estoque foi definido em 10 e pode ser alterado a 
		}

		// INSERINDO OS PRODUTOS

		

		faca{ // ciclo faça retepe o código desde o começo enquanto sn 's' ou 'S' ( vai ser lido em cada ciclo)
			escreva("--------------------------Mangue-Tech--------------------------\n \n")
			escreva("--------------Posso comprar aqui pra me organizar--------------\n\n")
			escreva("DESEJA FAZER COMPRAS EM NOSSO SITE? [S OU N]\n\n")
			leia(sn)
			se(sn == 's' ou sn == 'S'){  // Ciclo condicional, finalizar o programa se sn != 's'

				faca{
					limpa()
					escreva("--------------------------Mangue-Tech--------------------------\n \n")
					escreva("--------------Posso comprar aqui pra me organizar--------------\n\n")         
					escreva("	CODIGO\t	PRODUTO\t 		VALOR \tESTOQUE\n")
				
				
				// laço de repetição para fazer a tabela com produtos
				para (inteiro i=0; i<10; i++){
					escreva("\n\t",codigo[i]," \t\t", produto[i],"\t",preco[i],"\t   ",estoque[i])
				//	escreva(codigo[i], "\t", produto[i],"\t\tR$ ",preco[i], "\t\t", estoque[i],"\n")
				
				}
				escreva("\n\n---------------------------CARRINHO---------------------------\n\n") // escreve carrinho da tela
				para (inteiro i=0; i<10; i++){ // Laço para imprimir os produtos no carrinho. i deve ser < que o número de produtos para não da erro
					se(ProdutoFinal[i] != ""){ // Verificação para eliminar variaveis nulas do vetor
						escreva(QuantFinal[i], " x ", ProdutoFinal[i], "\t R$", VALORFINAL[i], "\n") // Escreve os produtos do carrinho na tela
					}
					
				}
	
				escreva("\n \t			Quais produtos você deseja comprar? (Digite o código do produto) \n") // Pergunra para o cliente
				leia(compra)																	// Resposta do cliente
				para (inteiro i=0; i<10; i++){//Inicio do laço de repetiçao, verifica qual produto foi pedido
					se (compra == produto[i] ou compra == codigo [i]){
					escreva("\nCONFIRMA O PRODUTO: \n", codigo[i], "\t" , produto[i], "\t R$", preco[i], " \t\t \n\n") //confirmação da inserção do produto no carrinho
					escreva("ESTA TUDO CERTO? CONFIME SEU PEDIDO [S ou N] \n") // pergunta ao cliente
					leia(sn)					//Leitura para continuar a compra, se sn != ele pergunta se deseja continuar a compra
					se (sn == 's' ou sn == 'S'){ // Validar a quantidade de compra
						escreva("\nQual a quantidade? \n") // Pergunta ao clietne
						leia(quantidade)				// ler a quantidade

						se (quantidade > 0 e quantidade <= estoque[i]){ 
							carrinho = quantidade * preco[i]  //Coloca no carrinho a quantidade para exibição
							escreva("CARRINHO ATUAL: ", quantidade, " x ", produto[i],"\t Valor unitário: RS", preco[i], "\t TOTAL: R$", carrinho,"\n")// exibe carrinho para validação do cliente
							escreva("\nESTA TUDO CERTO? CONFIRME SEU PEDIDO [S OU N] \n")  //Confirmação com o cliente
							leia(sn)
							se (sn == 's' ou sn == 'S'){ // desvio condicional para validação de estoque
												  // Se o pedido for válido, faz as alterações
							QuantdeCompra = QuantdeCompra + quantidade //Coloca a quantidade de compras = quantidade que estava no carrinho
							ValorFinal = ValorFinal + carrinho //valor final da compra soma com o que foi colocado no carrinho
							estoque[i] = estoque[i] - quantidade//Retira a quantidade solicitada de produtos do estoque
							ProdutoFinal[i] = produto[i] //Coloca o produto pedido no vetor do carrinho
							se (produto[i] == ProdutoFinal[i]){//Condicional para validaer se o produto já está no carrinho
								VALORFINAL[i] = VALORFINAL[i] + carrinho//Se já estiver, soma o valor atual do carrinho atualizado
								QuantFinal[i]+= quantidade //se jaáestiver, soma a quantidade do carrinho para mostrar atualizado
								
								}
							}
						}senao{
						escreva("ESTOQUE INDISPONÓVEL! \nVERIFIQUE A LISTA E INFORME UMA QUANTIDADE VÁLIDA\nAPERTE ENTER PARA CONTINUAR\n\n")
						leia(y)
						}

						
					   }escreva("\nSALDO RESTANTE: ", produto[i],"\t",estoque[i],"\n") //exibe a quantidade atualizada do estoque do produto
					}
				}
				
				limpa()
				escreva("\nSUA COMPRA DE ",QuantdeCompra," MANGUE-TECH, VALOR ATUAL R$",ValorFinal,"  \n") // exibe o pedido atual do cliente (quantidade e valor)
				escreva("\n--------------------CARRINHO--------------------\n\n")  // exibe o carrinho atual do cliente
					para (inteiro i=0; i<10; i++){
						se (ProdutoFinal[i] != ""){
							escreva(QuantFinal[i], " x ", ProdutoFinal[i], "\t R$",VALORFINAL[i], "\n")
						}
					}
						escreva("\nDESEJA CONTINUAR COMPRANDO [S OU N] \n")    //Faz a validadção se o cliente quer comprar
						leia(sn)										//Se sn for != de 's' sai do laço faça-Enquanto

						
		
	
				}enquanto(sn == 's' ou sn == 'S')
			
		limpa()

		escreva("-------Mangue-Tech--------\n\n") 			//Nome da loja para Nota Fiscal

		para (inteiro i=0; i<10; i++){
			se (ProdutoFinal [i] != ""){					//condicional para exibir APENAS os preços no vetor de produtos
				escreva(QuantFinal[i], " ", ProdutoFinal[i], "\t R$", VALORFINAL[i], "\n")  //escreve os produtos do carrinho na tela

				
			}
		}

		escreva("Método de Pagamento: ")
		escreva("\n1 - A vista com 10% de desconto ")
		escreva("\n2 - No cartão de crédito em 1x (10% de acréscimo)")
		escreva("\n3 - No cartão de crédito em 2x (15% de acréscimo0")
		escreva("\nPor favo, informe a forma de pagamento [1/2/3]:")
		
		leia(formaDePagamento)
		se (formaDePagamento == 1){
		limpa()
		escreva("MANGUE-TECH\n\n")
		escreva("---------NOTA FISCAL----------\n\n")
		para (inteiro i=0; i<10; i++){											// Laço para exibir os produtos pedidos na nota
			se(ProdutoFinal[i]!= ""){											  // condicional para exibir APENAS os produtos no vetor de produtos no carrinho 
				escreva(QuantFinal[i], " ", ProdutoFinal[i], "\t R$", VALORFINAL[i], "\n")   // Escreve os produtos do carrinho na tela
				
			}
		}
		escreva("\nValor total do produto: R$", ValorFinal)
		escreva("\nImpostos sobre a nota: R$", math.arredondar((ValorFinal*0.09),2))
		escreva("\nValor do desconto: R$", math.arredondar((ValorFinal*0.1),2))
		ValorFechado = ValorFinal - (ValorFinal *0.10)
		escreva("\nValor total a pagar: R$", math.arredondar(ValorFechado,2))
		escreva("\nObrigado por comprar na MANGUE-TECH")
		escreva("\nDESEJA CONTINUAR COMPRANDO ? [S/N]: ")
		leia(sn)
		
		}
		se (formaDePagamento == 2){
		limpa()
		escreva("MANGUE-TECH\n\n")
		escreva("---------NOTA FISCAL----------\n\n")
		para (inteiro i=0; i<10; i++){											// Laço para exibir os produtos pedidos na nota
			se(ProdutoFinal[i]!= ""){											  // condicional para exibir APENAS os produtos no vetor de produtos no carrinho 
				escreva(QuantFinal[i], " ", ProdutoFinal[i], "\t R$", VALORFINAL[i], "\n")   // Escreve os produtos do carrinho na tela
				
			}
		}
		escreva("\nValor total do produto: R$", ValorFinal)
		escreva("\nImpostos sobre a nota: R$", math.arredondar((ValorFinal*0.09),2))
		escreva("\nValor do acréscimo: R$", math.arredondar((ValorFinal*0.1),2))
		ValorFechado = ValorFinal + (ValorFinal *0.10)
		escreva("\nValor total a pagar: R$", math.arredondar(ValorFechado,2))
		escreva("\nObrigado por comprar na MANGUE-TECH")
		escreva("\nDESEJA CONTINUAR COMPRANDO ? [S/N]: ")
		leia(sn)
			
		}

		se (formaDePagamento == 3){
		limpa()
		escreva("MANGUE-TECH\n\n")
		escreva("---------NOTA FISCAL----------\n\n")
		para (inteiro i=0; i<10; i++){											// Laço para exibir os produtos pedidos na nota
			se(ProdutoFinal[i]!= ""){											  // condicional para exibir APENAS os produtos no vetor de produtos no carrinho 
				escreva(QuantFinal[i], " ", ProdutoFinal[i], "\t R$", VALORFINAL[i], "\n")   // Escreve os produtos do carrinho na tela
				
			}
		}
		escreva("\nValor total do produto: R$", ValorFinal)
		escreva("\nImpostos sobre a nota: R$", math.arredondar((ValorFinal*0.09),2))
		escreva("\nValor do acréscimo: R$", math.arredondar((ValorFinal*0.15),2))
		ValorFechado = ValorFinal + (ValorFinal *0.15)
		escreva("\nValor total da parcela: Duas Parcelas de R$", math.arredondar((ValorFechado/2),2))
		escreva("\nValor total a pagar: R$", math.arredondar(ValorFechado,2))
		escreva("\nObrigado por comprar na MANGUE-TECH")
		escreva("\nDESEJA CONTINUAR COMPRANDO ? [S/N]: ")   // Valida der o cliente quer continuar
		leia(sn)
		}

		leia(y)			//Vai ler a variável coringa para finalizar a compra ou retornar a fazer mais compras
		quantidade=0 		// Redefine a quantiade de produtos no carrinho
		carrinho=0.0			// Redefine o preço dos produtos no carrinho
		para (inteiro i=0; i<0; i++){  //Laço para varrer e limpar os produtos no carrinho
			QuantFinal[i] = 0	// Limpa o vetor de quantidade
			 ProdutoFinal[i] = ""  //Limpa o vetor dos produtos e insere um espaço vazio no lugar
			VALORFINAL[i] = 0		// Limpoa o vetpor dos valores
			ValorFinal = 0.0		//  Limpa a variavel de valor
			QuantdeCompra = 0		// Limopa a quantidade comprada para finalizar o pedido
			
		}
		limpa()
		sn = 's'				// define um s para uqe o laço não acabe depois de um pedido
		
						
		}senao {				// fim do laço, se o cliente não quiser mais fazer compras
			limpa()
			escreva("ATÉ A PRÓXIMA")
			}
		}enquanto (sn== 's' ou sn == 'S')   // encerramento do laço
	}
	
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2520; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */